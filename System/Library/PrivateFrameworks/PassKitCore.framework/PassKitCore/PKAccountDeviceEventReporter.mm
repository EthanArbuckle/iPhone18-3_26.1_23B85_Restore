@interface PKAccountDeviceEventReporter
- (PKAccountDeviceEventReporter)initWithAccount:(id)account;
- (PKAccountDeviceEventReporter)initWithAccount:(id)account paymentWebService:(id)service;
@end

@implementation PKAccountDeviceEventReporter

- (PKAccountDeviceEventReporter)initWithAccount:(id)account
{
  accountCopy = account;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [(PKAccountDeviceEventReporter *)self initWithAccount:accountCopy paymentWebService:v5];

  return v6;
}

- (PKAccountDeviceEventReporter)initWithAccount:(id)account paymentWebService:(id)service
{
  accountCopy = account;
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = PKAccountDeviceEventReporter;
  v8 = [(PKAccountDeviceEventReporter *)&v12 init];
  if (v8)
  {
    v9 = [[_PKAccountDeviceEventReporter alloc] initWithAccount:accountCopy paymentWebService:serviceCopy];
    eventReporter = v8->_eventReporter;
    v8->_eventReporter = v9;
  }

  return v8;
}

@end