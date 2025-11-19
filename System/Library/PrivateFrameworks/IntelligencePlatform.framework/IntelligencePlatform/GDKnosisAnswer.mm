@interface GDKnosisAnswer
- (GDKnosisAnswer)initWithAnswerId:(id)a3 name:(id)a4 textualization:(id)a5 facts:(id)a6 parents:(id)a7 requestIds:(id)a8;
- (GDKnosisAnswer)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisAnswer

- (GDKnosisAnswer)initWithCoder:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_answerId);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7 || ([v4 error], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_name);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      v31 = [v4 error];

      if (v31)
      {
        v29 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_textualization);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

    if (!v13)
    {
      v32 = [v4 error];

      if (v32)
      {
        v29 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_facts);
    v18 = [v4 decodeObjectOfClasses:v16 forKey:v17];

    if (v18)
    {
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
      v22 = NSStringFromSelector(sel_parents);
      v23 = [v4 decodeObjectOfClasses:v21 forKey:v22];

      if (v23)
      {
        v24 = MEMORY[0x1E695DFD8];
        v25 = objc_opt_class();
        v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
        v27 = NSStringFromSelector(sel_requestIds);
        v28 = [v4 decodeObjectOfClasses:v26 forKey:v27];

        if (v28)
        {
          self = [(GDKnosisAnswer *)self initWithAnswerId:v7 name:v10 textualization:v13 facts:v18 parents:v23 requestIds:v28];
          v29 = self;
        }

        else
        {
          v35 = [v4 error];

          if (!v35)
          {
            v36 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A578];
            v45 = @"GDKnosisAnswer requestIds is nil";
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v38 = [v36 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v37];
            [v4 failWithError:v38];
          }

          v28 = 0;
          v29 = 0;
        }

        goto LABEL_24;
      }

      v34 = [v4 error];

      if (v34)
      {
        v23 = 0;
        v29 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v40 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v47 = @"GDKnosisAnswer parents is nil";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v41 = [v40 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v28];
      [v4 failWithError:v41];

      v23 = 0;
    }

    else
    {
      v33 = [v4 error];

      if (v33)
      {
        v29 = 0;
LABEL_26:

        goto LABEL_27;
      }

      v39 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      v49[0] = @"GDKnosisAnswer facts is nil";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v28 = [v39 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v23];
      [v4 failWithError:v28];
    }

    v29 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v29 = 0;
LABEL_29:

  v42 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  answerId = self->_answerId;
  v5 = a3;
  v6 = NSStringFromSelector(sel_answerId);
  [v5 encodeObject:answerId forKey:v6];

  name = self->_name;
  v8 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v8];

  textualization = self->_textualization;
  v10 = NSStringFromSelector(sel_textualization);
  [v5 encodeObject:textualization forKey:v10];

  facts = self->_facts;
  v12 = NSStringFromSelector(sel_facts);
  [v5 encodeObject:facts forKey:v12];

  parents = self->_parents;
  v14 = NSStringFromSelector(sel_parents);
  [v5 encodeObject:parents forKey:v14];

  requestIds = self->_requestIds;
  v16 = NSStringFromSelector(sel_requestIds);
  [v5 encodeObject:requestIds forKey:v16];
}

- (GDKnosisAnswer)initWithAnswerId:(id)a3 name:(id)a4 textualization:(id)a5 facts:(id)a6 parents:(id)a7 requestIds:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = GDKnosisAnswer;
  v20 = [(GDKnosisAnswer *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    answerId = v20->_answerId;
    v20->_answerId = v21;

    v23 = [v15 copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [v16 copy];
    textualization = v20->_textualization;
    v20->_textualization = v25;

    v27 = [v17 copy];
    facts = v20->_facts;
    v20->_facts = v27;

    v29 = [v18 copy];
    parents = v20->_parents;
    v20->_parents = v29;

    v31 = [v19 copy];
    requestIds = v20->_requestIds;
    v20->_requestIds = v31;
  }

  return v20;
}

@end