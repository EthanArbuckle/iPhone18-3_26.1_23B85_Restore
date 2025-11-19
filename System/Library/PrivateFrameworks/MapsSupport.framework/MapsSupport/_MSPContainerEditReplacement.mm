@interface _MSPContainerEditReplacement
- (NSString)description;
- (_MSPContainerEditReplacement)initWithOriginalObjects:(id)a3 replacementObjects:(id)a4 indexes:(id)a5;
- (void)useImmutableObjectsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4;
@end

@implementation _MSPContainerEditReplacement

- (_MSPContainerEditReplacement)initWithOriginalObjects:(id)a3 replacementObjects:(id)a4 indexes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _MSPContainerEditReplacement;
  v11 = [(_MSPContainerEditReplacement *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    originalObjects = v11->_originalObjects;
    v11->_originalObjects = v12;

    v14 = [v9 copy];
    replacementObjects = v11->_replacementObjects;
    v11->_replacementObjects = v14;

    v16 = [v10 copy];
    indexesOfReplacedObjects = v11->_indexesOfReplacedObjects;
    v11->_indexesOfReplacedObjects = v16;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = _MSPContainerEditReplacement;
  v4 = [(_MSPContainerEditReplacement *)&v10 description];
  v5 = [(_MSPContainerEditReplacement *)self originalImmutableObjects];
  v6 = [(_MSPContainerEditReplacement *)self replacementImmutableObjects];
  v7 = [(_MSPContainerEditReplacement *)self indexesOfReplacedObjects];
  v8 = [v3 stringWithFormat:@"%@ { replaces original objects = %@ with objects = %@ at indexes = %@ }", v4, v5, v6, v7];

  return v8;
}

- (void)useImmutableObjectsFromMap:(id)a3 intermediateMutableObjectTransferBlock:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_MSPContainerEditReplacement *)self originalObjects];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v48 = __98___MSPContainerEditReplacement_useImmutableObjectsFromMap_intermediateMutableObjectTransferBlock___block_invoke;
  v49 = &unk_279868670;
  v39 = v6;
  v50 = v39;
  v37 = v7;
  v51 = v37;
  v9 = v8;
  v10 = v47;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v53;
    do
    {
      v17 = 0;
      do
      {
        if (*v53 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = (v48)(v10, *(*(&v52 + 1) + 8 * v17), v15);
        if (v18)
        {
          [v11 addObject:{v18, v37, v39}];
        }

        ++v15;

        ++v17;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v14);
  }

  v19 = [v11 copy];
  v20 = [v19 copy];
  originalImmutableObjects = self->_originalImmutableObjects;
  self->_originalImmutableObjects = v20;

  v22 = [(_MSPContainerEditReplacement *)self replacementObjects];
  v41 = MEMORY[0x277D85DD0];
  v42 = 3221225472;
  v43 = __98___MSPContainerEditReplacement_useImmutableObjectsFromMap_intermediateMutableObjectTransferBlock___block_invoke_2;
  v44 = &unk_279868670;
  v40 = v39;
  v45 = v40;
  v38 = v37;
  v46 = v38;
  v23 = v22;
  v24 = &v41;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = v23;
  v27 = [v26 countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v53;
    do
    {
      v31 = 0;
      do
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = (v43)(v24, *(*(&v52 + 1) + 8 * v31), v29);
        if (v32)
        {
          [v25 addObject:{v32, v38, v40, v41, v42}];
        }

        ++v29;

        ++v31;
      }

      while (v28 != v31);
      v28 = [v26 countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v28);
  }

  v33 = [v25 copy];
  v34 = [v33 copy];
  replacementImmutableObjects = self->_replacementImmutableObjects;
  self->_replacementImmutableObjects = v34;

  v36 = *MEMORY[0x277D85DE8];
}

@end