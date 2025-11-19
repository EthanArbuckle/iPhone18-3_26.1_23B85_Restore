@interface HDSortedSampleIteratorInternalPager
@end

@implementation HDSortedSampleIteratorInternalPager

uint64_t __144___HDSortedSampleIteratorInternalPager_getSamplesWithQueryDescriptor_sortDescriptors_anchor_limit_includeDeletedObjects_profile_resultsHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v7 | v8)
  {
    if (v7)
    {
      v10 = *(*(a1 + 40) + 8);
      v12 = v10[7];
      v11 = v10[8];
      if (v12 >= v11)
      {
        v18 = v10[6];
        v19 = (v12 - v18) >> 4;
        if ((v19 + 1) >> 60)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v20 = v11 - v18;
        v21 = v20 >> 3;
        if (v20 >> 3 <= (v19 + 1))
        {
          v21 = v19 + 1;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        v57 = v10 + 6;
        v51 = v8;
        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>((v10 + 6), v22);
        }

        v23 = (16 * v19);
        *v23 = a4;
        v23[1] = v7;
        v25 = v10[6];
        v24 = v10[7];
        v26 = 16 * v19 + v25 - v24;
        if (v25 != v24)
        {
          v27 = v10[6];
          v28 = (v23 + v25 - v24);
          do
          {
            *v28 = *v27;
            v29 = v27[1];
            v27[1] = 0;
            v28[1] = v29;
            v27 += 2;
            v28 += 2;
          }

          while (v27 != v24);
          do
          {

            v25 += 16;
          }

          while (v25 != v24);
          v25 = v10[6];
        }

        v13 = v23 + 2;
        v10[6] = v26;
        v10[7] = v23 + 2;
        v30 = v10[8];
        v10[8] = 0;
        v55 = v25;
        v56 = v30;
        v53 = v25;
        v54 = v25;
        std::__split_buffer<std::tuple<long long,HKSample * {__strong}>>::~__split_buffer(&v53);
        v9 = v51;
      }

      else
      {
        *v12 = a4;
        v12[1] = v7;
        v13 = v12 + 2;
      }

      v10[7] = v13;
      v31 = [MEMORY[0x277CCD9F0] sortedQueryAnchorWithSortDescriptors:*(a1 + 32) followingSample:v7 objectID:a4];
LABEL_42:
      v46 = *(*(a1 + 48) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = v31;

      goto LABEL_43;
    }

    if (v8 && (*(a1 + 88) & 1) != 0)
    {
      v14 = *(*(a1 + 56) + 8);
      v16 = v14[7];
      v15 = v14[8];
      if (v16 >= v15)
      {
        v32 = v14[6];
        v33 = (v16 - v32) >> 4;
        if ((v33 + 1) >> 60)
        {
          std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
        }

        v34 = v15 - v32;
        v35 = v34 >> 3;
        if (v34 >> 3 <= (v33 + 1))
        {
          v35 = v33 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF0)
        {
          v36 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        v57 = v14 + 6;
        if (v36)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<long long,HKSample * {__strong}>>>((v14 + 6), v36);
        }

        v37 = (16 * v33);
        *v37 = a4;
        v52 = v8;
        v37[1] = v8;
        v39 = v14[6];
        v38 = v14[7];
        v40 = 16 * v33 + v39 - v38;
        if (v39 != v38)
        {
          v41 = v14[6];
          v42 = (v37 + v39 - v38);
          do
          {
            *v42 = *v41;
            v43 = v41[1];
            v41[1] = 0;
            v42[1] = v43;
            v41 += 2;
            v42 += 2;
          }

          while (v41 != v38);
          do
          {

            v39 += 16;
          }

          while (v39 != v38);
          v39 = v14[6];
        }

        v17 = v37 + 2;
        v14[6] = v40;
        v14[7] = v37 + 2;
        v44 = v14[8];
        v14[8] = 0;
        v55 = v39;
        v56 = v44;
        v53 = v39;
        v54 = v39;
        std::__split_buffer<std::tuple<long long,HKSample * {__strong}>>::~__split_buffer(&v53);
        v9 = v52;
      }

      else
      {
        *v16 = a4;
        v16[1] = v8;
        v17 = v16 + 2;
      }

      v14[7] = v17;
      if (*(a1 + 32))
      {
        v45 = *(a1 + 32);
      }

      else
      {
        v45 = MEMORY[0x277CBEBF8];
      }

      v31 = [MEMORY[0x277CCD9F0] sortedQueryAnchorWithSortDescriptors:v45 objectID:a4];
      goto LABEL_42;
    }
  }

  else
  {
    v50 = [MEMORY[0x277CCA890] currentHandler];
    [v50 handleFailureInMethod:*(a1 + 72) object:*(a1 + 80) file:@"_HDSortedSampleIteratorInternalPager.mm" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"sample != nil || deletedObject != nil"}];
  }

LABEL_43:
  v48 = *(*(a1 + 64) + 8);
  if (*(v48 + 24) < a4)
  {
    *(v48 + 24) = a4;
  }

  return 1;
}

@end