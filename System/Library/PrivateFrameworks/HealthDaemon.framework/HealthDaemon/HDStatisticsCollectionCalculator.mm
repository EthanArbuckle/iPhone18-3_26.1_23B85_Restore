@interface HDStatisticsCollectionCalculator
+ (id)calculatorForArchivedRepresentation:(id)a3 error:(id *)a4;
+ (id)calculatorForCategoryType:(id)a3 intervalCollection:(id)a4 options:(unint64_t)a5 mergeStrategy:(unint64_t)a6;
+ (id)calculatorForQuantityType:(id)a3 intervalCollection:(id)a4 options:(unint64_t)a5 mergeStrategy:(unint64_t)a6;
+ (id)calculatorForQuantityType:(id)a3 intervalCollection:(id)a4 options:(unint64_t)a5 mergeStrategy:(unint64_t)a6 computationMethod:(int64_t)a7;
- (BOOL)addSampleValue:(double)a3 startTime:(double)a4 endTime:(double)a5 sourceID:(int64_t)a6 error:(id *)a7;
- (BOOL)performInitialStatisticsTransaction:(id)a3 error:(id *)a4;
- (BOOL)setMaskedIntervals:(id)a3 error:(id *)a4;
- (HDStatisticsCollectionCalculator)initWithCoder:(id)a3;
- (HDStatisticsCollectionCalculatorSourceOrderProvider)sourceOrderProvider;
- (id)bundleIdentifierForSourceID:(int64_t)a3;
- (id)sourceForSourceID:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)initForQuantityType:(void *)a3 intervalCollection:(uint64_t)a4 options:(uint64_t)a5 mergeStrategy:(uint64_t)a6 computationMethod:;
- (void)orderSourceIDs:(void *)a3;
- (void)setStatisticsHandler:(id)a3;
@end

@implementation HDStatisticsCollectionCalculator

+ (id)calculatorForQuantityType:(id)a3 intervalCollection:(id)a4 options:(unint64_t)a5 mergeStrategy:(unint64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [HDStatisticsCollectionCalculator alloc];
  v12 = _HKStatisticsComputationMethodForQuantityType(v9, a5);
  v13 = [(HDStatisticsCollectionCalculator *)v11 initForQuantityType:v9 intervalCollection:v10 options:a5 mergeStrategy:a6 computationMethod:v12];

  return v13;
}

