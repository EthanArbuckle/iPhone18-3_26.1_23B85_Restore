@interface PerDocumentObjects
- (PerDocumentObjects)init;
- (unint64_t)queryFingerprintWithPrimaryOut:(unint64_t *)a3;
- (void)seal;
@end

@implementation PerDocumentObjects

- (PerDocumentObjects)init
{
  v10.receiver = self;
  v10.super_class = PerDocumentObjects;
  v2 = [(PerDocumentObjects *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    phrases = v2->_phrases;
    v2->_phrases = v3;

    v5 = objc_opt_new();
    terms = v2->_terms;
    v2->_terms = v5;

    v7 = objc_opt_new();
    secondary = v2->_secondary;
    v2->_secondary = v7;
  }

  return v2;
}

- (void)seal
{
  [(NSMutableArray *)self->_terms sortUsingComparator:&stru_100483A50];
  [(NSMutableArray *)self->_phrases sortUsingComparator:&stru_100483A50];
  secondary = self->_secondary;

  [(NSMutableArray *)secondary sortUsingComparator:&stru_100483A50];
}

- (unint64_t)queryFingerprintWithPrimaryOut:(unint64_t *)a3
{
  v5 = [(NSMutableArray *)self->_phrases count]+ 1;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = self->_phrases;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = [*(*(&v32 + 1) + 8 * v10) hash] + 32 * v5 - v5;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v8);
  }

  v11 = [(NSMutableArray *)self->_terms count]+ v5;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_terms;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v11 = [*(*(&v28 + 1) + 8 * v16) hash] + 32 * v11 - v11;
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v14);
  }

  *a3 = v11;
  v17 = [(NSMutableArray *)self->_secondary count]+ v11;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_secondary;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v17 = [*(*(&v24 + 1) + 8 * v22) hash] + 32 * v17 - v17;
        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  return v17;
}

@end