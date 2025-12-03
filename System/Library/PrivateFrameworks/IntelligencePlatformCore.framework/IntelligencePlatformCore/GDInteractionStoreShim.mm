@interface GDInteractionStoreShim
+ (id)interactionFromCDInteraction:(id)interaction;
+ (id)interactionHistoryEnumeratorFromStore:(id)store batchSize:(unint64_t)size;
+ (id)interactionHistoryEnumeratorFromStore:(id)store predicate:(id)predicate sortDescriptor:(id)descriptor batchSize:(unint64_t)size;
+ (id)interactionHistoryEnumeratorWithBatchSize:(unint64_t)size;
+ (id)interactionHistoryEnumeratorWithPredicate:(id)predicate sortDescriptor:(id)descriptor batchSize:(unint64_t)size;
+ (id)interactionHistoryFromStore:(id)store;
@end

@implementation GDInteractionStoreShim

+ (id)interactionHistoryEnumeratorFromStore:(id)store predicate:(id)predicate sortDescriptor:(id)descriptor batchSize:(unint64_t)size
{
  descriptorCopy = descriptor;
  predicateCopy = predicate;
  storeCopy = store;
  v12 = [GDInteractionEnumeration alloc];
  v14 = objc_msgSend_initWithStore_predicate_sortDescriptor_batchSize_(v12, v13, storeCopy, predicateCopy, descriptorCopy, size);

  return v14;
}

+ (id)interactionHistoryEnumeratorFromStore:(id)store batchSize:(unint64_t)size
{
  storeCopy = store;
  v6 = [GDInteractionEnumeration alloc];
  v8 = objc_msgSend_initWithStore_batchSize_(v6, v7, storeCopy, size);

  return v8;
}

+ (id)interactionHistoryEnumeratorWithPredicate:(id)predicate sortDescriptor:(id)descriptor batchSize:(unint64_t)size
{
  v8 = MEMORY[0x1E69978F8];
  descriptorCopy = descriptor;
  predicateCopy = predicate;
  v14 = objc_msgSend_defaultDatabaseDirectory(v8, v11, v12, v13);
  v16 = objc_msgSend_storeWithDirectory_readOnly_(v8, v15, v14, 1);

  v18 = objc_msgSend_interactionHistoryEnumeratorFromStore_predicate_sortDescriptor_batchSize_(self, v17, v16, predicateCopy, descriptorCopy, size);

  return v18;
}

+ (id)interactionHistoryEnumeratorWithBatchSize:(unint64_t)size
{
  v6 = MEMORY[0x1E69978F8];
  v7 = objc_msgSend_defaultDatabaseDirectory(MEMORY[0x1E69978F8], a2, size, v3);
  v9 = objc_msgSend_storeWithDirectory_readOnly_(v6, v8, v7, 1);

  v11 = objc_msgSend_interactionHistoryEnumeratorFromStore_batchSize_(self, v10, v9, size);

  return v11;
}

+ (id)interactionHistoryFromStore:(id)store
{
  v45[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_predicateWithValue_(MEMORY[0x1E696AE18], v5, 1, v6);
  objc_autoreleasePoolPop(v4);
  v8 = objc_autoreleasePoolPush();
  v10 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v9, @"startDate", 1);
  objc_autoreleasePoolPop(v8);
  v11 = objc_autoreleasePoolPush();
  v45[0] = v10;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v45, 1);
  v41 = 0;
  v15 = objc_msgSend_queryInteractionsUsingPredicate_sortDescriptors_limit_offset_error_(storeCopy, v14, v7, v13, 10000, 0, &v41);
  v16 = v41;

  if (v15)
  {
    v36 = storeCopy;

    objc_autoreleasePoolPop(v11);
    v17 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = v15;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v37, v42, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v28 = objc_msgSend_interactionFromCDInteraction_(GDInteractionStoreShim, v21, *(*(&v37 + 1) + 8 * i), v22);
          if (v28)
          {
            objc_msgSend_addObject_(v17, v26, v28, v27);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v37, v42, 16);
      }

      while (v23);
    }

    v32 = objc_msgSend_copy(v17, v29, v30, v31);
    storeCopy = v36;
  }

  else
  {
    v33 = GDDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v16;
      _os_log_error_impl(&dword_1C43F8000, v33, OS_LOG_TYPE_ERROR, "GDInteractionStoreShim: interactionHistoryFromStore error: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v32 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)interactionFromCDInteraction:(id)interaction
{
  interactionCopy = interaction;
  v7 = objc_msgSend_sender(interactionCopy, v4, v5, v6);

  if (v7)
  {
    v11 = objc_msgSend_sender(interactionCopy, v8, v9, v10);
    v7 = sub_1C4EF7C74(GDInteractionStoreShim, v11);
  }

  v12 = objc_msgSend_recipients(interactionCopy, v8, v9, v10);
  v15 = objc_msgSend__pas_mappedArrayWithTransform_(v12, v13, &unk_1F4416018, v14);

  v16 = [GDInteraction alloc];
  v20 = objc_msgSend_startDate(interactionCopy, v17, v18, v19);
  v24 = objc_msgSend_endDate(interactionCopy, v21, v22, v23);
  v28 = objc_msgSend_bundleId(interactionCopy, v25, v26, v27);
  v32 = objc_msgSend_mechanism(interactionCopy, v29, v30, v31);
  v36 = objc_msgSend_direction(interactionCopy, v33, v34, v35);
  v40 = objc_msgSend_selfParticipantStatus(interactionCopy, v37, v38, v39);
  started = objc_msgSend_initWithStartDate_endDate_bundleId_mechanism_direction_sender_recipients_selfParticipantStatus_(v16, v41, v20, v24, v28, v32, v36, v7, v15, v40);

  return started;
}

@end