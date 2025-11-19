@interface IDSCTPNRInfo
- (IDSCTPNRInfo)initWithIMSI:(id)a3 PLMN:(id)a4 PNRPhoneNumber:(id)a5 phoneBookNumber:(id)a6;
@end

@implementation IDSCTPNRInfo

- (IDSCTPNRInfo)initWithIMSI:(id)a3 PLMN:(id)a4 PNRPhoneNumber:(id)a5 phoneBookNumber:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSCTPNRInfo;
  v15 = [(IDSCTPNRInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_IMSI, a3);
    objc_storeStrong(&v16->_PLMN, a4);
    objc_storeStrong(&v16->_PNRPhoneNumber, a5);
    objc_storeStrong(&v16->_phoneBookNumber, a6);
  }

  return v16;
}

@end