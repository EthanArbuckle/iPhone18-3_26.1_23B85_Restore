@interface GDKnosisFact
- (GDKnosisFact)initWithCoder:(id)a3;
- (GDKnosisFact)initWithFactId:(id)a3 score:(id)a4 subjectId:(id)a5 subjectAlias:(id)a6 subjectPopularity:(id)a7 subjectIsa:(id)a8 predicateId:(id)a9 predicateAlias:(id)a10 predicatePopularity:(id)a11 objectID:(id)a12 objectAlias:(id)a13 objectPopularity:(id)a14 qualifiers:(id)a15;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDKnosisFact

- (GDKnosisFact)initWithCoder:(id)a3
{
  v92[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_factId);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromSelector(sel_score);
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

    if (!v10)
    {
      v57 = [v4 error];

      if (v57)
      {
        v10 = 0;
        v55 = 0;
LABEL_59:

        goto LABEL_60;
      }

      v61 = MEMORY[0x1E696ABC0];
      v89 = *MEMORY[0x1E696A578];
      v90 = @"GDKnosisFact score is nil";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
      v18 = [v61 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v13];
      [v4 failWithError:v18];
      goto LABEL_26;
    }

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_subjectId);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

    if (v13)
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = NSStringFromSelector(sel_subjectAlias);
      v18 = [v4 decodeObjectOfClasses:v16 forKey:v17];

      if (!v18)
      {
        v60 = [v4 error];

        if (v60)
        {
          v18 = 0;
LABEL_26:
          v55 = 0;
LABEL_57:

          goto LABEL_58;
        }
      }

      v19 = objc_opt_class();
      v20 = NSStringFromSelector(sel_subjectPopularity);
      v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

      if (v21 || ([v4 error], v62 = objc_claimAutoreleasedReturnValue(), v62, !v62))
      {
        v84 = self;
        v22 = MEMORY[0x1E695DFD8];
        v23 = objc_opt_class();
        v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
        v25 = NSStringFromSelector(sel_subjectIsa);
        v26 = [v4 decodeObjectOfClasses:v24 forKey:v25];

        if (v26 || ([v4 error], v64 = objc_claimAutoreleasedReturnValue(), v64, !v64))
        {
          v82 = v26;
          v27 = objc_opt_class();
          v28 = NSStringFromSelector(sel_predicateId);
          v29 = [v4 decodeObjectOfClass:v27 forKey:v28];

          v83 = v29;
          if (v29 || ([v4 error], v65 = objc_claimAutoreleasedReturnValue(), v65, !v65))
          {
            v30 = MEMORY[0x1E695DFD8];
            v31 = objc_opt_class();
            v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
            v33 = NSStringFromSelector(sel_predicateAlias);
            v34 = [v4 decodeObjectOfClasses:v32 forKey:v33];

            v81 = v34;
            if (v34 || ([v4 error], v66 = objc_claimAutoreleasedReturnValue(), v66, !v66))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromSelector(sel_predicatePopularity);
              v37 = [v4 decodeObjectOfClass:v35 forKey:v36];

              v80 = v37;
              if (v37 || ([v4 error], v67 = objc_claimAutoreleasedReturnValue(), v67, !v67))
              {
                v38 = objc_opt_class();
                v39 = NSStringFromSelector(sel_objectID);
                v40 = [v4 decodeObjectOfClass:v38 forKey:v39];

                v79 = v40;
                if (v40 || ([v4 error], v68 = objc_claimAutoreleasedReturnValue(), v68, !v68))
                {
                  v41 = MEMORY[0x1E695DFD8];
                  v42 = objc_opt_class();
                  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
                  v44 = NSStringFromSelector(sel_objectAlias);
                  v45 = [v4 decodeObjectOfClasses:v43 forKey:v44];

                  v46 = v83;
                  v78 = v45;
                  if (v45 || ([v4 error], v69 = objc_claimAutoreleasedReturnValue(), v69, !v69))
                  {
                    v47 = objc_opt_class();
                    v48 = NSStringFromSelector(sel_objectPopularity);
                    v49 = [v4 decodeObjectOfClass:v47 forKey:v48];

                    v26 = v82;
                    v77 = v49;
                    if (v49 || ([v4 error], v70 = objc_claimAutoreleasedReturnValue(), v70, !v70))
                    {
                      v50 = MEMORY[0x1E695DFD8];
                      v51 = objc_opt_class();
                      v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
                      v53 = NSStringFromSelector(sel_qualifiers);
                      v54 = [v4 decodeObjectOfClasses:v52 forKey:v53];

                      if (v54)
                      {
                        self = [(GDKnosisFact *)v84 initWithFactId:v7 score:v10 subjectId:v13 subjectAlias:v18 subjectPopularity:v21 subjectIsa:v82 predicateId:v83 predicateAlias:v81 predicatePopularity:v80 objectID:v79 objectAlias:v78 objectPopularity:v77 qualifiers:v54];
                        v55 = self;
                      }

                      else
                      {
                        v71 = [v4 error];

                        self = v84;
                        if (!v71)
                        {
                          v72 = MEMORY[0x1E696ABC0];
                          v85 = *MEMORY[0x1E696A578];
                          v86 = @"GDKnosisFact qualifiers is nil";
                          v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                          v74 = [v72 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v73];
                          [v4 failWithError:v74];

                          self = v84;
                        }

                        v55 = 0;
                      }

                      v46 = v83;
                    }

                    else
                    {
                      v55 = 0;
                      self = v84;
                    }
                  }

                  else
                  {
                    v55 = 0;
                    self = v84;
                    v26 = v82;
                  }
                }

                else
                {
                  v55 = 0;
                  v46 = v83;
                  self = v84;
                  v26 = v82;
                }
              }

              else
              {
                v55 = 0;
                v46 = v83;
                self = v84;
                v26 = v82;
              }
            }

            else
            {
              v55 = 0;
              v46 = v83;
              self = v84;
              v26 = v82;
            }
          }

          else
          {
            v55 = 0;
            v46 = 0;
            self = v84;
          }
        }

        else
        {
          v55 = 0;
          self = v84;
        }

        goto LABEL_56;
      }

      v21 = 0;
