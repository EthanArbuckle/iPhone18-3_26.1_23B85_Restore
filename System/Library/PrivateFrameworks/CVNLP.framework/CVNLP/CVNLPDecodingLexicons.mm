@interface CVNLPDecodingLexicons
- (CVNLPDecodingLexicons)initWithLexicons:(id)lexicons;
- (CVNLPDecodingLexicons)initWithLexicons:(id)lexicons decodingWeight:(id)weight;
- (CVNLPDecodingLexicons)initWithLexicons:(id)lexicons decodingWeight:(id)weight lowerBoundLogProbability:(id)probability inputNormalizationFunction:(void *)function;
- (id)lexiconsForPriority:(unint64_t)priority;
- (id)packagedLexiconCursorsUsingTextDecodingContext:(id)context;
- (void)enumerateLexiconsSortedByPriorityWithBlock:(id)block;
@end

@implementation CVNLPDecodingLexicons

- (CVNLPDecodingLexicons)initWithLexicons:(id)lexicons
{
  lexiconsCopy = lexicons;
  v8 = objc_msgSend_defaultDecodingWeight(CVNLPInformationStream, v5, v6, v7);
  v12 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v9, v10, v11);
  v14 = objc_msgSend_initWithLexicons_decodingWeight_lowerBoundLogProbability_(self, v13, lexiconsCopy, v8, v12);

  return v14;
}

- (CVNLPDecodingLexicons)initWithLexicons:(id)lexicons decodingWeight:(id)weight
{
  lexiconsCopy = lexicons;
  weightCopy = weight;
  v11 = objc_msgSend_defaultLowerBoundLogProbability(CVNLPInformationStream, v8, v9, v10);
  v13 = objc_msgSend_initWithLexicons_decodingWeight_lowerBoundLogProbability_(self, v12, lexiconsCopy, weightCopy, v11);

  return v13;
}

- (CVNLPDecodingLexicons)initWithLexicons:(id)lexicons decodingWeight:(id)weight lowerBoundLogProbability:(id)probability inputNormalizationFunction:(void *)function
{
  lexiconsCopy = lexicons;
  weightCopy = weight;
  probabilityCopy = probability;
  v23.receiver = self;
  v23.super_class = CVNLPDecodingLexicons;
  v16 = [(CVNLPInformationStream *)&v23 initWithDecodingWeight:weightCopy lowerBoundLogProbability:probabilityCopy];
  if (v16)
  {
    v17 = objc_msgSend_allObjects(lexiconsCopy, v13, v14, v15);
    v20 = objc_msgSend_sortedArrayUsingComparator_(v17, v18, &unk_1F554FD58, v19);
    sortedLexicons = v16->_sortedLexicons;
    v16->_sortedLexicons = v20;

    v16->_inputNormalizationFunction = function;
  }

  return v16;
}

- (void)enumerateLexiconsSortedByPriorityWithBlock:(id)block
{
  v19 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_sortedLexicons;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      v13 = 0;
      blockCopy[2](blockCopy, v10, &v13);
      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v14, v18, 16);
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)lexiconsForPriority:(unint64_t)priority
{
  v5 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], a2, @"priority == %lu", v3, priority);
  v8 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, self->_sortedLexicons, v7);
  v11 = objc_msgSend_filteredSetUsingPredicate_(v8, v9, v5, v10);

  v12 = [CVNLPDecodingLexicons alloc];
  v16 = objc_msgSend_decodingWeight(self, v13, v14, v15);
  v18 = objc_msgSend_initWithLexicons_decodingWeight_(v12, v17, v11, v16);

  return v18;
}

- (id)packagedLexiconCursorsUsingTextDecodingContext:(id)context
{
  contextCopy = context;
  v8 = contextCopy;
  v24 = 0;
  v25 = &v24;
  v26 = 0x4812000000;
  v27 = sub_1D9DD5288;
  v28 = sub_1D9DD52AC;
  v29 = &unk_1D9DF809A;
  v31 = 0;
  v32 = 0;
  __p = 0;
  if (contextCopy)
  {
    contextCopy = objc_msgSend_activeSubstring(contextCopy, v5, v6, v7);
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1D9DD52C4;
  v20 = &unk_1E858E5E0;
  v9 = contextCopy;
  v21 = v9;
  selfCopy = self;
  v23 = &v24;
  objc_msgSend_enumerateLexiconsSortedByPriorityWithBlock_(self, v10, &v17, v11);
  v12 = [CVNLPLexiconCursors alloc];
  v15 = objc_msgSend_initWithSortedCursors_(v12, v13, (v25 + 6), v14, v17, v18, v19, v20);

  _Block_object_dispose(&v24, 8);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  return v15;
}

@end