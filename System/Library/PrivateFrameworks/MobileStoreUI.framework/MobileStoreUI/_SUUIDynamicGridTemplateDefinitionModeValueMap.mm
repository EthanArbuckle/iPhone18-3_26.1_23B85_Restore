@interface _SUUIDynamicGridTemplateDefinitionModeValueMap
- (id)templateDefinitionViewElementsForMode:(id)mode;
- (void)addTemplateDefinitionViewElement:(id)element forMode:(id)mode;
@end

@implementation _SUUIDynamicGridTemplateDefinitionModeValueMap

- (void)addTemplateDefinitionViewElement:(id)element forMode:(id)mode
{
  elementCopy = element;
  modeCopy = mode;
  if (elementCopy)
  {
    if ([modeCopy length])
    {
      modeToTemplateDefinitionViewElements = self->_modeToTemplateDefinitionViewElements;
      if (!modeToTemplateDefinitionViewElements)
      {
        v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        v9 = self->_modeToTemplateDefinitionViewElements;
        self->_modeToTemplateDefinitionViewElements = v8;

        modeToTemplateDefinitionViewElements = self->_modeToTemplateDefinitionViewElements;
      }

      v10 = [(NSMutableDictionary *)modeToTemplateDefinitionViewElements objectForKey:modeCopy];
      if (!v10)
      {
        v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        [(NSMutableDictionary *)self->_modeToTemplateDefinitionViewElements setObject:v10 forKey:modeCopy];
      }

      [v10 addObject:elementCopy];
    }

    else
    {
      defaultTemplateDefinitionViewElements = self->_defaultTemplateDefinitionViewElements;
      if (!defaultTemplateDefinitionViewElements)
      {
        v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
        v13 = self->_defaultTemplateDefinitionViewElements;
        self->_defaultTemplateDefinitionViewElements = v12;

        defaultTemplateDefinitionViewElements = self->_defaultTemplateDefinitionViewElements;
      }

      [(NSMutableArray *)defaultTemplateDefinitionViewElements addObject:elementCopy];
    }
  }
}

- (id)templateDefinitionViewElementsForMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_modeToTemplateDefinitionViewElements objectForKey:modeCopy];
  }

  else
  {
    v5 = 0;
  }

  if (![v5 count])
  {
    v6 = self->_defaultTemplateDefinitionViewElements;

    v5 = v6;
  }

  if (![modeCopy length] && !objc_msgSend(v5, "count"))
  {
    allValues = [(NSMutableDictionary *)self->_modeToTemplateDefinitionViewElements allValues];
    firstObject = [allValues firstObject];

    v5 = firstObject;
  }

  return v5;
}

@end