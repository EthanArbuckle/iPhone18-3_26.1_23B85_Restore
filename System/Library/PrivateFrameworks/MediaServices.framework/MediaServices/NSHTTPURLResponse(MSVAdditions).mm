@interface NSHTTPURLResponse(MSVAdditions)
- (__CFString)msv_protocolVersion;
@end

@implementation NSHTTPURLResponse(MSVAdditions)

- (__CFString)msv_protocolVersion
{
  HTTPResponse = CFURLResponseGetHTTPResponse();
  v1 = CFHTTPMessageCopyVersion(HTTPResponse);

  return v1;
}

@end