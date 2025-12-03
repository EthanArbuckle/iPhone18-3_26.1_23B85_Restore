@interface CertUITrustManager
- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service;
- (void)allowTrust:(__SecTrust *)trust forHost:(id)host service:(id)service;
@end

@implementation CertUITrustManager

- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)trust hostname:(id)hostname service:(id)service
{
  serviceCopy = service;
  if (!hostname)
  {
    v7 = 0;
    v9 = 0;
    if (service)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v7 = sub_1004A5764();
  v9 = v8;
  if (!serviceCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1004A5764();
  serviceCopy = v11;
LABEL_6:
  trustCopy = trust;

  v13 = CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(trust, v7, v9, v10, serviceCopy);

  return v13;
}

- (void)allowTrust:(__SecTrust *)trust forHost:(id)host service:(id)service
{
  serviceCopy = service;
  if (host)
  {
    v7 = sub_1004A5764();
    v9 = v8;
    if (serviceCopy)
    {
LABEL_3:
      v10 = sub_1004A5764();
      serviceCopy = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (service)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  trustCopy = trust;

  v13.value._countAndFlagsBits = v7;
  v13.value._object = v9;
  v14.value._countAndFlagsBits = v10;
  v14.value._object = serviceCopy;
  CertUITrustManager.allow(_:forHost:service:)(trust, v13, v14);
}

@end