- (void)initForQuantityType:(void *)a3 intervalCollection:(uint64_t)a4 options:(uint64_t)a5 mergeStrategy:(uint64_t)a6 computationMethod:
{
  v10 = a2;
  v11 = a3;
  if (a1)
  {
    v75.receiver = a1;
    v75.super_class = HDStatisticsCollectionCalculator;
    v12 = objc_msgSendSuper2(&v75, sel_init);
    a1 = v12;
    if (v12)
    {
      v12[3] = a6;
      if (a6 > 4)
      {
        if (a6 <= 6)
        {
          if (a6 != 5)
          {
            v31 = v10;
            v32 = v11;
            v33 = a1;
            v34 = v31;
            v35 = v32;
            v36 = v33;
            if ((a4 & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          }

          v43 = v10;
          v44 = v11;
          v45 = a1;
          v46 = v43;
          v47 = v44;
          v48 = v45;
          if ((a4 & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
          {
            operator new();
          }

          operator new();
        }

        switch(a6)
        {
          case 7:
            v55 = v10;
            v56 = v11;
            v57 = a1;
            v58 = v55;
            v59 = v56;
            v60 = v57;
            if ((a4 & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          case 8:
            v67 = v10;
            v68 = v11;
            v69 = a1;
            v70 = v67;
            v71 = v68;
            v72 = v69;
            if ((a4 & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          case 9:
            v19 = v10;
            v20 = v11;
            v21 = a1;
            v22 = v19;
            v23 = v20;
            v24 = v21;
            if ((a4 & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
        }
      }

      else
      {
        if (a6 > 1)
        {
          if (a6 != 2)
          {
            if (a6 != 3)
            {
              v13 = v10;
              v14 = v11;
              v15 = a1;
              v16 = v13;
              v17 = v14;
              v18 = v15;
              if ((a4 & 0x40) == 0)
              {
                if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
                {
                  operator new();
                }

                operator new();
              }

              if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
              {
                operator new();
              }

              operator new();
            }

            v61 = v10;
            v62 = v11;
            v63 = a1;
            v64 = v61;
            v65 = v62;
            v66 = v63;
            if ((a4 & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          }

          v49 = v10;
          v50 = v11;
          v51 = a1;
          v52 = v49;
          v53 = v50;
          v54 = v51;
          if ((a4 & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
          {
            operator new();
          }

          operator new();
        }

        if (!a6)
        {
          v37 = v10;
          v38 = v11;
          v39 = a1;
          v40 = v37;
          v41 = v38;
          v42 = v39;
          if ((a4 & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
          {
            operator new();
          }

          operator new();
        }

        if (a6 == 1)
        {
          v25 = v10;
          v26 = v11;
          v27 = a1;
          v28 = v25;
          v29 = v26;
          v30 = v27;
          if ((a4 & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & a4) != 0)
          {
            operator new();
          }

          operator new();
        }
      }

      objc_storeWeak((v12[1] + 8), v12);
      v73 = a1[4];
      a1[4] = MEMORY[0x277CBEBF8];
    }
  }

  return a1;
}

+ (id)calculatorForCategoryType:(id)a3 intervalCollection:(id)a4 options:(unint64_t)a5 mergeStrategy:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277CCDAB0] countUnit];
  v13 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v10 aggregationStyle:1 canonicalUnit:v12];

  v14 = [a1 calculatorForQuantityType:v13 intervalCollection:v11 options:a5 mergeStrategy:a6];

  return v14;
}

+ (id)calculatorForQuantityType:(id)a3 intervalCollection:(id)a4 options:(unint64_t)a5 mergeStrategy:(unint64_t)a6 computationMethod:(int64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = [[HDStatisticsCollectionCalculator alloc] initForQuantityType:v11 intervalCollection:v12 options:a5 mergeStrategy:a6 computationMethod:a7];

  return v13;
}

- (BOOL)setMaskedIntervals:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 copy];
  maskedIntervals = self->_maskedIntervals;
  self->_maskedIntervals = v7;

  __p = 0uLL;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 startDate];
        [v14 timeIntervalSinceReferenceDate];
        v16 = v15;
        v17 = [v13 endDate];
        [v17 timeIntervalSinceReferenceDate];
        if (v18 >= v16)
        {
          v19 = v16;
        }

        else
        {
          v19 = v18;
        }

        if (v16 >= v18)
        {
          v20 = v16;
        }

        else
        {
          v20 = v18;
        }

        HKIntervalMask<double>::_insertInterval(&__p, v19, v20);
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v10);
  }

  v21 = (*(*self->_implementation.__ptr_ + 64))(self->_implementation.__ptr_, &__p, a4);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)setStatisticsHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  statisticsHandler = self->_statisticsHandler;
  self->_statisticsHandler = v5;

  if (v4)
  {
    objc_initWeak(&location, self);
    ptr = self->_implementation.__ptr_;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HDStatisticsCollectionCalculator_setStatisticsHandler___block_invoke;
    v8[3] = &unk_278629320;
    v9 = v4;
    objc_copyWeak(&v10, &location);
    (*(*ptr + 72))(ptr, v8);
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(*self->_implementation.__ptr_ + 72))(self->_implementation.__ptr_, 0);
  }
}

void __57__HDStatisticsCollectionCalculator_setStatisticsHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3);
}

- (BOOL)addSampleValue:(double)a3 startTime:(double)a4 endTime:(double)a5 sourceID:(int64_t)a6 error:(id *)a7
{
  *v13 = a3;
  *&v13[1] = a4;
  *&v13[2] = a5;
  v13[3] = a6;
  v14 = 1;
  v10 = [MEMORY[0x277CBEAA8] distantFuture];
  [v10 timeIntervalSinceReferenceDate];
  v15 = v11 <= a5;

  return (*(*self->_implementation.__ptr_ + 104))(self->_implementation.__ptr_, v13, a7);
}

- (BOOL)performInitialStatisticsTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  ptr = self->_implementation.__ptr_;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HDStatisticsCollectionCalculator_performInitialStatisticsTransaction_error___block_invoke;
  v11[3] = &unk_278629348;
  v11[4] = self;
  v12 = v6;
  v8 = *(*ptr + 112);
  v9 = v6;
  LOBYTE(a4) = v8(ptr, v11, a4);

  return a4;
}

uint64_t __78__HDStatisticsCollectionCalculator_performInitialStatisticsTransaction_error___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 120))(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:*(self->_implementation.__ptr_ + 2) forKey:@"quantity_type"];
  [v5 encodeInteger:self->_computationMethod forKey:@"computation_method"];
  v4 = (*(*self->_implementation.__ptr_ + 32))(self->_implementation.__ptr_);
  [v5 encodeObject:v4 forKey:@"date_interval"];

  [v5 encodeInteger:*(self->_implementation.__ptr_ + 3) forKey:@"options"];
  [v5 encodeInteger:*(self->_implementation.__ptr_ + 4) forKey:@"merge_strategy"];
  [v5 encodeObject:*(self->_implementation.__ptr_ + 5) forKey:@"interval_collection"];
  (*(*self->_implementation.__ptr_ + 16))(self->_implementation.__ptr_);
  [v5 encodeDouble:@"merge_granularity" forKey:?];
  (*(*self->_implementation.__ptr_ + 152))(self->_implementation.__ptr_, v5);
}

