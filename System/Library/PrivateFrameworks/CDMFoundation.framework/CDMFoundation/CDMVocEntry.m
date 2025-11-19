@interface CDMVocEntry
- (BOOL)isEqual:(id)a3;
- (CDMVocEntry)initWithText:(id)a3 label:(id)a4 semantic:(id)a5;
- (CDMVocEntry)initWithText:(id)a3 label:(id)a4 semantic:(id)a5 usoGraph:(id)a6 nodeIndex:(int)a7;
@end

@implementation CDMVocEntry

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v13 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    text = self->_text;
    v8 = [(CDMVocEntry *)v6 text];
    if ([(NSString *)text isEqual:v8])
    {
      label = self->_label;
      v10 = [(CDMVocEntry *)v6 label];
      if ([(NSString *)label isEqual:v10])
      {
        semantic = self->_semantic;
        v12 = [(CDMVocEntry *)v6 semantic];
        v13 = [(NSString *)semantic isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CDMVocEntry)initWithText:(id)a3 label:(id)a4 semantic:(id)a5 usoGraph:(id)a6 nodeIndex:(int)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = CDMVocEntry;
  v17 = [(CDMVocEntry *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_text, a3);
    objc_storeStrong(&v18->_label, a4);
    objc_storeStrong(&v18->_semantic, a5);
    objc_storeStrong(&v18->_usoGraph, a6);
    v18->_nodeIndex = a7;
  }

  return v18;
}

- (CDMVocEntry)initWithText:(id)a3 label:(id)a4 semantic:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CDMVocEntry;
  v12 = [(CDMVocEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, a3);
    objc_storeStrong(&v13->_label, a4);
    objc_storeStrong(&v13->_semantic, a5);
  }

  return v13;
}

@end