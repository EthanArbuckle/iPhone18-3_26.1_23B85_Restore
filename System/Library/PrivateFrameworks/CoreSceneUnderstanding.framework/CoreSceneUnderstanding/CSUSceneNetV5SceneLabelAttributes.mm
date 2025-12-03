@interface CSUSceneNetV5SceneLabelAttributes
- (BOOL)isSearchable;
- (CSUSceneNetV5SceneLabelAttributes)initWithTaxonomyAttributes:(id)attributes forLabel:(id)label;
- (float)photosSearchThreshold;
@end

@implementation CSUSceneNetV5SceneLabelAttributes

- (CSUSceneNetV5SceneLabelAttributes)initWithTaxonomyAttributes:(id)attributes forLabel:(id)label
{
  attributesCopy = attributes;
  labelCopy = label;
  v18.receiver = self;
  v18.super_class = CSUSceneNetV5SceneLabelAttributes;
  v13 = [(CSUSceneNetV5SceneLabelAttributes *)&v18 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(labelCopy, v9, v10, v11, v12);
    label = v13->_label;
    v13->_label = v14;

    objc_storeStrong(&v13->_attributeManager, attributes);
    v16 = v13;
  }

  return v13;
}

- (BOOL)isSearchable
{
  v2 = objc_msgSend_attributeForKey_label_defaultValue_(self->_attributeManager, a2, @"isSearchable", self->_label, 0);
  v7 = v2;
  if (v2)
  {
    v8 = objc_msgSend_BOOLValue(v2, v3, v4, v5, v6);

    return v8;
  }

  else
  {

    return 0;
  }
}

- (float)photosSearchThreshold
{
  v2 = objc_msgSend_attributeForKey_label_defaultValue_(self->_attributeManager, a2, @"searchThreshold", self->_label, 0);
  v7 = v2;
  if (v2)
  {
    objc_msgSend_floatValue(v2, v3, v4, v5, v6);
    v9 = v8;

    return v9;
  }

  else
  {

    return NAN;
  }
}

@end