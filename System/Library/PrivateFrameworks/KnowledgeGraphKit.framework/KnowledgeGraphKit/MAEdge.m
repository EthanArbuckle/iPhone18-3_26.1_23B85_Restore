@interface MAEdge
- (BOOL)conformsToEdgeSchema:(id)a3;
- (BOOL)hasEqualPropertiesToEdge:(id)a3;
- (BOOL)hasProperties;
- (BOOL)hasProperties:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEdge:(id)a3;
- (BOOL)isLoop;
- (BOOL)isSameEdgeAsEdge:(id)a3;
- (BOOL)isUnique;
- (MAEdge)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7;
- (MAEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 properties:(id)a8;
- (MAEdge)initWithSourceNode:(id)a3 targetNode:(id)a4;
- (NSDictionary)properties;
- (NSSet)labels;
- (NSString)description;
- (id)commonNode:(id)a3;
- (id)oppositeNode:(id)a3;
- (id)propertyDictionary;
- (id)propertyForKey:(id)a3;
- (id)propertyForKey:(id)a3 kindOfClass:(Class)a4;
- (id)propertyKeys;
- (id)shortDescription;
- (id)visualStringWithName:(id)a3 andPropertyKeys:(id)a4;
- (unint64_t)hash;
- (unint64_t)propertiesCount;
- (void)enumeratePropertiesUsingBlock:(id)a3;
- (void)setGraphReference:(id)a3;
@end

@implementation MAEdge

- (id)visualStringWithName:(id)a3 andPropertyKeys:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CCAB68];
  v8 = a4;
  v9 = [v7 string];
  [v9 appendString:@"["];
  if (v6)
  {
    [v9 appendString:v6];
  }

  v10 = [(MAEdge *)self label];

  if (v10)
  {
    v11 = [(MAEdge *)self label];
    [v9 appendFormat:@":%@", v11];
  }

  else
  {
    [v9 appendFormat:@":"];
  }

  if ([(MAEdge *)self domain]&& [(MAEdge *)self domain]!= 1)
  {
    [v9 appendFormat:@":%lu", -[MAEdge domain](self, "domain")];
  }

  v12 = [(MAEdge *)self propertyDictionary];
  v13 = PropertiesVisualStringForKeys(v8, v12);

  if ([v13 length] >= 3)
  {
    [v9 appendFormat:@" %@", v13];
  }

  [v9 appendString:@"]"];

  return v9;
}

- (BOOL)isLoop
{
  v2 = self;
  v3 = [(MAEdge *)self sourceNode];
  v4 = [(MAEdge *)v2 targetNode];
  LOBYTE(v2) = v3 == v4;

  return v2;
}

- (id)commonNode:(id)a3
{
  v4 = a3;
  v5 = [(MAEdge *)self sourceNode];
  v6 = [(MAEdge *)self targetNode];
  v7 = [v4 sourceNode];
  v8 = [v4 targetNode];

  v9 = [v5 isEqual:v7];
  v10 = v5;
  if (v9 & 1) != 0 || (v11 = [v5 isEqual:v8], v10 = v5, (v11) || (v12 = objc_msgSend(v6, "isEqual:", v7), v10 = v6, (v12) || (v13 = objc_msgSend(v6, "isEqual:", v8), v10 = v6, v13))
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)oppositeNode:(id)a3
{
  v4 = a3;
  v5 = [(MAEdge *)self sourceNode];
  v6 = [(MAEdge *)self targetNode];
  v7 = [v4 isSameNodeAsNode:v5];
  v8 = v6;
  if ((v7 & 1) != 0 || (v9 = [v4 isSameNodeAsNode:v6], v8 = v5, v9))
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)propertyDictionary
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyKeys
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (unint64_t)propertiesCount
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (BOOL)hasProperties
{
  v2 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (void)enumeratePropertiesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(MAEdge *)self propertyDictionary];
  [v5 enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)propertyForKey:(id)a3 kindOfClass:(Class)a4
{
  v4 = [(MAEdge *)self propertyForKey:a3];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(MAEdge *)v5 propertyDictionary];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:v4];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (BOOL)hasProperties:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 count];
    if (v6 <= [(MAEdge *)self propertiesCount])
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 1;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __24__MAEdge_hasProperties___block_invoke;
      v9[3] = &unk_2797FF298;
      v9[4] = self;
      v9[5] = &v10;
      [v5 enumerateKeysAndObjectsUsingBlock:v9];
      v7 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void __24__MAEdge_hasProperties___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 propertyForKey:a2];
  LOBYTE(v7) = [v9 isEqual:v8];

  *(*(*(a1 + 40) + 8) + 24) = v7;
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

