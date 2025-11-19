@interface MAEdgeCollection
+ (id)edgesMatchingFilter:(id)a3 inGraph:(id)a4;
+ (id)edgesOfType:(unint64_t)a3 betweenNodes:(id)a4 andNodes:(id)a5 matchingFilter:(id)a6;
+ (id)edgesOfType:(unint64_t)a3 onNodes:(id)a4 matchingFilter:(id)a5;
- (BOOL)containsEdge:(id)a3;
- (MAEdgeCollection)initWithEdge:(id)a3;
- (id)edgesMatchingFilter:(id)a3;
- (id)firstEdge;
- (id)labels;
- (id)randomEdge;
- (void)_enumerateUsingBlock:(id)a3;
- (void)enumerateDoublePropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateEdgesUsingBlock:(id)a3;
- (void)enumerateIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateStringPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 withBlock:(id)a4;
@end

@implementation MAEdgeCollection

+ (id)edgesMatchingFilter:(id)a3 inGraph:(id)a4
{
  v6 = a3;
  v7 = [a4 graphReference];
  v8 = [v7 concreteGraph];
  v9 = [v8 edgeIdentifiersMatchingFilter:v6];

  v10 = [[a1 alloc] initWithGraphReference:v7 elementIdentifiers:v9];

  return v10;
}

+ (id)edgesOfType:(unint64_t)a3 betweenNodes:(id)a4 andNodes:(id)a5 matchingFilter:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 graphReference];
  v14 = [v13 concreteGraph];
  v15 = [v12 elementIdentifiers];

  v16 = [v11 elementIdentifiers];

  v17 = [v14 edgeIdentifiersOfType:a3 betweenNodesForIdentifiers:v15 andNodesForIdentifiers:v16 matchingFilter:v10];

  v18 = [[a1 alloc] initWithGraphReference:v13 elementIdentifiers:v17];

  return v18;
}

+ (id)edgesOfType:(unint64_t)a3 onNodes:(id)a4 matchingFilter:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [v9 graphReference];
  v11 = [v10 concreteGraph];
  v12 = [v9 elementIdentifiers];

  v13 = [v11 edgeIdentifiersOfType:a3 onNodesForIdentifiers:v12 matchingFilter:v8];

  v14 = [[a1 alloc] initWithGraphReference:v10 elementIdentifiers:v13];

  return v14;
}

- (id)edgesMatchingFilter:(id)a3
{
  v4 = a3;
  v5 = [(MAElementCollection *)self graphReference];
  v6 = [v5 concreteGraph];
  v7 = [(MAElementCollection *)self elementIdentifiers];
  v8 = [v6 edgeIdentifiersMatchingFilter:v4 intersectingIdentifiers:v7];

  v9 = [objc_alloc(objc_opt_class()) initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

- (id)labels
{
  v3 = [(MAElementCollection *)self graphReference];
  v4 = [v3 concreteGraph];
  v5 = [(MAElementCollection *)self elementIdentifiers];
  v9 = 0;
  [v4 labelsAndDomainsOfEdgesForIdentifiers:v5 labels:&v9 domains:0];
  v6 = v9;
  v7 = v9;

  return v6;
}

- (BOOL)containsEdge:(id)a3
{
  v4 = a3;
  v5 = [(MAElementCollection *)self elementIdentifiers];
  v6 = [v4 identifier];

  LOBYTE(v4) = [v5 containsIdentifier:v6];
  return v4;
}

- (id)randomEdge
{
  v3 = [(MAElementCollection *)self elementIdentifiers];
  v4 = [v3 randomElement];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(MAElementCollection *)self graphReference];
    v7 = [v6 concreteGraph];
    v5 = [v7 edgeForIdentifier:v4];
  }

  return v5;
}

- (id)firstEdge
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__888;
  v14 = __Block_byref_object_dispose__889;
  v15 = 0;
  v3 = [(MAElementCollection *)self elementIdentifiers];
  v4 = [v3 prefix:1];

  v5 = [(MAElementCollection *)self graphReference];
  v6 = [v5 concreteGraph];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__MAEdgeCollection_firstEdge__block_invoke;
  v9[3] = &unk_2797FFB10;
  v9[4] = &v10;
  [v6 enumerateEdgesWithIdentifiers:v4 usingBlock:v9];

  v7 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v7;
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateUnsignedLongLongPropertyValuesForKey:v7 ofEdgesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateUnsignedIntegerPropertyValuesForKey:v7 ofEdgesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateDoublePropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateDoublePropertyValuesForKey:v7 ofEdgesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateStringPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateStringPropertyValuesForKey:v7 ofEdgesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateIntegerPropertyValuesForKey:(id)a3 withBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(MAElementCollection *)self graphReference];
  v8 = [v10 concreteGraph];
  v9 = [(MAElementCollection *)self elementIdentifiers];
  [v8 enumerateIntegerPropertyValuesForKey:v7 ofEdgesWithIdentifiers:v9 usingBlock:v6];
}

- (void)enumerateEdgesUsingBlock:(id)a3
{
  v4 = a3;
  v7 = [(MAElementCollection *)self graphReference];
  v5 = [v7 concreteGraph];
  v6 = [(MAElementCollection *)self elementIdentifiers];
  [v5 enumerateEdgesWithIdentifiers:v6 usingBlock:v4];
}

- (MAEdgeCollection)initWithEdge:(id)a3
{
  v4 = a3;
  v5 = [v4 graphReference];
  v6 = [KGElementIdentifierSet alloc];
  v7 = [v4 identifier];

  v8 = [(KGElementIdentifierSet *)v6 initWithElementIdentifier:v7];
  v9 = [(MAElementCollection *)self initWithGraphReference:v5 elementIdentifiers:v8];

  return v9;
}

- (void)_enumerateUsingBlock:(id)a3
{
  v4 = a3;
  v7 = [(MAElementCollection *)self graphReference];
  v5 = [v7 concreteGraph];
  v6 = [(MAElementCollection *)self elementIdentifiers];
  [v5 enumerateEdgesWithIdentifiers:v6 usingBlock:v4];
}

@end