LABEL_30:
      v55 = 0;
LABEL_56:

      goto LABEL_57;
    }

    v58 = [v4 error];

    if (!v58)
    {
      v63 = MEMORY[0x1E696ABC0];
      v87 = *MEMORY[0x1E696A578];
      v88 = @"GDKnosisFact subjectId is nil";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
      v21 = [v63 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v18];
      [v4 failWithError:v21];
      goto LABEL_30;
    }

    v13 = 0;
LABEL_22:
    v55 = 0;
LABEL_58:

    goto LABEL_59;
  }

  v56 = [v4 error];

  if (!v56)
  {
    v59 = MEMORY[0x1E696ABC0];
    v91 = *MEMORY[0x1E696A578];
    v92[0] = @"GDKnosisFact factId is nil";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:&v91 count:1];
    v13 = [v59 errorWithDomain:@"GDErrorDomain" code:9 userInfo:v10];
    [v4 failWithError:v13];
    goto LABEL_22;
  }

  v55 = 0;
LABEL_60:

  v75 = *MEMORY[0x1E69E9840];
  return v55;
}

- (void)encodeWithCoder:(id)a3
{
  factId = self->_factId;
  v5 = a3;
  v6 = NSStringFromSelector(sel_factId);
  [v5 encodeObject:factId forKey:v6];

  score = self->_score;
  v8 = NSStringFromSelector(sel_score);
  [v5 encodeObject:score forKey:v8];

  subjectId = self->_subjectId;
  v10 = NSStringFromSelector(sel_subjectId);
  [v5 encodeObject:subjectId forKey:v10];

  subjectAlias = self->_subjectAlias;
  v12 = NSStringFromSelector(sel_subjectAlias);
  [v5 encodeObject:subjectAlias forKey:v12];

  subjectPopularity = self->_subjectPopularity;
  v14 = NSStringFromSelector(sel_subjectPopularity);
  [v5 encodeObject:subjectPopularity forKey:v14];

  subjectIsa = self->_subjectIsa;
  v16 = NSStringFromSelector(sel_subjectIsa);
  [v5 encodeObject:subjectIsa forKey:v16];

  predicateId = self->_predicateId;
  v18 = NSStringFromSelector(sel_predicateId);
  [v5 encodeObject:predicateId forKey:v18];

  predicateAlias = self->_predicateAlias;
  v20 = NSStringFromSelector(sel_predicateAlias);
  [v5 encodeObject:predicateAlias forKey:v20];

  predicatePopularity = self->_predicatePopularity;
  v22 = NSStringFromSelector(sel_predicatePopularity);
  [v5 encodeObject:predicatePopularity forKey:v22];

  objectID = self->_objectID;
  v24 = NSStringFromSelector(sel_objectID);
  [v5 encodeObject:objectID forKey:v24];

  objectAlias = self->_objectAlias;
  v26 = NSStringFromSelector(sel_objectAlias);
  [v5 encodeObject:objectAlias forKey:v26];

  objectPopularity = self->_objectPopularity;
  v28 = NSStringFromSelector(sel_objectPopularity);
  [v5 encodeObject:objectPopularity forKey:v28];

  qualifiers = self->_qualifiers;
  v30 = NSStringFromSelector(sel_qualifiers);
  [v5 encodeObject:qualifiers forKey:v30];
}