- (HDStatisticsCollectionCalculator)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quantity_type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interval_collection"];
  v7 = [v4 decodeIntegerForKey:@"options"];
  v8 = [v4 decodeIntegerForKey:@"merge_strategy"];
  v9 = _HKStatisticsComputationMethodForQuantityType(v5, v7);
  if ([v4 containsValueForKey:@"computation_method"])
  {
    v9 = [v4 decodeIntegerForKey:@"computation_method"];
  }

  v10 = [objc_opt_class() calculatorForQuantityType:v5 intervalCollection:v6 options:v7 mergeStrategy:v8 computationMethod:v9];

  if (v10)
  {
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];
    if (v11)
    {
      [v10 setDateInterval:v11];
    }

    [v4 decodeDoubleForKey:@"merge_granularity"];
    [v10 setMergeGranularity:?];
    (*(**(v10 + 8) + 160))(*(v10 + 8), v4);
  }

  return v10;
}

+ (id)calculatorForArchivedRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:a4];

  return v6;
}

- (id)bundleIdentifierForSourceID:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceOrderProvider);
  v5 = [WeakRetained sourceForSourceID:a3];
  v6 = [v5 bundleIdentifier];

  return v6;
}

- (id)sourceForSourceID:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceOrderProvider);
  v5 = [WeakRetained sourceForSourceID:a3];

  return v5;
}

