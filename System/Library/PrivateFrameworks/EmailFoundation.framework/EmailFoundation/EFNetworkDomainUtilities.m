@interface EFNetworkDomainUtilities
+ (BOOL)domain:(id)a3 isSubdomainOfDomain:(id)a4;
@end

@implementation EFNetworkDomainUtilities

+ (BOOL)domain:(id)a3 isSubdomainOfDomain:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [v5 rangeOfString:v6 options:13];
    if (!v7)
    {
      v8 = 1;
      goto LABEL_6;
    }

    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [v5 characterAtIndex:v7 - 1] == 46;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:

  return v8;
}

@end