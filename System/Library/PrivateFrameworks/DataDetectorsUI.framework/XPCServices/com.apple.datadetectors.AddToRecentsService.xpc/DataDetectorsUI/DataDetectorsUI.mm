int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(DDAddToRecentsDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  exit(1);
}

void DDPerformWebSearchFromQuery(void *a1)
{
  v1 = a1;
  if (qword_100008770 != -1)
  {
    sub_10000192C();
    if (byte_100008768 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = v1;
    v5 = +[NSBundle mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.datadetectors.AddToRecentsService"];

    if (v7)
    {
      NSLog(@"AddToRecentsService couldn't get the default browser");
    }

    else
    {
      v8 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.datadetectors.AddToRecentsService"];
      v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DDAddToRecentsInterface];
      [v8 setRemoteObjectInterface:v9];

      [v8 resume];
      v10 = [v8 remoteObjectProxy];
      [v10 performWebSearchFromQuery:v3];

      [v8 invalidate];
    }

    v11 = v3;
    goto LABEL_9;
  }

  if (byte_100008768 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v11 = [v1 stringByTrimmingCharactersInSet:v2];

  v3 = [DDUISearchWebHandler webSearchURLForQueryString:v11];
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  [v4 openURL:v3 configuration:0 completionHandler:0];

LABEL_9:
}

void sub_10000123C(id a1)
{
  v1 = SecTaskCreateFromSelf(kCFAllocatorDefault);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.security.exception.shared-preference.read-only", 0);
    CFRelease(v2);
    if (v3)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v3))
      {
        v10.length = CFArrayGetCount(v3);
        v10.location = 0;
        if (CFArrayContainsValue(v3, v10, @"com.apple.mobilesafarishared"))
        {
          byte_100008768 = 1;
        }
      }

      CFRelease(v3);
    }
  }

  if ((byte_100008768 & 1) == 0)
  {
    v5 = SecTaskCreateFromSelf(kCFAllocatorDefault);
    if (v5)
    {
      v6 = v5;
      v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.security.exception.shared-preference.read-write", 0);
      CFRelease(v6);
      if (v7)
      {
        v8 = CFArrayGetTypeID();
        if (v8 == CFGetTypeID(v7))
        {
          v11.length = CFArrayGetCount(v7);
          v11.location = 0;
          if (CFArrayContainsValue(v7, v11, @"com.apple.mobilesafarishared"))
          {
            byte_100008768 = 1;
          }
        }

        CFRelease(v7);
      }
    }
  }
}