@interface NSURL(GSExtensions)
- (id)gs_URLByUpdatingPathExtensionWithPathOrURL:()GSExtensions;
- (id)gs_issueExtension:()GSExtensions error:;
- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions;
@end

@implementation NSURL(GSExtensions)

- (id)gs_issueExtension:()GSExtensions error:
{
  v6 = [a1 path];
  v7 = [v6 gs_issueExtension:a3 error:a4];

  return v7;
}

- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions
{
  v4 = [a1 path];
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  v6 = [v4 gs_issueReadExtensionIfNeededForAuditToken:v8];

  return v6;
}

- (id)gs_URLByUpdatingPathExtensionWithPathOrURL:()GSExtensions
{
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_286278F70;
  }

  v8 = v7;

  v9 = [v4 pathExtension];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_286278F70;
  }

  v11 = v10;

  if ([(__CFString *)v11 caseInsensitiveCompare:v8])
  {
    v12 = [a1 URLByDeletingPathExtension];
    if ([(__CFString *)v11 length])
    {
      v13 = [v12 URLByAppendingPathExtension:v11];

      v12 = v13;
    }
  }

  else
  {
    v12 = a1;
  }

  return v12;
}

@end