@interface CDMVocEntry
- (BOOL)isEqual:(id)equal;
- (CDMVocEntry)initWithText:(id)text label:(id)label semantic:(id)semantic;
- (CDMVocEntry)initWithText:(id)text label:(id)label semantic:(id)semantic usoGraph:(id)graph nodeIndex:(int)index;
@end

@implementation CDMVocEntry

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    text = self->_text;
    text = [(CDMVocEntry *)v6 text];
    if ([(NSString *)text isEqual:text])
    {
      label = self->_label;
      label = [(CDMVocEntry *)v6 label];
      if ([(NSString *)label isEqual:label])
      {
        semantic = self->_semantic;
        semantic = [(CDMVocEntry *)v6 semantic];
        v13 = [(NSString *)semantic isEqual:semantic];
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

- (CDMVocEntry)initWithText:(id)text label:(id)label semantic:(id)semantic usoGraph:(id)graph nodeIndex:(int)index
{
  textCopy = text;
  labelCopy = label;
  semanticCopy = semantic;
  graphCopy = graph;
  v20.receiver = self;
  v20.super_class = CDMVocEntry;
  v17 = [(CDMVocEntry *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_text, text);
    objc_storeStrong(&v18->_label, label);
    objc_storeStrong(&v18->_semantic, semantic);
    objc_storeStrong(&v18->_usoGraph, graph);
    v18->_nodeIndex = index;
  }

  return v18;
}

- (CDMVocEntry)initWithText:(id)text label:(id)label semantic:(id)semantic
{
  textCopy = text;
  labelCopy = label;
  semanticCopy = semantic;
  v15.receiver = self;
  v15.super_class = CDMVocEntry;
  v12 = [(CDMVocEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_text, text);
    objc_storeStrong(&v13->_label, label);
    objc_storeStrong(&v13->_semantic, semantic);
  }

  return v13;
}

@end