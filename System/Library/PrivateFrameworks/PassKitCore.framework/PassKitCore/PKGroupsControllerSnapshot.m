@interface PKGroupsControllerSnapshot
- (PKGroupsControllerSnapshot)initWithCoder:(id)a3;
- (PKGroupsControllerSnapshot)initWithPasses:(id)a3 states:(id)a4 annotations:(id)a5 accounts:(id)a6 catalog:(id)a7;
- (PKGroupsControllerSnapshot)initWithPasses:(id)a3 states:(id)a4 annotations:(id)a5 catalog:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKGroupsControllerSnapshot

- (PKGroupsControllerSnapshot)initWithPasses:(id)a3 states:(id)a4 annotations:(id)a5 accounts:(id)a6 catalog:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = PKGroupsControllerSnapshot;
  v15 = [(PKGroupsControllerSnapshot *)&v23 init];
  if (v15)
  {
    v16 = [v11 copy];
    passes = v15->_passes;
    v15->_passes = v16;

    v18 = [v12 copy];
    states = v15->_states;
    v15->_states = v18;

    v20 = [v13 copy];
    annotations = v15->_annotations;
    v15->_annotations = v20;

    objc_storeStrong(&v15->_catalog, a7);
  }

  return v15;
}

- (PKGroupsControllerSnapshot)initWithPasses:(id)a3 states:(id)a4 annotations:(id)a5 catalog:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = PKGroupsControllerSnapshot;
  v14 = [(PKGroupsControllerSnapshot *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    passes = v14->_passes;
    v14->_passes = v15;

    v17 = [v11 copy];
    states = v14->_states;
    v14->_states = v17;

    v19 = [v12 copy];
    annotations = v14->_annotations;
    v14->_annotations = v19;

    objc_storeStrong(&v14->_catalog, a6);
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  passes = self->_passes;
  v5 = a3;
  [v5 encodeObject:passes forKey:@"passes"];
  [v5 encodeObject:self->_states forKey:@"states"];
  [v5 encodeObject:self->_annotations forKey:@"annotationsByPassUniqueID"];
  [v5 encodeObject:self->_catalog forKey:@"catalog"];
}

- (PKGroupsControllerSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKGroupsControllerSnapshot;
  v5 = [(PKGroupsControllerSnapshot *)&v27 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"passes"];
    passes = v5->_passes;
    v5->_passes = v9;

    v11 = objc_alloc(MEMORY[0x1E695DFD8]);
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"states"];
    states = v5->_states;
    v5->_states = v15;

    v17 = objc_alloc(MEMORY[0x1E695DFD8]);
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v17 initWithObjects:{v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"annotationsByPassUniqueID"];
    annotations = v5->_annotations;
    v5->_annotations = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"catalog"];
    catalog = v5->_catalog;
    v5->_catalog = v24;
  }

  return v5;
}

@end