- (void)orderSourceIDs:(void *)a3
{
  while (2)
  {
    v243 = a2;
    v245 = a2 - 1;
    v240 = a2 - 3;
    v241 = a2 - 2;
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = a2 - v8;
          a1 = v8;
          if (v9 > 2)
          {
            v10 = v8;
            switch(v9)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v8, v8 + 1, v245, a3);
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v8, v8 + 1, v8 + 2, v245, a3);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v8, v8 + 1, v8 + 2, v8 + 3, v245, a3);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            v10 = v8;
            if (v9 == 2)
            {
              v113 = *v8;
              v114 = *a3;
              v115 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a2 - 1)];
              v116 = [v114 indexOfObject:v115];
              v117 = *a3;
              v118 = [MEMORY[0x277CCABB0] numberWithLongLong:v113];
              v119 = [v117 indexOfObject:v118];

              if (v116 < v119)
              {
                v120 = *a1;
                *a1 = *(a2 - 1);
                *(a2 - 1) = v120;
              }

              return;
            }
          }

          if (v9 <= 23)
          {
            v121 = v10 + 1;
            v122 = v10 == a2 || v121 == a2;
            v123 = v122;
            if (a5)
            {
              if ((v123 & 1) == 0)
              {
                v124 = 0;
                v125 = v8;
                do
                {
                  v127 = *v125;
                  v126 = v125[1];
                  v125 = v121;
                  v128 = *a3;
                  v129 = [MEMORY[0x277CCABB0] numberWithLongLong:{v126, v240}];
                  v130 = [v128 indexOfObject:v129];
                  v131 = *a3;
                  v132 = [MEMORY[0x277CCABB0] numberWithLongLong:v127];
                  v133 = [v131 indexOfObject:v132];

                  if (v130 < v133)
                  {
                    v134 = *v125;
                    v135 = v124;
                    while (1)
                    {
                      *(a1 + v135 + 8) = *(a1 + v135);
                      if (!v135)
                      {
                        break;
                      }

                      v136 = *(a1 + v135 - 8);
                      v137 = *a3;
                      v138 = [MEMORY[0x277CCABB0] numberWithLongLong:v134];
                      v139 = [v137 indexOfObject:v138];
                      v140 = *a3;
                      v141 = [MEMORY[0x277CCABB0] numberWithLongLong:v136];
                      v142 = [v140 indexOfObject:v141];

                      v135 -= 8;
                      if (v139 >= v142)
                      {
                        v143 = (a1 + v135 + 8);
                        goto LABEL_83;
                      }
                    }

                    v143 = a1;
LABEL_83:
                    *v143 = v134;
                    a2 = v243;
                  }

                  v121 = v125 + 1;
                  v124 += 8;
                }

                while (v125 + 1 != a2);
              }
            }

            else if ((v123 & 1) == 0)
            {
              do
              {
                v223 = *a1;
                v224 = v121;
                v225 = *a3;
                v226 = [MEMORY[0x277CCABB0] numberWithLongLong:{a1[1], v240}];
                v227 = [v225 indexOfObject:v226];
                v228 = *a3;
                v229 = [MEMORY[0x277CCABB0] numberWithLongLong:v223];
                v230 = [v228 indexOfObject:v229];

                if (v227 < v230)
                {
                  v231 = *v224;
                  v232 = v224;
                  do
                  {
                    v233 = *(v232 - 2);
                    *v232 = *(v232 - 1);
                    v234 = *a3;
                    v235 = [MEMORY[0x277CCABB0] numberWithLongLong:v231];
                    v236 = [v234 indexOfObject:v235];
                    v237 = *a3;
                    v238 = [MEMORY[0x277CCABB0] numberWithLongLong:v233];
                    v239 = [v237 indexOfObject:v238];

                    --v232;
                  }

                  while (v236 < v239);
                  *v232 = v231;
                  a2 = v243;
                }

                a1 = v224;
                v121 = v224 + 1;
              }

              while (v224 + 1 != a2);
            }

            return;
          }

          if (!a4)
          {
            if (v10 != a2)
            {
              v144 = (v9 - 2) >> 1;
              v252 = a2 - v8;
              v255 = v144;
              v145 = v8;
              do
              {
                v146 = v144;
                if (v255 >= v144)
                {
                  v147 = (2 * v144) | 1;
                  v148 = &v145[v147];
                  v149 = 2 * v144 + 2;
                  v242 = v144;
                  if (v149 < v9)
                  {
                    v150 = v148;
                    v152 = v148 + 1;
                    v151 = v148[1];
                    v153 = *a3;
                    v154 = [MEMORY[0x277CCABB0] numberWithLongLong:*v148];
                    v155 = [v153 indexOfObject:v154];
                    v156 = *a3;
                    v157 = [MEMORY[0x277CCABB0] numberWithLongLong:v151];
                    v158 = [v156 indexOfObject:v157];

                    if (v155 >= v158)
                    {
                      v148 = v150;
                    }

                    else
                    {
                      v148 = v152;
                    }

                    if (v155 < v158)
                    {
                      v147 = v149;
                    }

                    v146 = v242;
                  }

                  v145 = a1;
                  v159 = &a1[v146];
                  v160 = v148;
                  v161 = *v159;
                  v162 = *a3;
                  v163 = [MEMORY[0x277CCABB0] numberWithLongLong:{*v148, v240}];
                  v164 = [v162 indexOfObject:v163];
                  v165 = *a3;
                  v166 = [MEMORY[0x277CCABB0] numberWithLongLong:v161];
                  v167 = [v165 indexOfObject:v166];

                  v9 = v252;
                  v146 = v242;
                  if (v164 >= v167)
                  {
                    v248 = *v159;
                    do
                    {
                      v168 = v160;
                      *v159 = *v160;
                      if (v255 < v147)
                      {
                        break;
                      }

                      v169 = (2 * v147) | 1;
                      v170 = &a1[v169];
                      v147 = 2 * v147 + 2;
                      if (v147 >= v9)
                      {
                        v147 = v169;
                      }

                      else
                      {
                        v172 = v170 + 1;
                        v171 = v170[1];
                        v173 = *a3;
                        v174 = [MEMORY[0x277CCABB0] numberWithLongLong:*v170];
                        v175 = [v173 indexOfObject:v174];
                        v176 = *a3;
                        v177 = [MEMORY[0x277CCABB0] numberWithLongLong:v171];
                        v178 = [v176 indexOfObject:v177];

                        v170 = &a1[v169];
                        if (v175 >= v178)
                        {
                          v147 = v169;
                        }

                        else
                        {
                          v170 = v172;
                        }
                      }

                      v160 = v170;
                      v179 = *a3;
                      v180 = [MEMORY[0x277CCABB0] numberWithLongLong:*v170];
                      v181 = [v179 indexOfObject:v180];
                      v182 = *a3;
                      v183 = [MEMORY[0x277CCABB0] numberWithLongLong:v248];
                      v184 = [v182 indexOfObject:v183];

                      v159 = v168;
                      v9 = v252;
                    }

                    while (v181 >= v184);
                    *v168 = v248;
                    v145 = a1;
                    v146 = v242;
                  }
                }

                v144 = v146 - 1;
              }

              while (v146);
              v185 = v243;
              do
              {
                v186 = 0;
                v187 = a1;
                v244 = v185;
                v246 = *a1;
                v188 = (v9 - 2) >> 1;
                v253 = v9;
                v249 = v188;
                do
                {
                  v189 = &v187[v186];
                  v190 = v189 + 1;
                  v191 = (2 * v186) | 1;
                  v192 = 2 * v186 + 2;
                  if (v192 >= v9)
                  {
                    v186 = (2 * v186) | 1;
                  }

                  else
                  {
                    v256 = v189 + 1;
                    v194 = v189[2];
                    v193 = v189 + 2;
                    v195 = *a3;
                    v196 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v193 - 1)];
                    v197 = [v195 indexOfObject:v196];
                    v198 = *a3;
                    v199 = [MEMORY[0x277CCABB0] numberWithLongLong:v194];
                    v200 = [v198 indexOfObject:v199];

                    v9 = v253;
                    v190 = v256;
                    if (v197 >= v200)
                    {
                      v186 = v191;
                    }

                    else
                    {
                      v190 = v193;
                      v186 = v192;
                    }

                    v188 = v249;
                  }

                  *v187 = *v190;
                  v187 = v190;
                }

                while (v186 <= v188);
                v201 = v244 - 1;
                if (v190 == v244 - 1)
                {
                  v185 = v244 - 1;
                  *v190 = v246;
                }

                else
                {
                  *v190 = *v201;
                  v185 = v244 - 1;
                  *v201 = v246;
                  v202 = (v190 - a1 + 8) >> 3;
                  v203 = v202 < 2;
                  v204 = v202 - 2;
                  if (!v203)
                  {
                    v205 = v204 >> 1;
                    v206 = &a1[v204 >> 1];
                    v207 = v190;
                    v208 = *v190;
                    v209 = *a3;
                    v210 = [MEMORY[0x277CCABB0] numberWithLongLong:*v206];
                    v211 = [v209 indexOfObject:v210];
                    v212 = *a3;
                    v213 = [MEMORY[0x277CCABB0] numberWithLongLong:v208];
                    v214 = [v212 indexOfObject:v213];

                    v9 = v253;
                    if (v211 < v214)
                    {
                      v215 = v207;
                      v257 = *v207;
                      do
                      {
                        v216 = v206;
                        *v215 = *v206;
                        if (!v205)
                        {
                          break;
                        }

                        v205 = (v205 - 1) >> 1;
                        v206 = &a1[v205];
                        v217 = *a3;
                        v218 = [MEMORY[0x277CCABB0] numberWithLongLong:*v206];
                        v219 = [v217 indexOfObject:v218];
                        v220 = *a3;
                        v221 = [MEMORY[0x277CCABB0] numberWithLongLong:v257];
                        v222 = [v220 indexOfObject:v221];

                        v215 = v216;
                      }

                      while (v219 < v222);
                      v9 = v253;
                      *v216 = v257;
                    }
                  }
                }

                v203 = v9-- <= 2;
              }

              while (!v203);
            }

            return;
          }

          v11 = v9 >> 1;
          v12 = &v10[v9 >> 1];
          if (v9 < 0x81)
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(&v10[v9 >> 1], v10, v245, a3);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v10, &v10[v9 >> 1], v245, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v10 + 1, v12 - 1, v241, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v10 + 2, &v10[v11 + 1], v240, a3);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v12 - 1, v12, &v10[v11 + 1], a3);
            v13 = *v10;
            *v10 = *v12;
            *v12 = v13;
          }

          v254 = a4 - 1;
          if (a5)
          {
            break;
          }

          v14 = *v10;
          v15 = *a3;
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v10 - 1)];
          v17 = [v15 indexOfObject:v16];
          v18 = *a3;
          v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
          v20 = [v18 indexOfObject:v19];

          if (v17 < v20)
          {
            break;
          }

          v65 = *v10;
          v66 = *v245;
          v67 = *a3;
          v68 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
          v69 = [v67 indexOfObject:v68];
          v70 = *a3;
          v71 = [MEMORY[0x277CCABB0] numberWithLongLong:v66];
          v72 = [v70 indexOfObject:v71];

          v73 = v69 >= v72;
          v8 = a1;
          if (v73)
          {
            v81 = a1 + 1;
            do
            {
              v8 = v81;
              if (v81 >= a2)
              {
                break;
              }

              v82 = *v81;
              v83 = *a3;
              v84 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
              v85 = [v83 indexOfObject:v84];
              v86 = *a3;
              v87 = [MEMORY[0x277CCABB0] numberWithLongLong:v82];
              v88 = [v86 indexOfObject:v87];

              v81 = v8 + 1;
            }

            while (v85 >= v88);
          }

          else
          {
            do
            {
              v74 = v8[1];
              ++v8;
              v75 = *a3;
              v76 = [MEMORY[0x277CCABB0] numberWithLongLong:{v65, v240}];
              v77 = [v75 indexOfObject:v76];
              v78 = *a3;
              v79 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
              v80 = [v78 indexOfObject:v79];
            }

            while (v77 >= v80);
          }

          v89 = a2;
          if (v8 < a2)
          {
            v89 = a2;
            do
            {
              v90 = *--v89;
              v91 = *a3;
              v92 = [MEMORY[0x277CCABB0] numberWithLongLong:{v65, v240}];
              v93 = [v91 indexOfObject:v92];
              v94 = *a3;
              v95 = [MEMORY[0x277CCABB0] numberWithLongLong:v90];
              v96 = [v94 indexOfObject:v95];
            }

            while (v93 < v96);
          }

          while (v8 < v89)
          {
            v97 = *v8;
            *v8 = *v89;
            *v89 = v97;
            do
            {
              v98 = v8[1];
              ++v8;
              v99 = *a3;
              v100 = [MEMORY[0x277CCABB0] numberWithLongLong:{v65, v240}];
              v101 = [v99 indexOfObject:v100];
              v102 = *a3;
              v103 = [MEMORY[0x277CCABB0] numberWithLongLong:v98];
              v104 = [v102 indexOfObject:v103];
            }

            while (v101 >= v104);
            do
            {
              v105 = *--v89;
              v106 = *a3;
              v107 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
              v108 = [v106 indexOfObject:v107];
              v109 = *a3;
              v110 = [MEMORY[0x277CCABB0] numberWithLongLong:v105];
              v111 = [v109 indexOfObject:v110];
            }

            while (v108 < v111);
          }

          v112 = v8 - 1;
          if (v8 - 1 != a1)
          {
            *a1 = *v112;
          }

          a5 = 0;
          *v112 = v65;
          a4 = v254;
        }

        v21 = 0;
        v22 = *v10;
        do
        {
          v23 = *a3;
          v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{v10[v21 + 1], v240}];
          v25 = [v23 indexOfObject:v24];
          v26 = *a3;
          v27 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
          v28 = [v26 indexOfObject:v27];

          ++v21;
        }

        while (v25 < v28);
        v29 = &v10[v21];
        v30 = a2;
        v122 = v21 == 1;
        v31 = v29;
        if (v122)
        {
          v30 = a2;
          do
          {
            if (v31 >= v30)
            {
              break;
            }

            v39 = *--v30;
            v40 = *a3;
            v41 = [MEMORY[0x277CCABB0] numberWithLongLong:v39];
            v42 = [v40 indexOfObject:v41];
            v43 = *a3;
            v44 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
            v45 = [v43 indexOfObject:v44];
          }

          while (v42 >= v45);
        }

        else
        {
          do
          {
            v32 = *--v30;
            v33 = *a3;
            v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v32];
            v35 = [v33 indexOfObject:v34];
            v36 = *a3;
            v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
            v38 = [v36 indexOfObject:v37];
          }

          while (v35 >= v38);
        }

        v251 = v31;
        if (v31 >= v30)
        {
          v63 = v31 - 1;
        }

        else
        {
          v46 = v31;
          v47 = v30;
          do
          {
            v48 = *v46;
            *v46 = *v47;
            *v47 = v48;
            do
            {
              v49 = v46[1];
              ++v46;
              v50 = *a3;
              v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
              v52 = [v50 indexOfObject:v51];
              v53 = *a3;
              v54 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
              v55 = [v53 indexOfObject:v54];
            }

            while (v52 < v55);
            do
            {
              v56 = *--v47;
              v57 = *a3;
              v58 = [MEMORY[0x277CCABB0] numberWithLongLong:v56];
              v59 = [v57 indexOfObject:v58];
              v60 = *a3;
              v61 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
              v62 = [v60 indexOfObject:v61];
            }

            while (v59 >= v62);
          }

          while (v46 < v47);
          v63 = v46 - 1;
          a2 = v243;
        }

        a4 = v254;
        if (v63 != a1)
        {
          *a1 = *v63;
        }

        *v63 = v22;
        if (v251 >= v30)
        {
          break;
        }

LABEL_37:
        std::__introsort<std::_ClassicAlgPolicy,[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,false>(a1, v63, a3, v254, a5 & 1);
        a5 = 0;
        v8 = v63 + 1;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *>(a1, v63, a3);
      v8 = v63 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *>(v63 + 1, a2, a3))
      {
        break;
      }

      if (!v64)
      {
        goto LABEL_37;
      }
    }

    a2 = v63;
    if (!v64)
    {
      continue;
    }

    break;
  }
}

- (HDStatisticsCollectionCalculatorSourceOrderProvider)sourceOrderProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceOrderProvider);

  return WeakRetained;
}

@end