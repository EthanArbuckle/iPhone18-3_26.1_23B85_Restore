@interface NSArray(IntentsFoundation)
+ (id)if_arrayWithObjectIfNonNil:()IntentsFoundation;
- (id)if_arrayByRemovingObject:()IntentsFoundation;
- (id)if_arrayByRemovingObjectsInArray:()IntentsFoundation;
- (id)if_escapedComponentsJoinedByString:()IntentsFoundation forLocale:;
- (id)if_firstObjectPassingTest:()IntentsFoundation;
- (id)if_firstObjectWithBoolValue:()IntentsFoundation forKey:;
- (id)if_firstObjectWithIntValue:()IntentsFoundation forKey:;
- (id)if_firstObjectWithValue:()IntentsFoundation forKey:;
- (id)if_flatMap:()IntentsFoundation;
- (id)if_map:()IntentsFoundation;
- (id)if_mapConcurrently:()IntentsFoundation;
- (id)if_objectsNotOfClass:()IntentsFoundation;
- (id)if_objectsOfClass:()IntentsFoundation;
- (id)if_objectsPassingTest:()IntentsFoundation;
- (id)if_objectsWithBoolValue:()IntentsFoundation forKey:;
- (id)if_objectsWithIntValue:()IntentsFoundation forKey:;
- (id)if_objectsWithValue:()IntentsFoundation forKey:;
- (void)if_enumerateAsynchronouslyInSequence:()IntentsFoundation completionHandler:;
- (void)if_enumerateAsynchronouslyInSequenceOnQueue:()IntentsFoundation block:completionHandler:;
- (void)if_enumerateAsynchronouslyOnQueue:()IntentsFoundation block:completionHandler:;
@end

@implementation NSArray(IntentsFoundation)

- (void)if_enumerateAsynchronouslyInSequenceOnQueue:()IntentsFoundation block:completionHandler:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objectEnumerator = [self objectEnumerator];
  v12 = malloc_type_calloc(1uLL, 1uLL, 0x100004077774924uLL);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __98__NSArray_IntentsFoundation__if_enumerateAsynchronouslyInSequenceOnQueue_block_completionHandler___block_invoke;
  v21[3] = &unk_2797E9A88;
  v13 = objectEnumerator;
  v22 = v13;
  v14 = v8;
  v23 = v14;
  v15 = v10;
  v24 = v15;
  v26 = &v28;
  v27 = v12;
  v16 = v9;
  v25 = v16;
  v17 = MEMORY[0x259C37510](v21);
  v18 = v29[5];
  v29[5] = v17;

  (*(v29[5] + 16))(v29[5], 0, v19, v20);
  _Block_object_dispose(&v28, 8);
}

- (void)if_enumerateAsynchronouslyInSequence:()IntentsFoundation completionHandler:
{
  label = dispatch_queue_get_label(MEMORY[0x277D85CD0]);
  v8 = dispatch_queue_get_label(0);
  v9 = a4;
  v10 = a3;
  if (label == v8)
  {
    v11 = MEMORY[0x277D85CD0];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
  }

  v12 = v11;
  [self if_enumerateAsynchronouslyInSequenceOnQueue:v11 block:v10 completionHandler:v9];
}

- (void)if_enumerateAsynchronouslyOnQueue:()IntentsFoundation block:completionHandler:
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a4;
  v22 = a5;
  v9 = v8 != 0;
  v10 = dispatch_group_create();
  v11 = [self count];
  v24 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  v20 = v11;
  v21 = v8;
  if (v12)
  {
    v13 = 0;
    v14 = *v40;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v35 = 0;
        v36 = &v35;
        v37 = 0x2020000000;
        v38 = 0;
        dispatch_group_enter(v10);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __88__NSArray_IntentsFoundation__if_enumerateAsynchronouslyOnQueue_block_completionHandler___block_invoke;
        v30[3] = &unk_2797E9998;
        v31 = v24;
        v33 = &v43;
        v32 = v10;
        v34 = &v35;
        v25[2](v25, v16, v13, v30);
        LOBYTE(v16) = *(v36 + 24);

        ++v13;
        v9 |= v16 ^ 1;
        _Block_object_dispose(&v35, 8);
      }

      v12 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v12);
  }

  if (v22)
  {
    if (v9)
    {
      v17 = v8;
      if (!v8)
      {
        v17 = MEMORY[0x277D85CD0];
        label = dispatch_queue_get_label(MEMORY[0x277D85CD0]);
        if (label != dispatch_queue_get_label(0))
        {
          v17 = dispatch_get_global_queue(0, 0);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __88__NSArray_IntentsFoundation__if_enumerateAsynchronouslyOnQueue_block_completionHandler___block_invoke_2;
      block[3] = &unk_2797E99C0;
      v27 = v22;
      v28 = &v43;
      v29 = v20;
      v21 = v17;
      dispatch_group_notify(v10, v17, block);
    }

    else
    {
      (*(v22 + 2))(v22, v20, v44[5]);
    }
  }

  _Block_object_dispose(&v43, 8);

  v19 = *MEMORY[0x277D85DE8];
}

- (id)if_objectsNotOfClass:()IntentsFoundation
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NSArray_IntentsFoundation__if_objectsNotOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [self if_objectsPassingTest:v5];

  return v3;
}

