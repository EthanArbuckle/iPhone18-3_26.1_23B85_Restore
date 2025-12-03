@interface NSURL(GSExtensions)
- (id)gs_URLByUpdatingPathExtensionWithPathOrURL:()GSExtensions;
- (id)gs_issueExtension:()GSExtensions error:;
- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions;
@end

@implementation NSURL(GSExtensions)

- (id)gs_issueExtension:()GSExtensions error:
{
  path = [self path];
  v7 = [path gs_issueExtension:a3 error:a4];

  return v7;
}

- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions
{
  path = [self path];
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  v6 = [path gs_issueReadExtensionIfNeededForAuditToken:v8];

  return v6;
}

- (id)gs_URLByUpdatingPathExtensionWithPathOrURL:()GSExtensions
{
  v4 = a3;
  pathExtension = [self pathExtension];
  v6 = pathExtension;
  if (pathExtension)
  {
    v7 = pathExtension;
  }

  else
  {
    v7 = &stru_286278F70;
  }

  v8 = v7;

  pathExtension2 = [v4 pathExtension];

  if (pathExtension2)
  {
    v10 = pathExtension2;
  }

  else
  {
    v10 = &stru_286278F70;
  }

  v11 = v10;

  if ([(__CFString *)v11 caseInsensitiveCompare:v8])
  {
    selfCopy = [self URLByDeletingPathExtension];
    if ([(__CFString *)v11 length])
    {
      v13 = [selfCopy URLByAppendingPathExtension:v11];

      selfCopy = v13;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end