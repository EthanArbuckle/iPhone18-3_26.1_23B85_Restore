@interface IDSCTPNRInfo
- (IDSCTPNRInfo)initWithIMSI:(id)i PLMN:(id)n PNRPhoneNumber:(id)number phoneBookNumber:(id)bookNumber;
@end

@implementation IDSCTPNRInfo

- (IDSCTPNRInfo)initWithIMSI:(id)i PLMN:(id)n PNRPhoneNumber:(id)number phoneBookNumber:(id)bookNumber
{
  iCopy = i;
  nCopy = n;
  numberCopy = number;
  bookNumberCopy = bookNumber;
  v18.receiver = self;
  v18.super_class = IDSCTPNRInfo;
  v15 = [(IDSCTPNRInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_IMSI, i);
    objc_storeStrong(&v16->_PLMN, n);
    objc_storeStrong(&v16->_PNRPhoneNumber, number);
    objc_storeStrong(&v16->_phoneBookNumber, bookNumber);
  }

  return v16;
}

@end