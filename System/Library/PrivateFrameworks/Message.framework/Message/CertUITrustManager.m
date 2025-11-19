@interface CertUITrustManager
- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5;
- (void)allowTrust:(__SecTrust *)a3 forHost:(id)a4 service:(id)a5;
@end

@implementation CertUITrustManager

- (unsigned)rawTrustResultForSSLTrust:(__SecTrust *)a3 hostname:(id)a4 service:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v7 = 0;
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v7 = sub_1B0E44AD8();
  v9 = v8;
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1B0E44AD8();
  v5 = v11;
LABEL_6:
  v12 = a3;

  v13 = CertUITrustManager.rawTrustResult(forSSLTrust:hostname:service:)(a3, v7, v9, v10, v5);

  return v13;
}

- (void)allowTrust:(__SecTrust *)a3 forHost:(id)a4 service:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v7 = sub_1B0E44AD8();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_1B0E44AD8();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v12 = a3;

  v13.value._countAndFlagsBits = v7;
  v13.value._object = v9;
  v14.value._countAndFlagsBits = v10;
  v14.value._object = v5;
  CertUITrustManager.allow(_:forHost:service:)(a3, v13, v14);
}

@end