- (id)if_objectsOfClass:()IntentsFoundation
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NSArray_IntentsFoundation__if_objectsOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = [self if_objectsPassingTest:v5];

  return v3;
}

- (id)if_firstObjectWithIntValue:()IntentsFoundation forKey:
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__NSArray_IntentsFoundation__if_firstObjectWithIntValue_forKey___block_invoke;
  v10[3] = &unk_2797E9950;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [self if_firstObjectPassingTest:v10];

  return v8;
}

- (id)if_firstObjectWithBoolValue:()IntentsFoundation forKey:
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NSArray_IntentsFoundation__if_firstObjectWithBoolValue_forKey___block_invoke;
  v10[3] = &unk_2797E9928;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [self if_firstObjectPassingTest:v10];

  return v8;
}

- (id)if_firstObjectWithValue:()IntentsFoundation forKey:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__NSArray_IntentsFoundation__if_firstObjectWithValue_forKey___block_invoke;
  v12[3] = &unk_2797E9900;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [self if_firstObjectPassingTest:v12];

  return v10;
}

- (id)if_firstObjectPassingTest:()IntentsFoundation
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)if_objectsWithIntValue:()IntentsFoundation forKey:
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__NSArray_IntentsFoundation__if_objectsWithIntValue_forKey___block_invoke;
  v10[3] = &unk_2797E9950;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [self if_objectsPassingTest:v10];

  return v8;
}

- (id)if_objectsWithBoolValue:()IntentsFoundation forKey:
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__NSArray_IntentsFoundation__if_objectsWithBoolValue_forKey___block_invoke;
  v10[3] = &unk_2797E9928;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [self if_objectsPassingTest:v10];

  return v8;
}

- (id)if_objectsWithValue:()IntentsFoundation forKey:
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NSArray_IntentsFoundation__if_objectsWithValue_forKey___block_invoke;
  v12[3] = &unk_2797E9900;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [self if_objectsPassingTest:v12];

  return v10;
}

- (id)if_objectsPassingTest:()IntentsFoundation
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (v4[2](v4, v12))
        {
          [v5 setObject:v12 atIndexedSubscript:{v9++, v15}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)if_arrayByRemovingObjectsInArray:()IntentsFoundation
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectsInArray:v4];

  return v5;
}

- (id)if_arrayByRemovingObject:()IntentsFoundation
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObject:v4];

  return v5;
}

- (id)if_escapedComponentsJoinedByString:()IntentsFoundation forLocale:
{
  v6 = a3;
  v7 = a4;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __75__NSArray_IntentsFoundation__if_escapedComponentsJoinedByString_forLocale___block_invoke;
  v16 = &unk_2797E98D8;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [self if_compactMap:&v13];
  v11 = [v10 componentsJoinedByString:{v9, v13, v14, v15, v16}];

  return v11;
}

- (id)if_flatMap:()IntentsFoundation
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = v4[2](v4, *(*(&v16 + 1) + 8 * i));
        if (!v11)
        {

          v13 = 0;
          goto LABEL_14;
        }

        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:v12];
        }

        else
        {
          [v5 addObject:{v12, v16}];
        }
      }

      v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = [v5 copy];
LABEL_14:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)if_mapConcurrently:()IntentsFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__NSArray_IntentsFoundation__if_mapConcurrently___block_invoke;
  v8[3] = &unk_2797E98B0;
  v9 = v4;
  v5 = v4;
  v6 = _IFConcurrentArrayTransform(self, v8);

  return v6;
}

- (id)if_map:()IntentsFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__NSArray_IntentsFoundation__if_map___block_invoke;
  v8[3] = &unk_2797E98B0;
  v9 = v4;
  v5 = v4;
  v6 = _IFArrayTransform(self, v8);

  return v6;
}

+ (id)if_arrayWithObjectIfNonNil:()IntentsFoundation
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEB18];
    v4 = a3;
    v5 = [[v3 alloc] initWithObjects:{v4, 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end