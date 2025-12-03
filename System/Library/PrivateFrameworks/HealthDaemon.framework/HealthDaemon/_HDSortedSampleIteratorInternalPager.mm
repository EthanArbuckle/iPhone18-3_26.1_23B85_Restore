@interface _HDSortedSampleIteratorInternalPager
+ (void)getSamplesWithQueryDescriptor:(id)descriptor sortDescriptors:(id)descriptors anchor:(id)anchor limit:(unint64_t)limit includeDeletedObjects:(BOOL)objects profile:(id)profile resultsHandler:(id)handler;
- (_HDSortedSampleIteratorInternalPager)init;
@end

@implementation _HDSortedSampleIteratorInternalPager

- (_HDSortedSampleIteratorInternalPager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = NSStringFromSelector(a2);
  [v3 raise:*MEMORY[0x277CBE660] format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

+ (void)getSamplesWithQueryDescriptor:(id)descriptor sortDescriptors:(id)descriptors anchor:(id)anchor limit:(unint64_t)limit includeDeletedObjects:(BOOL)objects profile:(id)profile resultsHandler:(id)handler
{
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  anchorCopy = anchor;
  profileCopy = profile;
  handlerCopy = handler;
  if (limit - 101 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_HDSortedSampleIteratorInternalPager.mm" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"limit > 0 && limit <= 100"}];
  }

  limitCopy = limit;
  v64 = anchorCopy;
  if (anchorCopy)
  {
    v14 = [anchorCopy copy];
  }

  else
  {
    if (descriptorsCopy)
    {
      v15 = descriptorsCopy;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    v14 = [MEMORY[0x277CCD9F0] sortedQueryAnchorWithSortDescriptors:v15];
  }

  v110 = 0;
  v111 = &v110;
  v112 = 0x4812000000;
  v113 = __Block_byref_object_copy__107;
  v114 = __Block_byref_object_dispose__107;
  v115 = &unk_22929BC4D;
  memset(v116, 0, sizeof(v116));
  v103 = 0;
  v104 = &v103;
  v105 = 0x4812000000;
  v106 = __Block_byref_object_copy__310;
  v107 = __Block_byref_object_dispose__311;
  v108 = &unk_22929BC4D;
  memset(v109, 0, sizeof(v109));
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__313;
  v101 = __Block_byref_object_dispose__314;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v102 = v14;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v65 = v102;
  v20 = v102;
  while (1)
  {
    v92 = 0;
    v21 = profileCopy;
    v22 = descriptorCopy;
    v23 = v20;
    objc_opt_self();
    sampleTypes = [v22 sampleTypes];
    v25 = [HDSampleEntity entityEnumeratorWithTypes:sampleTypes profile:v21 error:&v92];

    if (v25)
    {
      querySortDescriptors = [v23 querySortDescriptors];
      [v25 setSortDescriptors:querySortDescriptors];

      encodingOptions = [v22 encodingOptions];
      v28 = encodingOptions;
      if (encodingOptions)
      {
        v29 = encodingOptions;
      }

      else
      {
        v29 = MEMORY[0x277CBEC10];
      }

      [v25 addEncodingOptionsFromDictionary:v29];

      restrictedSourceEntities = [v22 restrictedSourceEntities];
      [v25 setRestrictedSourceEntities:restrictedSourceEntities];

      [v25 setLimitCount:limitCopy - (((v17 - v16) >> 4) + ((v19 - v18) >> 4))];
      authorizationFilter = [v22 authorizationFilter];
      [v25 setAuthorizationFilter:authorizationFilter];

      samplePredicate = [v22 samplePredicate];
      [v25 setPredicate:samplePredicate];

      deletedObjectsPredicate = [v22 deletedObjectsPredicate];
      [v25 setDeletedObjectsPredicate:deletedObjectsPredicate];

      v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
      predicate = [v23 predicate];

      if (predicate)
      {
        predicate2 = [v23 predicate];
        [v34 addObject:predicate2];
      }

      v37 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v34];
      sampleTypes2 = [v22 sampleTypes];
      v39 = [v37 hk_filterRepresentationForDataTypes:sampleTypes2];

      filter = [v22 filter];

      if (filter)
      {
        v41 = MEMORY[0x277CCDD48];
        filter2 = [v22 filter];
        v43 = [v41 compoundFilterWithFilter:v39 otherFilter:filter2];

        v39 = v43;
      }

      [v25 setFilter:v39];
      objectID = [v23 objectID];
      [v25 setAnchor:objectID];

      v45 = v25;
    }

    v46 = v92;
    v47 = v46;
    if (!v25)
    {
      memset(v91, 0, sizeof(v91));
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(v91, v111[6], v111[7], (v111[7] - v111[6]) >> 4);
      memset(v90, 0, sizeof(v90));
      std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(v90, v104[6], v104[7], (v104[7] - v104[6]) >> 4);
      (*(handlerCopy + 2))(handlerCopy, 0, v91, v90, 0, 0, v47);
      v117[0] = v90;
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
      v117[0] = v91;
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
LABEL_34:

      v55 = v64;
      v56 = v65;
      goto LABEL_50;
    }

    v89 = 0;
    v80[3] = MEMORY[0x277D85DD0];
    v80[4] = 3221225472;
    v80[5] = __144___HDSortedSampleIteratorInternalPager_getSamplesWithQueryDescriptor_sortDescriptors_anchor_limit_includeDeletedObjects_profile_resultsHandler___block_invoke;
    v80[6] = &unk_278622858;
    v86 = a2;
    selfCopy = self;
    v82 = &v110;
    v83 = &v97;
    v48 = descriptorsCopy;
    objectsCopy = objects;
    v81 = v48;
    v84 = &v103;
    v85 = &v93;
    v49 = [v25 enumerateIncludingDeletedObjects:? error:? handler:?];
    v47 = v89;
    if ((v49 & 1) == 0)
    {
      memset(v80, 0, 24);
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(v80, v111[6], v111[7], (v111[7] - v111[6]) >> 4);
      memset(v79, 0, sizeof(v79));
      std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(v79, v104[6], v104[7], (v104[7] - v104[6]) >> 4);
      (*(handlerCopy + 2))(handlerCopy, 0, v80, v79, 0, 0, v47);
      v117[0] = v79;
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
      v117[0] = v80;
      std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
      goto LABEL_33;
    }

    v50 = limitCopy;
    if (((v104[7] - v104[6]) >> 4) + ((v111[7] - v111[6]) >> 4) < limitCopy)
    {
      if (objects || ![v98[5] canRelax])
      {
        v53 = v98[5];
        v98[5] = 0;
      }

      else
      {
        v51 = v98[5];
        v78 = 0;
        v52 = [MEMORY[0x277CCD9F0] sortedQueryAnchorRelaxingConstraintsWithAnchor:v51 error:&v78];
        v53 = v78;
        v54 = v98[5];
        v98[5] = v52;

        if (!v98[5])
        {
          memset(v77, 0, sizeof(v77));
          std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(v77, v111[6], v111[7], (v111[7] - v111[6]) >> 4);
          memset(v76, 0, sizeof(v76));
          std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(v76, v104[6], v104[7], (v104[7] - v104[6]) >> 4);
          (*(handlerCopy + 2))(handlerCopy, 0, v77, v76, 0, 0, v53);
          v117[0] = v76;
          std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
          v117[0] = v77;
          std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);

LABEL_33:
          goto LABEL_34;
        }
      }

      v50 = limitCopy;
    }

    v18 = v111[6];
    v19 = v111[7];
    v16 = v104[6];
    v17 = v104[7];
    v20 = v98[5];
    if (((v17 - v16) >> 4) + ((v19 - v18) >> 4) >= v50)
    {
      break;
    }

    if (!v20)
    {
      goto LABEL_37;
    }
  }

  if (v20)
  {
    v57 = 0;
    v58 = (v19 - v18) >> 4;
    v56 = v65;
  }

  else
  {
LABEL_37:
    if (v19 == v18)
    {
      v56 = v65;
      if (v17 == v16)
      {
        v60 = [v65 copy];
      }

      else
      {
        if (v48)
        {
          v61 = v48;
        }

        else
        {
          v61 = MEMORY[0x277CBEBF8];
        }

        v60 = [MEMORY[0x277CCD9F0] sortedQueryAnchorWithSortDescriptors:v61 objectID:v94[3]];
      }
    }

    else
    {
      if (v48)
      {
        v59 = v48;
      }

      else
      {
        v59 = MEMORY[0x277CBEBF8];
      }

      v56 = v65;
      v60 = [MEMORY[0x277CCD9F0] sortedQueryAnchorWithSortDescriptors:v59 followingSample:*(v19 - 8) objectID:v94[3]];
    }

    v62 = v98[5];
    v98[5] = v60;

    v18 = v111[6];
    v19 = v111[7];
    v58 = (v19 - v18) >> 4;
    v57 = 1;
  }

  memset(v75, 0, sizeof(v75));
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKSample * {__strong}>*,std::tuple<long long,HKSample * {__strong}>*>(v75, v18, v19, v58);
  memset(v74, 0, sizeof(v74));
  std::vector<std::tuple<long long,HKDeletedObject * {__strong}>>::__init_with_size[abi:ne200100]<std::tuple<long long,HKDeletedObject * {__strong}>*,std::tuple<long long,HKDeletedObject * {__strong}>*>(v74, v104[6], v104[7], (v104[7] - v104[6]) >> 4);
  (*(handlerCopy + 2))(handlerCopy, 1, v75, v74, v98[5], v57, 0);
  v117[0] = v74;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
  v117[0] = v75;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](v117);
  v55 = v64;
LABEL_50:
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);

  _Block_object_dispose(&v103, 8);
  v97 = v109;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v97);
  _Block_object_dispose(&v110, 8);
  v103 = v116;
  std::vector<std::tuple<long long,HKSample * {__strong}>>::__destroy_vector::operator()[abi:ne200100](&v103);
}

@end