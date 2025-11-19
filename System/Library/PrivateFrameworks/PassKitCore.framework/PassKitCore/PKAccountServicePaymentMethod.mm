@interface PKAccountServicePaymentMethod
- (PKAccountServicePaymentMethod)initWithBankAccountInformation:(id)a3 peerPaymentBalance:(id)a4 deviceSupportsPeerPaymentAccountPayment:(BOOL)a5 selectedMethods:(unint64_t)a6;
- (PKAccountServicePaymentMethod)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountServicePaymentMethod

- (PKAccountServicePaymentMethod)initWithBankAccountInformation:(id)a3 peerPaymentBalance:(id)a4 deviceSupportsPeerPaymentAccountPayment:(BOOL)a5 selectedMethods:(unint64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PKAccountServicePaymentMethod;
  v12 = [(PKAccountServicePaymentMethod *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(PKAccountServicePaymentMethod *)v12 setBankAccountInformation:v10];
    [(PKAccountServicePaymentMethod *)v13 setPeerPaymentBalance:v11];
    [(PKAccountServicePaymentMethod *)v13 setDeviceSupportsPeerPaymentAccountPayment:v7];
    [(PKAccountServicePaymentMethod *)v13 setSelectedMethods:a6];
  }

  return v13;
}

- (PKAccountServicePaymentMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKAccountServicePaymentMethod;
  v5 = [(PKAccountServicePaymentMethod *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankAccountInformation"];
    bankAccountInformation = v5->_bankAccountInformation;
    v5->_bankAccountInformation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentBalance"];
    peerPaymentBalance = v5->_peerPaymentBalance;
    v5->_peerPaymentBalance = v8;

    v5->_deviceSupportsPeerPaymentAccountPayment = [v4 decodeBoolForKey:@"deviceSupportsPeerPaymentAccountPayment"];
    v5->_selectedMethods = [v4 decodeIntegerForKey:@"selectedMethod"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(PKAccountServicePaymentMethod *)self bankAccountInformation];
  [v6 encodeObject:v4 forKey:@"bankAccountInformation"];

  v5 = [(PKAccountServicePaymentMethod *)self peerPaymentBalance];
  [v6 encodeObject:v5 forKey:@"peerPaymentBalance"];

  [v6 encodeBool:-[PKAccountServicePaymentMethod deviceSupportsPeerPaymentAccountPayment](self forKey:{"deviceSupportsPeerPaymentAccountPayment"), @"deviceSupportsPeerPaymentAccountPayment"}];
  [v6 encodeInteger:-[PKAccountServicePaymentMethod selectedMethods](self forKey:{"selectedMethods"), @"selectedMethod"}];
}

@end