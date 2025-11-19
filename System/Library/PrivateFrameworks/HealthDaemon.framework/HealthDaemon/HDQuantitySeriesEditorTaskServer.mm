@interface HDQuantitySeriesEditorTaskServer
+ (id)requiredEntitlements;
- (HDQuantitySeriesEditorTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (void)remote_commitRemovedDatums:(id)a3 completion:(id)a4;
@end

@implementation HDQuantitySeriesEditorTaskServer

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (HDQuantitySeriesEditorTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v10 = a4;
  if (v10)
  {
    v16.receiver = self;
    v16.super_class = HDQuantitySeriesEditorTaskServer;
    v11 = [(HDStandardTaskServer *)&v16 initWithUUID:a3 configuration:v10 client:a5 delegate:a6];
    if (v11)
    {
      v12 = [v10 quantitySample];
      quantitySample = v11->_quantitySample;
      v11->_quantitySample = v12;
    }

    self = v11;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)remote_commitRemovedDatums:(id)a3 completion:(id)a4
{
  quantitySample = self->_quantitySample;
  v7 = a4;
  v8 = a3;
  v9 = [(HDStandardTaskServer *)self profile];
  v12 = 0;
  v10 = [HDQuantitySampleSeriesEntity removeValues:v8 fromQuantitySeriesSample:quantitySample profile:v9 error:&v12];

  v11 = v12;
  v7[2](v7, v10, v11);
}

@end