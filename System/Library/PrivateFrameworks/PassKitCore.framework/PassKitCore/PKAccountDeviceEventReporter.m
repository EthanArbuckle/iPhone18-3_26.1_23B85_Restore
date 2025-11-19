@interface PKAccountDeviceEventReporter
- (PKAccountDeviceEventReporter)initWithAccount:(id)a3;
- (PKAccountDeviceEventReporter)initWithAccount:(id)a3 paymentWebService:(id)a4;
@end

@implementation PKAccountDeviceEventReporter

- (PKAccountDeviceEventReporter)initWithAccount:(id)a3
{
  v4 = a3;
  v5 = +[PKPaymentWebService sharedService];
  v6 = [(PKAccountDeviceEventReporter *)self initWithAccount:v4 paymentWebService:v5];

  return v6;
}

- (PKAccountDeviceEventReporter)initWithAccount:(id)a3 paymentWebService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PKAccountDeviceEventReporter;
  v8 = [(PKAccountDeviceEventReporter *)&v12 init];
  if (v8)
  {
    v9 = [[_PKAccountDeviceEventReporter alloc] initWithAccount:v6 paymentWebService:v7];
    eventReporter = v8->_eventReporter;
    v8->_eventReporter = v9;
  }

  return v8;
}

@end