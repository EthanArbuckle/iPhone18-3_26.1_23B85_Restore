@interface CSUSceneNetV5SceneTaxonomy
- (CSUSceneNetV5SceneTaxonomy)initWithManifestPath:(id)path error:(id *)error;
- (id)attributesForLabel:(id)label error:(id *)error;
@end

@implementation CSUSceneNetV5SceneTaxonomy

- (CSUSceneNetV5SceneTaxonomy)initWithManifestPath:(id)path error:(id *)error
{
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = CSUSceneNetV5SceneTaxonomy;
  v7 = [(CSUTaxonomy *)&v21 initWithManifestPath:pathCopy error:error];
  v11 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (!v7->super._labelAttributes)
  {
    if (!error)
    {
      goto LABEL_8;
    }

    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"No label attributes found in SceneNet taxonomy %@", v9, v10, pathCopy);
    *error = objc_msgSend_errorWithCode_message_(CSUError, v18, 6, v17, v19);

LABEL_7:
    error = 0;
    goto LABEL_8;
  }

  v12 = [CSUSceneNetV5SceneTaxonomyAttributes alloc];
  v15 = objc_msgSend_initWithAttributePaths_error_(v12, v13, v11[2], error, v14);
  v16 = v11[11];
  v11[11] = v15;

  if (!v11[11])
  {
    goto LABEL_7;
  }

  error = v11;
LABEL_8:

  return error;
}

- (id)attributesForLabel:(id)label error:(id *)error
{
  labelCopy = label;
  v6 = [CSUSceneNetV5SceneLabelAttributes alloc];
  v9 = objc_msgSend_initWithTaxonomyAttributes_forLabel_(v6, v7, self->_attributeManager, labelCopy, v8);

  return v9;
}

@end