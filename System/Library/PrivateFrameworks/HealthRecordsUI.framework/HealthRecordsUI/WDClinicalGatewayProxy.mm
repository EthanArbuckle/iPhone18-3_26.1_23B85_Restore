@interface WDClinicalGatewayProxy
- (WDClinicalGatewayProxy)init;
- (WDClinicalGatewayProxy)initWithGatewayID:(id)d batchID:(id)iD;
@end

@implementation WDClinicalGatewayProxy

- (WDClinicalGatewayProxy)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (WDClinicalGatewayProxy)initWithGatewayID:(id)d batchID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = WDClinicalGatewayProxy;
  v8 = [(WDClinicalGatewayProxy *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    gatewayID = v8->_gatewayID;
    v8->_gatewayID = v9;

    v11 = [iDCopy copy];
    batchID = v8->_batchID;
    v8->_batchID = v11;
  }

  return v8;
}

@end