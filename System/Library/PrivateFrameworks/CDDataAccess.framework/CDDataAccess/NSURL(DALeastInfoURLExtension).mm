@interface NSURL(DALeastInfoURLExtension)
- (id)da_leastInfoStringRepresentationRelativeToParentURL:()DALeastInfoURLExtension;
@end

@implementation NSURL(DALeastInfoURLExtension)

- (id)da_leastInfoStringRepresentationRelativeToParentURL:()DALeastInfoURLExtension
{
  v4 = a3;
  scheme = [self scheme];
  scheme2 = [v4 scheme];
  host = [self host];
  host2 = [v4 host];
  user = [self user];
  user2 = [v4 user];
  port = [self port];
  if (port)
  {
    port2 = [self port];
    intValue = [port2 intValue];
  }

  else
  {
    intValue = [MEMORY[0x277CBEBC0] da_classicPortForScheme:scheme];
  }

  port3 = [v4 port];
  if (port3)
  {
    [v4 port];
    v15 = v14 = scheme;
    intValue2 = [v15 intValue];

    scheme = v14;
  }

  else
  {
    intValue2 = [MEMORY[0x277CBEBC0] da_classicPortForScheme:scheme2];
  }

  v16 = host;
  if ((!(scheme | scheme2) || scheme2 && [scheme isEqualToString:scheme2]) && (!(host | host2) || host2 && objc_msgSend(host, "isEqualToString:", host2)))
  {
    if (user | user2)
    {
      if (user2)
      {
        if (![user isEqualToString:user2] || intValue != intValue2)
        {
LABEL_22:
          if ([user isEqualToString:user2])
          {
            goto LABEL_23;
          }

          goto LABEL_25;
        }

LABEL_19:
        [self absoluteURL];
        v18 = v17 = scheme;
        cDVRawPath = [v18 CDVRawPath];
LABEL_24:
        absoluteString = cDVRawPath;

        scheme = v17;
        goto LABEL_26;
      }
    }

    else if (intValue == intValue2)
    {
      goto LABEL_19;
    }
  }

  if (!(user | user2))
  {
LABEL_23:
    [self da_urlByRemovingUsername];
    v18 = v17 = scheme;
    cDVRawPath = [v18 absoluteString];
    goto LABEL_24;
  }

  if (user2)
  {
    goto LABEL_22;
  }

LABEL_25:
  absoluteString = [self absoluteString];
LABEL_26:

  return absoluteString;
}

@end