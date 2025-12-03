@interface HDQuantitySeriesEditorTaskServer
+ (id)requiredEntitlements;
- (HDQuantitySeriesEditorTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)remote_commitRemovedDatums:(id)datums completion:(id)completion;
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

- (HDQuantitySeriesEditorTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v16.receiver = self;
    v16.super_class = HDQuantitySeriesEditorTaskServer;
    v11 = [(HDStandardTaskServer *)&v16 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
    if (v11)
    {
      quantitySample = [configurationCopy quantitySample];
      quantitySample = v11->_quantitySample;
      v11->_quantitySample = quantitySample;
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)remote_commitRemovedDatums:(id)datums completion:(id)completion
{
  quantitySample = self->_quantitySample;
  completionCopy = completion;
  datumsCopy = datums;
  profile = [(HDStandardTaskServer *)self profile];
  v12 = 0;
  v10 = [HDQuantitySampleSeriesEntity removeValues:datumsCopy fromQuantitySeriesSample:quantitySample profile:profile error:&v12];

  v11 = v12;
  completionCopy[2](completionCopy, v10, v11);
}

@end