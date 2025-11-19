@interface CPLUnionEnumerator
- (CPLUnionEnumerator)initWithEnumeratorGenerators:(id)a3;
- (CPLUnionEnumerator)initWithEnumerators:(id)a3;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)_prepareNextEnumeratorWithState:(id *)a3;
@end

@implementation CPLUnionEnumerator

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (self->_currentEnumerator)
  {
    goto LABEL_3;
  }

  do
  {
    [(CPLUnionEnumerator *)self _prepareNextEnumeratorWithState:a3];
    if (!self->_currentEnumerator)
    {
      return 0;
    }

LABEL_3:
    a3->var2 = self->_currentEnumeratorMutationsPtr;
    result = [(NSFastEnumeration *)self->_currentEnumerator countByEnumeratingWithState:a3 objects:a4 count:a5];
  }

  while (!result);
  currentEnumeratorMutationsPtr = self->_currentEnumeratorMutationsPtr;
  var2 = a3->var2;
  if (currentEnumeratorMutationsPtr)
  {
    v12 = var2 == currentEnumeratorMutationsPtr;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    self->_currentEnumeratorMutationsPtr = var2;
    v13 = &countByEnumeratingWithState_objects_count__const_mu;
  }

  else
  {
    v13 = &countByEnumeratingWithState_objects_count__const_mu2;
  }

  a3->var2 = v13;
  return result;
}

- (void)_prepareNextEnumeratorWithState:(id *)a3
{
  remainingGenerators = self->_remainingGenerators;
  currentGeneratorIndex = self->_currentGeneratorIndex;
  if (remainingGenerators)
  {
    if (currentGeneratorIndex < [(NSMutableArray *)remainingGenerators count])
    {
      v7 = [(NSMutableArray *)self->_remainingGenerators objectAtIndexedSubscript:self->_currentGeneratorIndex];
      v8 = v7[2]();
      currentEnumerator = self->_currentEnumerator;
      self->_currentEnumerator = v8;

      [(NSMutableArray *)self->_remainingGenerators replaceObjectAtIndex:self->_currentGeneratorIndex withObject:&__block_literal_global_4817];
LABEL_6:
      ++self->_currentGeneratorIndex;
      goto LABEL_8;
    }
  }

  else if (currentGeneratorIndex <= 1)
  {
    v10 = (*(self->_generatorArray[currentGeneratorIndex] + 2))();
    v11 = self->_currentEnumerator;
    self->_currentEnumerator = v10;

    v12 = self->_currentGeneratorIndex;
    v13 = self->_generatorArray[v12];
    self->_generatorArray[v12] = 0;

    goto LABEL_6;
  }

  v14 = self->_currentEnumerator;
  self->_currentEnumerator = 0;

LABEL_8:
  if (self->_currentEnumerator)
  {
    a3->var0 = 0;
    *a3->var3 = 0u;
    *&a3->var3[2] = 0u;
    a3->var3[4] = 0;
    self->_currentEnumeratorMutationsPtr = 0;
  }
}

- (CPLUnionEnumerator)initWithEnumerators:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __42__CPLUnionEnumerator_initWithEnumerators___block_invoke;
        v16[3] = &unk_1E861C0F8;
        v16[4] = v11;
        v12 = MEMORY[0x1E128EBA0](v16);
        [v5 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [(CPLUnionEnumerator *)self initWithEnumeratorGenerators:v5];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (CPLUnionEnumerator)initWithEnumeratorGenerators:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CPLUnionEnumerator;
  v5 = [(CPLUnionEnumerator *)&v20 init];
  if (v5)
  {
    v6 = [v4 count];
    if (v6 == 2)
    {
      v13 = [v4 firstObject];
      v14 = v5->_generatorArray[0];
      v5->_generatorArray[0] = v13;

      v15 = [v4 lastObject];
      v16 = v5->_generatorArray[1];
      v5->_generatorArray[1] = v15;

      v5->_currentGeneratorIndex = 0;
    }

    else
    {
      if (v6 == 1)
      {
        v10 = v5->_generatorArray[0];
        v5->_generatorArray[0] = 0;

        v11 = [v4 firstObject];
        v12 = v5->_generatorArray[1];
        v5->_generatorArray[1] = v11;

        v9 = 1;
      }

      else
      {
        if (v6)
        {
          v17 = [v4 mutableCopy];
          remainingGenerators = v5->_remainingGenerators;
          v5->_remainingGenerators = v17;

          goto LABEL_10;
        }

        v7 = v5->_generatorArray[0];
        v5->_generatorArray[0] = 0;

        v8 = v5->_generatorArray[1];
        v5->_generatorArray[1] = 0;

        v9 = 2;
      }

      v5->_currentGeneratorIndex = v9;
    }
  }

LABEL_10:

  return v5;
}

@end