- (BOOL)isUnique
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v3 = [(MAGraphReference *)self->_graphReference concreteGraph];
  if (v3)
  {
    v4 = [(MAEdge *)self sourceNode];
    v5 = [(MAEdge *)self label];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __18__MAEdge_isUnique__block_invoke;
    v8[3] = &unk_2797FF270;
    v8[4] = self;
    v8[5] = &v9;
    [v4 enumerateEdgesWithLabel:v5 domain:0 usingBlock:v8];
  }

  v6 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v6;
}

void __18__MAEdge_isUnique__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if (([v5 isSameEdgeAsEdge:*(a1 + 32)] & 1) == 0 && objc_msgSend(v5, "isEqualToEdge:", *(a1 + 32)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (BOOL)isEqualToEdge:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = -[MAEdge domain](self, "domain"), v5 == [v4 domain]) && (-[MAEdge weight](self, "weight"), v7 = v6, objc_msgSend(v4, "weight"), v7 == v8))
  {
    v11 = [(MAEdge *)self label];
    v12 = [v4 label];
    if ((v11 == v12 || [v11 isEqualToString:v12]) && -[MAEdge hasEqualPropertiesToEdge:](self, "hasEqualPropertiesToEdge:", v4))
    {
      v13 = [(MAEdge *)self sourceNode];
      v14 = [(MAEdge *)self targetNode];
      v15 = [v4 sourceNode];
      v16 = [v4 targetNode];
      v9 = (v13 == v15 || [v13 isEqualToNode:v15]) && (v14 == v16 || (objc_msgSend(v14, "isEqualToNode:", v16) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)hasEqualPropertiesToEdge:(id)a3
{
  v4 = a3;
  v5 = [(MAEdge *)self propertyDictionary];
  v6 = [v4 propertyDictionary];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (BOOL)isSameEdgeAsEdge:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    v6 = [(MAEdge *)v4 graphReference];
    v7 = [(MAEdge *)self graphReference];
    if (v6 == v7)
    {
      v9 = [(MAEdge *)v5 identifier];
      v8 = v9 == [(MAEdge *)self identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(MAGraphReference *)self->_graphReference hash];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_identifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
    goto LABEL_13;
  }

  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    v8 = v7;
    identifier = self->_identifier;
    if (identifier == 0x7FFFFFFFFFFFFFFFLL && v7->_identifier == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_9;
    }

    if (self->_graphReference != v7->_graphReference)
    {
      v10 = [(MAEdge *)self graph];
      v11 = [(MAEdge *)v8 graph];

      if (v10 != v11)
      {
LABEL_9:
        v6 = [(MAEdge *)self isEqualToEdge:v8];
LABEL_12:

        goto LABEL_13;
      }

      identifier = self->_identifier;
    }

    v6 = identifier == v8->_identifier;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (NSDictionary)properties
{
  v3 = [(MAEdge *)self propertyDictionary];
  [(MAEdge *)self weight];
  v5 = [(MAKGWeightConversion *)v4 kgPropertiesForMAProperties:v3 weight:?];

  return v5;
}

- (NSSet)labels
{
  v3 = [(MAEdge *)self graphReference];
  v4 = [v3 concreteGraph];
  v5 = [(MAEdge *)self label];
  v6 = [v4 labelsForLabel:v5 domain:{-[MAEdge domain](self, "domain")}];

  return v6;
}

- (MAEdge)initWithIdentifier:(unint64_t)a3 labels:(id)a4 properties:(id)a5 sourceNode:(id)a6 targetNode:(id)a7
{
  v22 = 1;
  v21 = 0;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  MALabelAndDomainFromKGLabels(a4, &v21, &v22);
  v15 = v21;
  v20 = 0;
  v19 = 0;
  [MAKGWeightConversion maPropertiesAndWeightForKGProperties:v14 maProperties:&v19 maWeight:&v20];

  LODWORD(v16) = v20;
  v17 = [(MAEdge *)self initWithLabel:v15 sourceNode:v13 targetNode:v12 domain:v22 weight:v19 properties:v16];

  if (v17)
  {
    [(MAEdge *)v17 setIdentifier:a3];
  }

  return v17;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = MAEdge;
  v4 = [(MAEdge *)&v17 description];
  identifier = self->_identifier;
  [(MAEdge *)self weight];
  v7 = v6;
  v8 = [(MAEdge *)self label];
  v9 = [v3 stringWithFormat:@"[%@] id:[%lu] weight:[%f] label:[%@]", v4, identifier, *&v7, v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(MAEdge *)self sourceNode];
  v12 = [v11 shortDescription];
  v13 = [(MAEdge *)self targetNode];
  v14 = [v13 shortDescription];
  v15 = [v10 stringWithFormat:@"%@\n\t\tsourceNode:%@\n\t\ttargetNode:%@", v9, v12, v14];

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = MAEdge;
  v4 = [(MAEdge *)&v16 description];
  identifier = self->_identifier;
  [(MAEdge *)self weight];
  v7 = v6;
  v8 = [(MAEdge *)self label];
  v9 = [v3 stringWithFormat:@"[%@] id:[%lu] weight:[%f] label:[%@]", v4, identifier, *&v7, v8];

  v10 = MEMORY[0x277CCACA8];
  v11 = [(MAEdge *)self visualString];
  v12 = [(MAEdge *)self sourceNode];
  v13 = [(MAEdge *)self targetNode];
  v14 = [v10 stringWithFormat:@"%@ %@\n\t\tsourceNode:%@\n\t\ttargetNode:%@", v9, v11, v12, v13];

  return v14;
}

- (void)setGraphReference:(id)a3
{
  v5 = a3;
  p_graphReference = &self->_graphReference;
  if (self->_graphReference != v5)
  {
    v9 = v5;
    objc_storeStrong(p_graphReference, a3);
    if (v9)
    {
      v7 = [(MAEdge *)self sourceNode];
      [v7 setGraphReference:v9];

      v8 = [(MAEdge *)self targetNode];
      [v8 setGraphReference:v9];
    }
  }

  MEMORY[0x2821F9730](p_graphReference);
}

- (MAEdge)initWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 domain:(unsigned __int16)a6 weight:(float)a7 properties:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v17);
}

- (MAEdge)initWithSourceNode:(id)a3 targetNode:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MAEdge;
  v9 = [(MAEdge *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceNode, a3);
    objc_storeStrong(&v10->_targetNode, a4);
  }

  return v10;
}

- (BOOL)conformsToEdgeSchema:(id)a3
{
  v4 = a3;
  v5 = elementMatchesDefinition(v4, self);
  v6 = [v4 sourceNode];
  v7 = [(MAEdge *)self sourceNode];
  v8 = v5 & elementMatchesDefinition(v6, v7);

  v9 = [v4 targetNode];

  v10 = [(MAEdge *)self targetNode];
  LOBYTE(v4) = elementMatchesDefinition(v9, v10);

  return v8 & v4;
}

@end