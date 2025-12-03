@interface _NTKComplicationStoreClientProxy
- (_NTKComplicationStoreClientProxy)initWithWeakProxy:(id)proxy;
- (void)loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id;
- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id;
- (void)updateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id;
- (void)updateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id;
@end

@implementation _NTKComplicationStoreClientProxy

- (_NTKComplicationStoreClientProxy)initWithWeakProxy:(id)proxy
{
  proxyCopy = proxy;
  v8.receiver = self;
  v8.super_class = _NTKComplicationStoreClientProxy;
  v5 = [(_NTKComplicationStoreClientProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, proxyCopy);
  }

  return v6;
}

- (void)loadFullCollectionWithLocalizableSampleTemplates:(id)templates complicationDescriptors:(id)descriptors seqId:(id)id
{
  idCopy = id;
  descriptorsCopy = descriptors;
  templatesCopy = templates;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained loadFullCollectionWithLocalizableSampleTemplates:templatesCopy complicationDescriptors:descriptorsCopy seqId:idCopy];
}

- (void)updateSampleTemplateReference:(id)reference forClientIdentifier:(id)identifier descriptor:(id)descriptor family:(int64_t)family seqId:(id)id
{
  idCopy = id;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  referenceCopy = reference;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateSampleTemplateReference:referenceCopy forClientIdentifier:identifierCopy descriptor:descriptorCopy family:family seqId:idCopy];
}

- (void)updateComplicationDescriptors:(id)descriptors forClientIdentifier:(id)identifier seqId:(id)id
{
  idCopy = id;
  identifierCopy = identifier;
  descriptorsCopy = descriptors;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained updateComplicationDescriptors:descriptorsCopy forClientIdentifier:identifierCopy seqId:idCopy];
}

- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)identifier descriptor:(id)descriptor seqId:(id)id
{
  idCopy = id;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_proxy);
  [WeakRetained removeComplicationSampleTemplatesForClientIdentifier:identifierCopy descriptor:descriptorCopy seqId:idCopy];
}

@end