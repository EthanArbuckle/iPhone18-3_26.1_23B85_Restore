@interface GDKnosisAnswer
- (GDKnosisAnswer)initWithAnswerId:(id)id name:(id)name textualization:(id)textualization facts:(id)facts parents:(id)parents requestIds:(id)ids;
- (GDKnosisAnswer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDKnosisAnswer

- (GDKnosisAnswer)initWithCoder:(id)coder
{
  v49[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_answerId);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  if (v7 || ([coderCopy error], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_name);
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      error = [coderCopy error];

      if (error)
      {
        selfCopy = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_textualization);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

    if (!v13)
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = NSStringFromSelector(sel_facts);
    v18 = [coderCopy decodeObjectOfClasses:v16 forKey:v17];

    if (v18)
    {
      v19 = MEMORY[0x1E695DFD8];
      v20 = objc_opt_class();
      v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
      v22 = NSStringFromSelector(sel_parents);
      v23 = [coderCopy decodeObjectOfClasses:v21 forKey:v22];

      if (v23)
      {
        v24 = MEMORY[0x1E695DFD8];
        v25 = objc_opt_class();
        v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
        v27 = NSStringFromSelector(sel_requestIds);
        v28 = [coderCopy decodeObjectOfClasses:v26 forKey:v27];

        if (v28)
        {
          self = [(GDKnosisAnswer *)self initWithAnswerId:v7 name:v10 textualization:v13 facts:v18 parents:v23 requestIds:v28];
          selfCopy = self;
        }

        else
        {
          error3 = [coderCopy error];

          if (!error3)
          {
            v36 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A578];
            v45 = @"GDKnosisAnswer requestIds is nil";
            v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            v38 = [v36 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v37];
            [coderCopy failWithError:v38];
          }

          v28 = 0;
          selfCopy = 0;
        }

        goto LABEL_24;
      }

      error4 = [coderCopy error];

      if (error4)
      {
        v23 = 0;
        selfCopy = 0;
LABEL_25:

        goto LABEL_26;
      }

      v40 = MEMORY[0x1E696ABC0];
      v46 = *MEMORY[0x1E696A578];
      v47 = @"GDKnosisAnswer parents is nil";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v41 = [v40 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v28];
      [coderCopy failWithError:v41];

      v23 = 0;
    }

    else
    {
      error5 = [coderCopy error];

      if (error5)
      {
        selfCopy = 0;
LABEL_26:

        goto LABEL_27;
      }

      v39 = MEMORY[0x1E696ABC0];
      v48 = *MEMORY[0x1E696A578];
      v49[0] = @"GDKnosisAnswer facts is nil";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v28 = [v39 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v23];
      [coderCopy failWithError:v28];
    }

    selfCopy = 0;
LABEL_24:

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_29:

  v42 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  answerId = self->_answerId;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_answerId);
  [coderCopy encodeObject:answerId forKey:v6];

  name = self->_name;
  v8 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v8];

  textualization = self->_textualization;
  v10 = NSStringFromSelector(sel_textualization);
  [coderCopy encodeObject:textualization forKey:v10];

  facts = self->_facts;
  v12 = NSStringFromSelector(sel_facts);
  [coderCopy encodeObject:facts forKey:v12];

  parents = self->_parents;
  v14 = NSStringFromSelector(sel_parents);
  [coderCopy encodeObject:parents forKey:v14];

  requestIds = self->_requestIds;
  v16 = NSStringFromSelector(sel_requestIds);
  [coderCopy encodeObject:requestIds forKey:v16];
}

- (GDKnosisAnswer)initWithAnswerId:(id)id name:(id)name textualization:(id)textualization facts:(id)facts parents:(id)parents requestIds:(id)ids
{
  idCopy = id;
  nameCopy = name;
  textualizationCopy = textualization;
  factsCopy = facts;
  parentsCopy = parents;
  idsCopy = ids;
  v34.receiver = self;
  v34.super_class = GDKnosisAnswer;
  v20 = [(GDKnosisAnswer *)&v34 init];
  if (v20)
  {
    v21 = [idCopy copy];
    answerId = v20->_answerId;
    v20->_answerId = v21;

    v23 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v23;

    v25 = [textualizationCopy copy];
    textualization = v20->_textualization;
    v20->_textualization = v25;

    v27 = [factsCopy copy];
    facts = v20->_facts;
    v20->_facts = v27;

    v29 = [parentsCopy copy];
    parents = v20->_parents;
    v20->_parents = v29;

    v31 = [idsCopy copy];
    requestIds = v20->_requestIds;
    v20->_requestIds = v31;
  }

  return v20;
}

@end