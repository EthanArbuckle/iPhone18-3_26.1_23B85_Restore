@interface EFNetworkDomainUtilities
+ (BOOL)domain:(id)domain isSubdomainOfDomain:(id)ofDomain;
@end

@implementation EFNetworkDomainUtilities

+ (BOOL)domain:(id)domain isSubdomainOfDomain:(id)ofDomain
{
  domainCopy = domain;
  ofDomainCopy = ofDomain;
  if ([domainCopy length] && objc_msgSend(ofDomainCopy, "length"))
  {
    v7 = [domainCopy rangeOfString:ofDomainCopy options:13];
    if (!v7)
    {
      v8 = 1;
      goto LABEL_6;
    }

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [domainCopy characterAtIndex:v7 - 1] == 46;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end