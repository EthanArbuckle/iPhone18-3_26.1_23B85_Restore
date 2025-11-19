@interface BLURLRequestEncoder
+ (id)DAAPClientVersionString;
+ (id)DAAPPurchaseVersionString;
- (BLURLRequestEncoder)initWithBag:(id)a3 withURLRequest:(id)a4;
- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4;
@end

@implementation BLURLRequestEncoder

- (BLURLRequestEncoder)initWithBag:(id)a3 withURLRequest:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = BLURLRequestEncoder;
  v7 = [(AMSURLRequestEncoder *)&v14 initWithBag:a3];
  if (v7)
  {
    v8 = [MEMORY[0x277CF32F0] sharedProvider];
    v9 = [v8 activeStoreAccount];
    [(AMSURLRequestEncoder *)v7 setAccount:v9];

    [(AMSURLRequestEncoder *)v7 setIncludeClientVersions:0];
    [(AMSURLRequestEncoder *)v7 setUrlKnownToBeTrusted:1];
    [(AMSURLRequestEncoder *)v7 setMescalType:1];
    v10 = [MEMORY[0x277CEE620] currentProcess];
    v11 = [v10 copy];

    [v11 setBundleIdentifier:@"com.apple.iBooks"];
    [v11 setExecutableName:@"com.apple.iBooks"];
    [(AMSURLRequestEncoder *)v7 setClientInfo:v11];
    -[BLURLRequestEncoder setContentType:](v7, "setContentType:", [v6 contentType]);
    v12 = [v6 DSID];
    [(BLURLRequestEncoder *)v7 setDsid:v12];

    -[BLURLRequestEncoder setReason:](v7, "setReason:", [v6 reason]);
    [(AMSURLRequestEncoder *)v7 setDialogOptions:1];
    if ([v6 dataEncoding])
    {
      -[AMSURLRequestEncoder setRequestEncoding:](v7, "setRequestEncoding:", [v6 dataEncoding]);
    }
  }

  return v7;
}

- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLURLRequestEncoder reason](self, "reason")}];
  v9 = [v8 stringValue];
  [v7 setValue:v9 forHTTPHeaderField:@"Client-Cloud-DAAP-Request-Reason"];

  v10 = +[BLURLRequestEncoder DAAPPurchaseVersionString];
  [v7 setValue:v10 forHTTPHeaderField:@"Client-Cloud-Purchase-Daap-Version"];

  v11 = +[BLURLRequestEncoder DAAPClientVersionString];
  [v7 setValue:v11 forHTTPHeaderField:@"Client-DAAP-Version"];

  v12 = [(AMSURLRequestEncoder *)self account];

  if (v12)
  {
    v13 = [(BLURLRequestEncoder *)self dsid];
    if (v13)
    {
      v14 = v13;
      v15 = [MEMORY[0x277CF32F0] sharedProvider];
      v16 = [v15 activeStoreAccount];
      v17 = [v16 ams_DSID];
      v18 = [(BLURLRequestEncoder *)self dsid];
      v19 = [v17 isEqualToNumber:v18];

      if ((v19 & 1) == 0)
      {
        v20 = [(BLURLRequestEncoder *)self dsid];
        v21 = [v20 stringValue];
        [v7 setValue:v21 forHTTPHeaderField:@"X-FM-Dsid"];
      }
    }
  }

  if ([(BLURLRequestEncoder *)self contentType]== 1)
  {
    v22 = @"application/x-www-form-urlencoded";
  }

  else
  {
    v22 = @"application/x-dmap-tagged";
  }

  [v7 setValue:v22 forHTTPHeaderField:*MEMORY[0x277CEE1B8]];
  v25.receiver = self;
  v25.super_class = BLURLRequestEncoder;
  v23 = [(AMSURLRequestEncoder *)&v25 requestByEncodingRequest:v7 parameters:v6];

  return v23;
}

+ (id)DAAPPurchaseVersionString
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D55968;
  block[3] = &unk_278D16940;
  block[4] = a1;
  if (qword_280BC5878 != -1)
  {
    dispatch_once(&qword_280BC5878, block);
  }

  v2 = qword_280BC5880;

  return v2;
}

+ (id)DAAPClientVersionString
{
  if (qword_280BC5888 != -1)
  {
    sub_241D77094();
  }

  v3 = qword_280BC5890;

  return v3;
}

@end