- (GDKnosisFact)initWithFactId:(id)a3 score:(id)a4 subjectId:(id)a5 subjectAlias:(id)a6 subjectPopularity:(id)a7 subjectIsa:(id)a8 predicateId:(id)a9 predicateAlias:(id)a10 predicatePopularity:(id)a11 objectID:(id)a12 objectAlias:(id)a13 objectPopularity:(id)a14 qualifiers:(id)a15
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v64 = a7;
  v63 = a8;
  v24 = v21;
  v62 = a9;
  v25 = v22;
  v61 = a10;
  v26 = a11;
  v27 = v23;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  v31 = a15;
  v65.receiver = self;
  v65.super_class = GDKnosisFact;
  v32 = [(GDKnosisFact *)&v65 init];
  if (v32)
  {
    v33 = [v20 copy];
    factId = v32->_factId;
    v32->_factId = v33;

    v35 = [v24 copy];
    score = v32->_score;
    v32->_score = v35;

    v37 = [v25 copy];
    subjectId = v32->_subjectId;
    v32->_subjectId = v37;

    v39 = [v27 copy];
    subjectAlias = v32->_subjectAlias;
    v32->_subjectAlias = v39;

    v41 = [v64 copy];
    subjectPopularity = v32->_subjectPopularity;
    v32->_subjectPopularity = v41;

    v43 = [v63 copy];
    subjectIsa = v32->_subjectIsa;
    v32->_subjectIsa = v43;

    v45 = [v62 copy];
    predicateId = v32->_predicateId;
    v32->_predicateId = v45;

    v47 = [v61 copy];
    predicateAlias = v32->_predicateAlias;
    v32->_predicateAlias = v47;

    v49 = [v26 copy];
    predicatePopularity = v32->_predicatePopularity;
    v32->_predicatePopularity = v49;

    v51 = [v28 copy];
    objectID = v32->_objectID;
    v32->_objectID = v51;

    v53 = [v29 copy];
    objectAlias = v32->_objectAlias;
    v32->_objectAlias = v53;

    v55 = [v30 copy];
    objectPopularity = v32->_objectPopularity;
    v32->_objectPopularity = v55;

    v57 = [v31 copy];
    qualifiers = v32->_qualifiers;
    v32->_qualifiers = v57;
  }

  return v32;
}

@end