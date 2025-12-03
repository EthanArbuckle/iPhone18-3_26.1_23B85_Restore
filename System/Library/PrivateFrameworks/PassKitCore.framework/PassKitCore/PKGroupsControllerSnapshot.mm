@interface PKGroupsControllerSnapshot
- (PKGroupsControllerSnapshot)initWithCoder:(id)coder;
- (PKGroupsControllerSnapshot)initWithPasses:(id)passes states:(id)states annotations:(id)annotations accounts:(id)accounts catalog:(id)catalog;
- (PKGroupsControllerSnapshot)initWithPasses:(id)passes states:(id)states annotations:(id)annotations catalog:(id)catalog;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKGroupsControllerSnapshot

- (PKGroupsControllerSnapshot)initWithPasses:(id)passes states:(id)states annotations:(id)annotations accounts:(id)accounts catalog:(id)catalog
{
  passesCopy = passes;
  statesCopy = states;
  annotationsCopy = annotations;
  catalogCopy = catalog;
  v23.receiver = self;
  v23.super_class = PKGroupsControllerSnapshot;
  v15 = [(PKGroupsControllerSnapshot *)&v23 init];
  if (v15)
  {
    v16 = [passesCopy copy];
    passes = v15->_passes;
    v15->_passes = v16;

    v18 = [statesCopy copy];
    states = v15->_states;
    v15->_states = v18;

    v20 = [annotationsCopy copy];
    annotations = v15->_annotations;
    v15->_annotations = v20;

    objc_storeStrong(&v15->_catalog, catalog);
  }

  return v15;
}

- (PKGroupsControllerSnapshot)initWithPasses:(id)passes states:(id)states annotations:(id)annotations catalog:(id)catalog
{
  passesCopy = passes;
  statesCopy = states;
  annotationsCopy = annotations;
  catalogCopy = catalog;
  v22.receiver = self;
  v22.super_class = PKGroupsControllerSnapshot;
  v14 = [(PKGroupsControllerSnapshot *)&v22 init];
  if (v14)
  {
    v15 = [passesCopy copy];
    passes = v14->_passes;
    v14->_passes = v15;

    v17 = [statesCopy copy];
    states = v14->_states;
    v14->_states = v17;

    v19 = [annotationsCopy copy];
    annotations = v14->_annotations;
    v14->_annotations = v19;

    objc_storeStrong(&v14->_catalog, catalog);
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  passes = self->_passes;
  coderCopy = coder;
  [coderCopy encodeObject:passes forKey:@"passes"];
  [coderCopy encodeObject:self->_states forKey:@"states"];
  [coderCopy encodeObject:self->_annotations forKey:@"annotationsByPassUniqueID"];
  [coderCopy encodeObject:self->_catalog forKey:@"catalog"];
}

- (PKGroupsControllerSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKGroupsControllerSnapshot;
  v5 = [(PKGroupsControllerSnapshot *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"passes"];
    passes = v5->_passes;
    v5->_passes = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"states"];
    states = v5->_states;
    v5->_states = v15;

    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 initWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"annotationsByPassUniqueID"];
    annotations = v5->_annotations;
    v5->_annotations = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"catalog"];
    catalog = v5->_catalog;
    v5->_catalog = v24;
  }

  return v5;
}

@end