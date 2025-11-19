@interface MARelationCollectionFeatureExtractor
- (MARelationCollectionFeatureExtractor)initWithName:(id)a3 featureNames:(id)a4 relation:(id)a5 labelForEmptyRelation:(id)a6 labelForTargetBlock:(id)a7;
- (MARelationCollectionFeatureExtractor)initWithName:(id)a3 featureNames:(id)a4 relation:(id)a5 labelForTargetBlock:(id)a6;
- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5;
@end

@implementation MARelationCollectionFeatureExtractor

- (id)floatMatrixWithEntities:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v37 = a4;
  v35 = v8;
  if (![v37 isCancelledWithProgress:0.0])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v12)
    {
      v13 = *v53;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v53 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [v10 addObject:*(*(&v52 + 1) + 8 * i)];
        }

        v12 = [v11 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v12);
    }

    v40 = [v10 count];
    v15 = [(MARelationCollectionFeatureExtractor *)self featureNames];
    v38 = [v15 count];

    v16 = [(MAFloatMatrix *)MAMutableFloatMatrix zerosWithRows:v40 columns:v38];
    v17 = [v10 firstObject];
    v34 = [v17 graph];

    if (!v34)
    {
      v16 = v16;
      v9 = v16;
LABEL_46:

      goto LABEL_47;
    }

    *buf = 0;
    *&v62 = buf;
    *(&v62 + 1) = 0x2020000000;
    v63 = 0;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v10;
    v18 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    if (v18)
    {
      v20 = 0;
      v39 = 0;
      v42 = *v49;
      v21 = MEMORY[0x277D86220];
      *&v19 = 67109378;
      v33 = v19;
LABEL_15:
      v41 = v18;
      v22 = 0;
      while (1)
      {
        if (*v49 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [MANodeCollection nodesRelatedToNodes:*(*(&v48 + 1) + 8 * v22) withRelation:self->_relation, v33];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __87__MARelationCollectionFeatureExtractor_floatMatrixWithEntities_progressReporter_error___block_invoke;
        v43[3] = &unk_2797FDDC8;
        v43[4] = self;
        v45 = buf;
        v46 = a5;
        v16 = v16;
        v44 = v16;
        v47 = v20;
        [v23 enumerateNodesUsingBlock:v43];
        if (*a5)
        {
          v24 = [(MAFloatMatrix *)MAMutableFloatMatrix zerosWithRows:v40 columns:v38];

          v25 = 0;
          v26 = 6;
          v16 = v24;
        }

        else
        {
          if (![v23 count])
          {
            if (self->_labelForEmptyRelation)
            {
              v28 = [(MARelationCollectionFeatureExtractor *)self featureNameIndexCache];
              v29 = [v28 indexOfLabel:self->_labelForEmptyRelation];
              *(v62 + 24) = v29;

              v21 = MEMORY[0x277D86220];
              if (*(v62 + 24) != 0x7FFFFFFFFFFFFFFFLL)
              {
                LODWORD(v30) = 1.0;
                [v16 setFloat:v20 atRow:v30 column:?];
              }
            }
          }

          ++v20;
          if ((v39 & 1) != 0 || [v37 isCancelledWithProgress:v20 / v40])
          {
            v27 = v21;
            v26 = 1;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              *v56 = v33;
              v57 = 122;
              v58 = 2080;
              v59 = "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/photoanalysis/PhotosGraph/Modules/Matisse/Framework/Learning/Feature Extraction/MARelationFeatureExtractor.m";
              _os_log_impl(&dword_255870000, v27, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v56, 0x12u);
            }

            v25 = 0;
            v39 = 1;
          }

          else
          {
            v26 = 0;
            v39 = 0;
            v25 = 1;
          }
        }

        if (!v25)
        {
          break;
        }

        ++v22;
        v21 = MEMORY[0x277D86220];
        if (v41 == v22)
        {
          v18 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v18)
          {
            goto LABEL_15;
          }

          goto LABEL_36;
        }
      }

      if (v26 != 6 && v26)
      {
        goto LABEL_43;
      }

LABEL_36:
      if ((v39 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {

LABEL_40:
      if (![v37 isCancelledWithProgress:1.0])
      {
        v16 = v16;
        v9 = v16;
LABEL_45:
        _Block_object_dispose(buf, 8);
        goto LABEL_46;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v56 = 67109378;
      v57 = 125;
      v58 = 2080;
      v59 = "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/photoanalysis/PhotosGraph/Modules/Matisse/Framework/Learning/Feature Extraction/MARelationFeatureExtractor.m";
      _os_log_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v56, 0x12u);
    }

LABEL_43:
    v9 = 0;
    goto LABEL_45;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 66;
    LOWORD(v62) = 2080;
    *(&v62 + 2) = "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/photoanalysis/PhotosGraph/Modules/Matisse/Framework/Learning/Feature Extraction/MARelationFeatureExtractor.m";
    _os_log_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v9 = 0;
LABEL_47:

  v31 = *MEMORY[0x277D85DE8];

  return v9;
}

void __87__MARelationCollectionFeatureExtractor_floatMatrixWithEntities_progressReporter_error___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 labelForTargetBlock];
  v11 = (v7)[2](v7, v6, *(a1 + 56));

  if (**(a1 + 56))
  {
    *a3 = 1;
LABEL_3:
    v8 = v11;
    goto LABEL_4;
  }

  v8 = v11;
  if (v11)
  {
    v9 = [*(a1 + 32) featureNameIndexCache];
    *(*(*(a1 + 48) + 8) + 24) = [v9 indexOfLabel:v11];

    v8 = v11;
    if (*(*(*(a1 + 48) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
    {
      LODWORD(v10) = 1.0;
      [*(a1 + 40) setFloat:*(a1 + 64) atRow:v10 column:?];
      goto LABEL_3;
    }
  }

LABEL_4:
}

- (MARelationCollectionFeatureExtractor)initWithName:(id)a3 featureNames:(id)a4 relation:(id)a5 labelForEmptyRelation:(id)a6 labelForTargetBlock:(id)a7
{
  v13 = a6;
  v14 = [(MARelationCollectionFeatureExtractor *)self initWithName:a3 featureNames:a4 relation:a5 labelForTargetBlock:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_labelForEmptyRelation, a6);
  }

  return v15;
}

- (MARelationCollectionFeatureExtractor)initWithName:(id)a3 featureNames:(id)a4 relation:(id)a5 labelForTargetBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = MARelationCollectionFeatureExtractor;
  v15 = [(MARelationCollectionFeatureExtractor *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    v17 = [[MAIndexCache alloc] initWithLabels:v12];
    featureNameIndexCache = v16->_featureNameIndexCache;
    v16->_featureNameIndexCache = v17;

    objc_storeStrong(&v16->_relation, a5);
    v19 = _Block_copy(v14);
    labelForTargetBlock = v16->_labelForTargetBlock;
    v16->_labelForTargetBlock = v19;

    labelForEmptyRelation = v16->_labelForEmptyRelation;
    v16->_labelForEmptyRelation = 0;
  }

  return v16;
}

@end