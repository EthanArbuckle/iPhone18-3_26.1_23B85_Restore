@interface PKAccountServicePaymentMethod
- (PKAccountServicePaymentMethod)initWithBankAccountInformation:(id)information peerPaymentBalance:(id)balance deviceSupportsPeerPaymentAccountPayment:(BOOL)payment selectedMethods:(unint64_t)methods;
- (PKAccountServicePaymentMethod)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountServicePaymentMethod

- (PKAccountServicePaymentMethod)initWithBankAccountInformation:(id)information peerPaymentBalance:(id)balance deviceSupportsPeerPaymentAccountPayment:(BOOL)payment selectedMethods:(unint64_t)methods
{
  paymentCopy = payment;
  informationCopy = information;
  balanceCopy = balance;
  v15.receiver = self;
  v15.super_class = PKAccountServicePaymentMethod;
  v12 = [(PKAccountServicePaymentMethod *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(PKAccountServicePaymentMethod *)v12 setBankAccountInformation:informationCopy];
    [(PKAccountServicePaymentMethod *)v13 setPeerPaymentBalance:balanceCopy];
    [(PKAccountServicePaymentMethod *)v13 setDeviceSupportsPeerPaymentAccountPayment:paymentCopy];
    [(PKAccountServicePaymentMethod *)v13 setSelectedMethods:methods];
  }

  return v13;
}

- (PKAccountServicePaymentMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKAccountServicePaymentMethod;
  v5 = [(PKAccountServicePaymentMethod *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bankAccountInformation"];
    bankAccountInformation = v5->_bankAccountInformation;
    v5->_bankAccountInformation = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentBalance"];
    peerPaymentBalance = v5->_peerPaymentBalance;
    v5->_peerPaymentBalance = v8;

    v5->_deviceSupportsPeerPaymentAccountPayment = [coderCopy decodeBoolForKey:@"deviceSupportsPeerPaymentAccountPayment"];
    v5->_selectedMethods = [coderCopy decodeIntegerForKey:@"selectedMethod"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bankAccountInformation = [(PKAccountServicePaymentMethod *)self bankAccountInformation];
  [coderCopy encodeObject:bankAccountInformation forKey:@"bankAccountInformation"];

  peerPaymentBalance = [(PKAccountServicePaymentMethod *)self peerPaymentBalance];
  [coderCopy encodeObject:peerPaymentBalance forKey:@"peerPaymentBalance"];

  [coderCopy encodeBool:-[PKAccountServicePaymentMethod deviceSupportsPeerPaymentAccountPayment](self forKey:{"deviceSupportsPeerPaymentAccountPayment"), @"deviceSupportsPeerPaymentAccountPayment"}];
  [coderCopy encodeInteger:-[PKAccountServicePaymentMethod selectedMethods](self forKey:{"selectedMethods"), @"selectedMethod"}];
}

@end