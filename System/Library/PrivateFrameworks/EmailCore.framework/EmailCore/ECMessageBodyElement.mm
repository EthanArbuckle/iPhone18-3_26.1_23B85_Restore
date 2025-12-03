@interface ECMessageBodyElement
- (ECMessageBodyElement)init;
- (NSString)description;
- (id)retainExternally;
- (unint64_t)quoteLevel;
- (unint64_t)valueForAttributes:(unint64_t)attributes;
- (void)_setValue:(unint64_t)value forAttributes:(unint64_t)attributes;
- (void)dealloc;
- (void)setNodes:(id)nodes;
@end

@implementation ECMessageBodyElement

- (ECMessageBodyElement)init
{
  v3.receiver = self;
  v3.super_class = ECMessageBodyElement;
  result = [(ECMessageBodyElement *)&v3 init];
  if (result)
  {
    result->_quoteLevel = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  [(ECMessageBodyElement *)self setParser:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  nodes = self->_nodes;
  v4 = [(NSArray *)nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(nodes);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v9 collectDescendanceIntoArray:v6];
        }
      }

      v5 = [(NSArray *)nodes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11.receiver = self;
  v11.super_class = ECMessageBodyElement;
  [(ECMessageBodyElement *)&v11 dealloc];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setNodes:(id)nodes
{
  nodes = self->_nodes;
  if (nodes != nodes)
  {

    self->_nodes = [nodes copy];
  }

  self->_validAttributes = 0;
  self->_attributes = 0;
  self->_quoteLevel = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_setValue:(unint64_t)value forAttributes:(unint64_t)attributes
{
  v4 = self->_attributes & ~attributes | attributes & value;
  self->_validAttributes |= attributes;
  self->_attributes = v4;
}

- (unint64_t)valueForAttributes:(unint64_t)attributes
{
  if ((attributes & 7) != 0 && ![(ECMessageBodyElement *)self _hasValueForAttributes:7])
  {
    v6 = [(ECMessageBodyParser *)[(ECMessageBodyElement *)self parser] newStringAccumulatorWithOptions:8 lengthLimit:0x7FFFFFFFFFFFFFFFLL];
    [v6 appendInnerTextWithConsumableNode:self];
    accumulatedString = [v6 accumulatedString];
    if ([accumulatedString length])
    {
      if (![accumulatedString ec_isWhitespace])
      {
        selfCopy3 = self;
        v9 = 2;
        v10 = 7;
        goto LABEL_9;
      }

      selfCopy3 = self;
      v9 = 6;
    }

    else
    {
      selfCopy3 = self;
      v9 = 1;
    }

    v10 = 127;
LABEL_9:
    [(ECMessageBodyElement *)selfCopy3 _setValue:v9 forAttributes:v10];
  }

  if ((attributes & 8) != 0 && ![(ECMessageBodyElement *)self _hasValueForAttributes:8])
  {
    v11 = [(ECMessageBodyParser *)[(ECMessageBodyElement *)self parser] newStringAccumulatorWithOptions:20 lengthLimit:0x7FFFFFFFFFFFFFFFLL];
    [v11 appendInnerTextWithConsumableNode:self];
    if ([objc_msgSend(v11 "accumulatedString")])
    {
      selfCopy5 = self;
      v13 = 10;
      v14 = 127;
    }

    else
    {
      selfCopy5 = self;
      v13 = 0;
      v14 = 8;
    }

    [(ECMessageBodyElement *)selfCopy5 _setValue:v13 forAttributes:v14];
  }

  if ((attributes & 0x80) != 0 && ![(ECMessageBodyElement *)self _hasValueForAttributes:128])
  {
    v15 = [(ECMessageBodyParser *)[(ECMessageBodyElement *)self parser] newStringAccumulatorWithOptions:20 lengthLimit:0x7FFFFFFFFFFFFFFFLL];
    [v15 appendInnerTextWithConsumableNode:self];
    if ([objc_msgSend(v15 "accumulatedString")])
    {
      selfCopy7 = self;
      v17 = 130;
      v18 = 131;
    }

    else
    {
      selfCopy7 = self;
      v17 = 0;
      v18 = 128;
    }

    [(ECMessageBodyElement *)selfCopy7 _setValue:v17 forAttributes:v18];
  }

  if ((attributes & 0x10) != 0 && ![(ECMessageBodyElement *)self _hasValueForAttributes:16])
  {
    v19 = [(ECMessageBodyParser *)[(ECMessageBodyElement *)self parser] newStringAccumulatorWithOptions:20 lengthLimit:0x7FFFFFFFFFFFFFFFLL];
    [v19 appendInnerTextWithConsumableNode:self];
    if ([objc_msgSend(v19 "accumulatedString")])
    {
      selfCopy9 = self;
      v21 = 18;
      v22 = 31;
    }

    else
    {
      selfCopy9 = self;
      v21 = 0;
      v22 = 16;
    }

    [(ECMessageBodyElement *)selfCopy9 _setValue:v21 forAttributes:v22];
  }

  if ((attributes & 0x20) != 0 && ![(ECMessageBodyElement *)self _hasValueForAttributes:32])
  {
    v23 = [(ECMessageBodyParser *)[(ECMessageBodyElement *)self parser] newStringAccumulatorWithOptions:20 lengthLimit:0x7FFFFFFFFFFFFFFFLL];
    [v23 appendInnerTextWithConsumableNode:self];
    if ([objc_msgSend(v23 "accumulatedString")])
    {
      selfCopy11 = self;
      v25 = 34;
      v26 = 63;
    }

    else
    {
      selfCopy11 = self;
      v25 = 0;
      v26 = 32;
    }

    [(ECMessageBodyElement *)selfCopy11 _setValue:v25 forAttributes:v26];
  }

  if ((attributes & 0x40) != 0 && ![(ECMessageBodyElement *)self _hasValueForAttributes:64])
  {
    v27 = [(ECMessageBodyParser *)[(ECMessageBodyElement *)self parser] newStringAccumulatorWithOptions:0 lengthLimit:0x7FFFFFFFFFFFFFFFLL];
    [v27 appendInnerTextWithConsumableNode:self];
    if ([objc_msgSend(v27 "accumulatedString")])
    {
      selfCopy13 = self;
      v29 = 66;
      v30 = 127;
    }

    else
    {
      selfCopy13 = self;
      v29 = 0;
      v30 = 64;
    }

    [(ECMessageBodyElement *)selfCopy13 _setValue:v29 forAttributes:v30];
  }

  if (![(ECMessageBodyElement *)self _hasValueForAttributes:attributes])
  {
    [(ECMessageBodyElement *)a2 valueForAttributes:?];
  }

  return self->_attributes & attributes;
}

- (unint64_t)quoteLevel
{
  result = self->_quoteLevel;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    nodes = [(ECMessageBodyElement *)self nodes];
    result = [(NSArray *)nodes count];
    if (result)
    {
      result = [objc_loadWeak(&self->_parser) quoteLevelForBodyNode:{-[NSArray objectAtIndex:](nodes, "objectAtIndex:", 0)}];
    }

    self->_quoteLevel = result;
  }

  return result;
}

- (id)retainExternally
{
  ++self->_externalRetainCount;
  v2 = [(NSArray *)self->_nodes copy];
  nodes = self->_nodes;
  if (v2 == nodes)
  {

    selfCopy2 = self;
  }

  else
  {

    selfCopy2 = self;
    self->_nodes = v2;
  }

  return selfCopy2;
}

- (NSString)description
{
  v3 = [[ECMessageBodyStringAccumulator alloc] initWithOptions:0 lengthLimit:81];
  [(ECMessageBodyStringAccumulator *)v3 appendInnerTextWithConsumableNode:self];
  accumulatedString = [(ECMessageBodyStringAccumulator *)v3 accumulatedString];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = [v5 stringWithFormat:@"<%@: %p; text=%@>", NSStringFromClass(v6), self, accumulatedString];

  return v7;
}

- (uint64_t)valueForAttributes:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"ECMessageBodyParser.m" lineNumber:506 description:@"Not all requested attributes have a valid values"];
}

@end