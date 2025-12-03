@interface BLURLRequestEncoder
+ (id)DAAPClientVersionString;
+ (id)DAAPPurchaseVersionString;
- (BLURLRequestEncoder)initWithBag:(id)bag withURLRequest:(id)request;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation BLURLRequestEncoder

- (BLURLRequestEncoder)initWithBag:(id)bag withURLRequest:(id)request
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = BLURLRequestEncoder;
  v7 = [(AMSURLRequestEncoder *)&v14 initWithBag:bag];
  if (v7)
  {
    mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
    activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
    [(AMSURLRequestEncoder *)v7 setAccount:activeStoreAccount];

    [(AMSURLRequestEncoder *)v7 setIncludeClientVersions:0];
    [(AMSURLRequestEncoder *)v7 setUrlKnownToBeTrusted:1];
    [(AMSURLRequestEncoder *)v7 setMescalType:1];
    currentProcess = [MEMORY[0x277CEE620] currentProcess];
    v11 = [currentProcess copy];

    [v11 setBundleIdentifier:@"com.apple.iBooks"];
    [v11 setExecutableName:@"com.apple.iBooks"];
    [(AMSURLRequestEncoder *)v7 setClientInfo:v11];
    -[BLURLRequestEncoder setContentType:](v7, "setContentType:", [requestCopy contentType]);
    dSID = [requestCopy DSID];
    [(BLURLRequestEncoder *)v7 setDsid:dSID];

    -[BLURLRequestEncoder setReason:](v7, "setReason:", [requestCopy reason]);
    [(AMSURLRequestEncoder *)v7 setDialogOptions:1];
    if ([requestCopy dataEncoding])
    {
      -[AMSURLRequestEncoder setRequestEncoding:](v7, "setRequestEncoding:", [requestCopy dataEncoding]);
    }
  }

  return v7;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [request mutableCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[BLURLRequestEncoder reason](self, "reason")}];
  stringValue = [v8 stringValue];
  [v7 setValue:stringValue forHTTPHeaderField:@"Client-Cloud-DAAP-Request-Reason"];

  v10 = +[BLURLRequestEncoder DAAPPurchaseVersionString];
  [v7 setValue:v10 forHTTPHeaderField:@"Client-Cloud-Purchase-Daap-Version"];

  v11 = +[BLURLRequestEncoder DAAPClientVersionString];
  [v7 setValue:v11 forHTTPHeaderField:@"Client-DAAP-Version"];

  account = [(AMSURLRequestEncoder *)self account];

  if (account)
  {
    dsid = [(BLURLRequestEncoder *)self dsid];
    if (dsid)
    {
      v14 = dsid;
      mEMORY[0x277CF32F0] = [MEMORY[0x277CF32F0] sharedProvider];
      activeStoreAccount = [mEMORY[0x277CF32F0] activeStoreAccount];
      ams_DSID = [activeStoreAccount ams_DSID];
      dsid2 = [(BLURLRequestEncoder *)self dsid];
      v19 = [ams_DSID isEqualToNumber:dsid2];

      if ((v19 & 1) == 0)
      {
        dsid3 = [(BLURLRequestEncoder *)self dsid];
        stringValue2 = [dsid3 stringValue];
        [v7 setValue:stringValue2 forHTTPHeaderField:@"X-FM-Dsid"];
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
  v23 = [(AMSURLRequestEncoder *)&v25 requestByEncodingRequest:v7 parameters:parametersCopy];

  return v23;
}

+ (id)DAAPPurchaseVersionString
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241D55968;
  block[3] = &unk_278D16940;
  block[4] = self;
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