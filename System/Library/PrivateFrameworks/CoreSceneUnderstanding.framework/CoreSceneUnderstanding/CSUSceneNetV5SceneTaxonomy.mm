@interface CSUSceneNetV5SceneTaxonomy
- (CSUSceneNetV5SceneTaxonomy)initWithManifestPath:(id)a3 error:(id *)a4;
- (id)attributesForLabel:(id)a3 error:(id *)a4;
@end

@implementation CSUSceneNetV5SceneTaxonomy

- (CSUSceneNetV5SceneTaxonomy)initWithManifestPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = CSUSceneNetV5SceneTaxonomy;
  v7 = [(CSUTaxonomy *)&v21 initWithManifestPath:v6 error:a4];
  v11 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (!v7->super._labelAttributes)
  {
    if (!a4)
    {
      goto LABEL_8;
    }

    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"No label attributes found in SceneNet taxonomy %@", v9, v10, v6);
    *a4 = objc_msgSend_errorWithCode_message_(CSUError, v18, 6, v17, v19);

LABEL_7:
    a4 = 0;
    goto LABEL_8;
  }

  v12 = [CSUSceneNetV5SceneTaxonomyAttributes alloc];
  v15 = objc_msgSend_initWithAttributePaths_error_(v12, v13, v11[2], a4, v14);
  v16 = v11[11];
  v11[11] = v15;

  if (!v11[11])
  {
    goto LABEL_7;
  }

  a4 = v11;
LABEL_8:

  return a4;
}

- (id)attributesForLabel:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [CSUSceneNetV5SceneLabelAttributes alloc];
  v9 = objc_msgSend_initWithTaxonomyAttributes_forLabel_(v6, v7, self->_attributeManager, v5, v8);

  return v9;
}

@end