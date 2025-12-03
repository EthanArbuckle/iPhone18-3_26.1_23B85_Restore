@interface NTKComplicationTemplateReference
- (CLKComplicationTemplate)complicationTemplate;
- (NTKComplicationTemplateReference)initWithCoder:(id)coder;
- (NTKComplicationTemplateReference)initWithPath:(id)path existingTemplate:(id)template;
- (id)_lock_complicationTemplate;
@end

@implementation NTKComplicationTemplateReference

- (NTKComplicationTemplateReference)initWithPath:(id)path existingTemplate:(id)template
{
  pathCopy = path;
  templateCopy = template;
  v12.receiver = self;
  v12.super_class = NTKComplicationTemplateReference;
  v8 = [(NTKComplicationTemplateReference *)&v12 init];
  if (v8)
  {
    v9 = [pathCopy copy];
    path = v8->_path;
    v8->_path = v9;

    objc_storeWeak(&v8->_cachedTemplate, templateCopy);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (CLKComplicationTemplate)complicationTemplate
{
  os_unfair_lock_lock(&self->_lock);
  _lock_complicationTemplate = [(NTKComplicationTemplateReference *)self _lock_complicationTemplate];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_complicationTemplate;
}

- (id)_lock_complicationTemplate
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_cachedTemplate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    path = self->_path;
    v14 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path options:0 error:&v14];
    v8 = v14;
    if (v7)
    {
      v13 = v8;
      v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v13];
      v10 = v13;

      if (v9)
      {
        objc_storeWeak(&self->_cachedTemplate, v9);
        v9 = v9;
        v5 = v9;
      }

      else
      {
        v11 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          selfCopy2 = self;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKComplicationTemplateReference %p: failed to decode template: %@", buf, 0x16u);
        }

        v5 = 0;
      }
    }

    else
    {
      v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        selfCopy2 = self;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "NTKComplicationTemplateReference %p: failed to load data: %@", buf, 0x16u);
      }

      v5 = 0;
      v10 = v8;
    }
  }

  return v5;
}

- (NTKComplicationTemplateReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];

  v6 = [(NTKComplicationTemplateReference *)self initWithPath:v5 existingTemplate:0];
  return v6;
}

@end