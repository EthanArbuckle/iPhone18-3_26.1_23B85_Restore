@interface HDStatisticsCollectionCalculator
+ (id)calculatorForArchivedRepresentation:(id)representation error:(id *)error;
+ (id)calculatorForCategoryType:(id)type intervalCollection:(id)collection options:(unint64_t)options mergeStrategy:(unint64_t)strategy;
+ (id)calculatorForQuantityType:(id)type intervalCollection:(id)collection options:(unint64_t)options mergeStrategy:(unint64_t)strategy;
+ (id)calculatorForQuantityType:(id)type intervalCollection:(id)collection options:(unint64_t)options mergeStrategy:(unint64_t)strategy computationMethod:(int64_t)method;
- (BOOL)addSampleValue:(double)value startTime:(double)time endTime:(double)endTime sourceID:(int64_t)d error:(id *)error;
- (BOOL)performInitialStatisticsTransaction:(id)transaction error:(id *)error;
- (BOOL)setMaskedIntervals:(id)intervals error:(id *)error;
- (HDStatisticsCollectionCalculator)initWithCoder:(id)coder;
- (HDStatisticsCollectionCalculatorSourceOrderProvider)sourceOrderProvider;
- (id)bundleIdentifierForSourceID:(int64_t)d;
- (id)sourceForSourceID:(int64_t)d;
- (void)encodeWithCoder:(id)coder;
- (void)initForQuantityType:(void *)type intervalCollection:(uint64_t)collection options:(uint64_t)options mergeStrategy:(uint64_t)strategy computationMethod:;
- (void)orderSourceIDs:(void *)ds;
- (void)setStatisticsHandler:(id)handler;
@end

@implementation HDStatisticsCollectionCalculator

+ (id)calculatorForQuantityType:(id)type intervalCollection:(id)collection options:(unint64_t)options mergeStrategy:(unint64_t)strategy
{
  typeCopy = type;
  collectionCopy = collection;
  v11 = [HDStatisticsCollectionCalculator alloc];
  v12 = _HKStatisticsComputationMethodForQuantityType(typeCopy, options);
  v13 = [(HDStatisticsCollectionCalculator *)v11 initForQuantityType:typeCopy intervalCollection:collectionCopy options:options mergeStrategy:strategy computationMethod:v12];

  return v13;
}

- (void)initForQuantityType:(void *)type intervalCollection:(uint64_t)collection options:(uint64_t)options mergeStrategy:(uint64_t)strategy computationMethod:
{
  v10 = a2;
  typeCopy = type;
  if (self)
  {
    v75.receiver = self;
    v75.super_class = HDStatisticsCollectionCalculator;
    v12 = objc_msgSendSuper2(&v75, sel_init);
    self = v12;
    if (v12)
    {
      v12[3] = strategy;
      if (strategy > 4)
      {
        if (strategy <= 6)
        {
          if (strategy != 5)
          {
            v31 = v10;
            v32 = typeCopy;
            selfCopy = self;
            v34 = v31;
            v35 = v32;
            v36 = selfCopy;
            if ((collection & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          }

          v43 = v10;
          v44 = typeCopy;
          selfCopy2 = self;
          v46 = v43;
          v47 = v44;
          v48 = selfCopy2;
          if ((collection & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
          {
            operator new();
          }

          operator new();
        }

        switch(strategy)
        {
          case 7:
            v55 = v10;
            v56 = typeCopy;
            selfCopy3 = self;
            v58 = v55;
            v59 = v56;
            v60 = selfCopy3;
            if ((collection & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          case 8:
            v67 = v10;
            v68 = typeCopy;
            selfCopy4 = self;
            v70 = v67;
            v71 = v68;
            v72 = selfCopy4;
            if ((collection & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          case 9:
            v19 = v10;
            v20 = typeCopy;
            selfCopy5 = self;
            v22 = v19;
            v23 = v20;
            v24 = selfCopy5;
            if ((collection & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
        }
      }

      else
      {
        if (strategy > 1)
        {
          if (strategy != 2)
          {
            if (strategy != 3)
            {
              v13 = v10;
              v14 = typeCopy;
              selfCopy6 = self;
              v16 = v13;
              v17 = v14;
              v18 = selfCopy6;
              if ((collection & 0x40) == 0)
              {
                if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
                {
                  operator new();
                }

                operator new();
              }

              if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
              {
                operator new();
              }

              operator new();
            }

            v61 = v10;
            v62 = typeCopy;
            selfCopy7 = self;
            v64 = v61;
            v65 = v62;
            v66 = selfCopy7;
            if ((collection & 0x40) == 0)
            {
              if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
              {
                operator new();
              }

              operator new();
            }

            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          }

          v49 = v10;
          v50 = typeCopy;
          selfCopy8 = self;
          v52 = v49;
          v53 = v50;
          v54 = selfCopy8;
          if ((collection & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
          {
            operator new();
          }

          operator new();
        }

        if (!strategy)
        {
          v37 = v10;
          v38 = typeCopy;
          selfCopy9 = self;
          v40 = v37;
          v41 = v38;
          v42 = selfCopy9;
          if ((collection & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
          {
            operator new();
          }

          operator new();
        }

        if (strategy == 1)
        {
          v25 = v10;
          v26 = typeCopy;
          selfCopy10 = self;
          v28 = v25;
          v29 = v26;
          v30 = selfCopy10;
          if ((collection & 0x40) == 0)
          {
            if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
            {
              operator new();
            }

            operator new();
          }

          if ((_HKStatisticsOptionBaselineRelativeQuantities() & collection) != 0)
          {
            operator new();
          }

          operator new();
        }
      }

      objc_storeWeak((v12[1] + 8), v12);
      v73 = self[4];
      self[4] = MEMORY[0x277CBEBF8];
    }
  }

  return self;
}

+ (id)calculatorForCategoryType:(id)type intervalCollection:(id)collection options:(unint64_t)options mergeStrategy:(unint64_t)strategy
{
  typeCopy = type;
  collectionCopy = collection;
  countUnit = [MEMORY[0x277CCDAB0] countUnit];
  v13 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:typeCopy aggregationStyle:1 canonicalUnit:countUnit];

  v14 = [self calculatorForQuantityType:v13 intervalCollection:collectionCopy options:options mergeStrategy:strategy];

  return v14;
}

+ (id)calculatorForQuantityType:(id)type intervalCollection:(id)collection options:(unint64_t)options mergeStrategy:(unint64_t)strategy computationMethod:(int64_t)method
{
  typeCopy = type;
  collectionCopy = collection;
  v13 = [[HDStatisticsCollectionCalculator alloc] initForQuantityType:typeCopy intervalCollection:collectionCopy options:options mergeStrategy:strategy computationMethod:method];

  return v13;
}

- (BOOL)setMaskedIntervals:(id)intervals error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  v7 = [intervalsCopy copy];
  maskedIntervals = self->_maskedIntervals;
  self->_maskedIntervals = v7;

  __p = 0uLL;
  v29 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = intervalsCopy;
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
        startDate = [v13 startDate];
        [startDate timeIntervalSinceReferenceDate];
        v16 = v15;
        endDate = [v13 endDate];
        [endDate timeIntervalSinceReferenceDate];
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

  v21 = (*(*self->_implementation.__ptr_ + 64))(self->_implementation.__ptr_, &__p, error);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)setStatisticsHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [handlerCopy copy];
  statisticsHandler = self->_statisticsHandler;
  self->_statisticsHandler = v5;

  if (handlerCopy)
  {
    objc_initWeak(&location, self);
    ptr = self->_implementation.__ptr_;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HDStatisticsCollectionCalculator_setStatisticsHandler___block_invoke;
    v8[3] = &unk_278629320;
    v9 = handlerCopy;
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

- (BOOL)addSampleValue:(double)value startTime:(double)time endTime:(double)endTime sourceID:(int64_t)d error:(id *)error
{
  *v13 = value;
  *&v13[1] = time;
  *&v13[2] = endTime;
  v13[3] = d;
  v14 = 1;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v15 = v11 <= endTime;

  return (*(*self->_implementation.__ptr_ + 104))(self->_implementation.__ptr_, v13, error);
}

- (BOOL)performInitialStatisticsTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  ptr = self->_implementation.__ptr_;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__HDStatisticsCollectionCalculator_performInitialStatisticsTransaction_error___block_invoke;
  v11[3] = &unk_278629348;
  v11[4] = self;
  v12 = transactionCopy;
  v8 = *(*ptr + 112);
  v9 = transactionCopy;
  LOBYTE(error) = v8(ptr, v11, error);

  return error;
}

uint64_t __78__HDStatisticsCollectionCalculator_performInitialStatisticsTransaction_error___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 8) + 120))(*(*(a1 + 32) + 8));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:*(self->_implementation.__ptr_ + 2) forKey:@"quantity_type"];
  [coderCopy encodeInteger:self->_computationMethod forKey:@"computation_method"];
  v4 = (*(*self->_implementation.__ptr_ + 32))(self->_implementation.__ptr_);
  [coderCopy encodeObject:v4 forKey:@"date_interval"];

  [coderCopy encodeInteger:*(self->_implementation.__ptr_ + 3) forKey:@"options"];
  [coderCopy encodeInteger:*(self->_implementation.__ptr_ + 4) forKey:@"merge_strategy"];
  [coderCopy encodeObject:*(self->_implementation.__ptr_ + 5) forKey:@"interval_collection"];
  (*(*self->_implementation.__ptr_ + 16))(self->_implementation.__ptr_);
  [coderCopy encodeDouble:@"merge_granularity" forKey:?];
  (*(*self->_implementation.__ptr_ + 152))(self->_implementation.__ptr_, coderCopy);
}

- (HDStatisticsCollectionCalculator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"quantity_type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interval_collection"];
  v7 = [coderCopy decodeIntegerForKey:@"options"];
  v8 = [coderCopy decodeIntegerForKey:@"merge_strategy"];
  v9 = _HKStatisticsComputationMethodForQuantityType(v5, v7);
  if ([coderCopy containsValueForKey:@"computation_method"])
  {
    v9 = [coderCopy decodeIntegerForKey:@"computation_method"];
  }

  v10 = [objc_opt_class() calculatorForQuantityType:v5 intervalCollection:v6 options:v7 mergeStrategy:v8 computationMethod:v9];

  if (v10)
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date_interval"];
    if (v11)
    {
      [v10 setDateInterval:v11];
    }

    [coderCopy decodeDoubleForKey:@"merge_granularity"];
    [v10 setMergeGranularity:?];
    (*(**(v10 + 8) + 160))(*(v10 + 8), coderCopy);
  }

  return v10;
}

+ (id)calculatorForArchivedRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:representationCopy error:error];

  return v6;
}

- (id)bundleIdentifierForSourceID:(int64_t)d
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceOrderProvider);
  v5 = [WeakRetained sourceForSourceID:d];
  bundleIdentifier = [v5 bundleIdentifier];

  return bundleIdentifier;
}

- (id)sourceForSourceID:(int64_t)d
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceOrderProvider);
  v5 = [WeakRetained sourceForSourceID:d];

  return v5;
}

- (void)orderSourceIDs:(void *)ds
{
  while (2)
  {
    v243 = a2;
    v245 = a2 - 1;
    v240 = a2 - 3;
    v241 = a2 - 2;
    selfCopy6 = self;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = a2 - selfCopy6;
          self = selfCopy6;
          if (v9 > 2)
          {
            v10 = selfCopy6;
            switch(v9)
            {
              case 3:

                std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(selfCopy6, selfCopy6 + 1, v245, ds);
                return;
              case 4:

                std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(selfCopy6, selfCopy6 + 1, selfCopy6 + 2, v245, ds);
                return;
              case 5:

                std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(selfCopy6, selfCopy6 + 1, selfCopy6 + 2, selfCopy6 + 3, v245, ds);
                return;
            }
          }

          else
          {
            if (v9 < 2)
            {
              return;
            }

            v10 = selfCopy6;
            if (v9 == 2)
            {
              v113 = *selfCopy6;
              v114 = *ds;
              v115 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a2 - 1)];
              v116 = [v114 indexOfObject:v115];
              v117 = *ds;
              v118 = [MEMORY[0x277CCABB0] numberWithLongLong:v113];
              v119 = [v117 indexOfObject:v118];

              if (v116 < v119)
              {
                v120 = *self;
                *self = *(a2 - 1);
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
                v125 = selfCopy6;
                do
                {
                  v127 = *v125;
                  v126 = v125[1];
                  v125 = v121;
                  v128 = *ds;
                  v129 = [MEMORY[0x277CCABB0] numberWithLongLong:{v126, v240}];
                  v130 = [v128 indexOfObject:v129];
                  v131 = *ds;
                  v132 = [MEMORY[0x277CCABB0] numberWithLongLong:v127];
                  v133 = [v131 indexOfObject:v132];

                  if (v130 < v133)
                  {
                    v134 = *v125;
                    v135 = v124;
                    while (1)
                    {
                      *(self + v135 + 8) = *(self + v135);
                      if (!v135)
                      {
                        break;
                      }

                      v136 = *(self + v135 - 8);
                      v137 = *ds;
                      v138 = [MEMORY[0x277CCABB0] numberWithLongLong:v134];
                      v139 = [v137 indexOfObject:v138];
                      v140 = *ds;
                      v141 = [MEMORY[0x277CCABB0] numberWithLongLong:v136];
                      v142 = [v140 indexOfObject:v141];

                      v135 -= 8;
                      if (v139 >= v142)
                      {
                        selfCopy2 = (self + v135 + 8);
                        goto LABEL_83;
                      }
                    }

                    selfCopy2 = self;
LABEL_83:
                    *selfCopy2 = v134;
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
                v223 = *self;
                v224 = v121;
                v225 = *ds;
                v226 = [MEMORY[0x277CCABB0] numberWithLongLong:{self[1], v240}];
                v227 = [v225 indexOfObject:v226];
                v228 = *ds;
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
                    v234 = *ds;
                    v235 = [MEMORY[0x277CCABB0] numberWithLongLong:v231];
                    v236 = [v234 indexOfObject:v235];
                    v237 = *ds;
                    v238 = [MEMORY[0x277CCABB0] numberWithLongLong:v233];
                    v239 = [v237 indexOfObject:v238];

                    --v232;
                  }

                  while (v236 < v239);
                  *v232 = v231;
                  a2 = v243;
                }

                self = v224;
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
              v252 = a2 - selfCopy6;
              v255 = v144;
              selfCopy4 = selfCopy6;
              do
              {
                v146 = v144;
                if (v255 >= v144)
                {
                  v147 = (2 * v144) | 1;
                  v148 = &selfCopy4[v147];
                  v149 = 2 * v144 + 2;
                  v242 = v144;
                  if (v149 < v9)
                  {
                    v150 = v148;
                    v152 = v148 + 1;
                    v151 = v148[1];
                    v153 = *ds;
                    v154 = [MEMORY[0x277CCABB0] numberWithLongLong:*v148];
                    v155 = [v153 indexOfObject:v154];
                    v156 = *ds;
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

                  selfCopy4 = self;
                  v159 = &self[v146];
                  v160 = v148;
                  v161 = *v159;
                  v162 = *ds;
                  v163 = [MEMORY[0x277CCABB0] numberWithLongLong:{*v148, v240}];
                  v164 = [v162 indexOfObject:v163];
                  v165 = *ds;
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
                      v170 = &self[v169];
                      v147 = 2 * v147 + 2;
                      if (v147 >= v9)
                      {
                        v147 = v169;
                      }

                      else
                      {
                        v172 = v170 + 1;
                        v171 = v170[1];
                        v173 = *ds;
                        v174 = [MEMORY[0x277CCABB0] numberWithLongLong:*v170];
                        v175 = [v173 indexOfObject:v174];
                        v176 = *ds;
                        v177 = [MEMORY[0x277CCABB0] numberWithLongLong:v171];
                        v178 = [v176 indexOfObject:v177];

                        v170 = &self[v169];
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
                      v179 = *ds;
                      v180 = [MEMORY[0x277CCABB0] numberWithLongLong:*v170];
                      v181 = [v179 indexOfObject:v180];
                      v182 = *ds;
                      v183 = [MEMORY[0x277CCABB0] numberWithLongLong:v248];
                      v184 = [v182 indexOfObject:v183];

                      v159 = v168;
                      v9 = v252;
                    }

                    while (v181 >= v184);
                    *v168 = v248;
                    selfCopy4 = self;
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
                selfCopy5 = self;
                v244 = v185;
                v246 = *self;
                v188 = (v9 - 2) >> 1;
                v253 = v9;
                v249 = v188;
                do
                {
                  v189 = &selfCopy5[v186];
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
                    v195 = *ds;
                    v196 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v193 - 1)];
                    v197 = [v195 indexOfObject:v196];
                    v198 = *ds;
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

                  *selfCopy5 = *v190;
                  selfCopy5 = v190;
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
                  v202 = (v190 - self + 8) >> 3;
                  v203 = v202 < 2;
                  v204 = v202 - 2;
                  if (!v203)
                  {
                    v205 = v204 >> 1;
                    v206 = &self[v204 >> 1];
                    v207 = v190;
                    v208 = *v190;
                    v209 = *ds;
                    v210 = [MEMORY[0x277CCABB0] numberWithLongLong:*v206];
                    v211 = [v209 indexOfObject:v210];
                    v212 = *ds;
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
                        v206 = &self[v205];
                        v217 = *ds;
                        v218 = [MEMORY[0x277CCABB0] numberWithLongLong:*v206];
                        v219 = [v217 indexOfObject:v218];
                        v220 = *ds;
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
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(&v10[v9 >> 1], v10, v245, ds);
          }

          else
          {
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v10, &v10[v9 >> 1], v245, ds);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v10 + 1, v12 - 1, v241, ds);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v10 + 2, &v10[v11 + 1], v240, ds);
            std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,0>(v12 - 1, v12, &v10[v11 + 1], ds);
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
          v15 = *ds;
          v16 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v10 - 1)];
          v17 = [v15 indexOfObject:v16];
          v18 = *ds;
          v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
          v20 = [v18 indexOfObject:v19];

          if (v17 < v20)
          {
            break;
          }

          v65 = *v10;
          v66 = *v245;
          v67 = *ds;
          v68 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
          v69 = [v67 indexOfObject:v68];
          v70 = *ds;
          v71 = [MEMORY[0x277CCABB0] numberWithLongLong:v66];
          v72 = [v70 indexOfObject:v71];

          v73 = v69 >= v72;
          selfCopy6 = self;
          if (v73)
          {
            v81 = self + 1;
            do
            {
              selfCopy6 = v81;
              if (v81 >= a2)
              {
                break;
              }

              v82 = *v81;
              v83 = *ds;
              v84 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
              v85 = [v83 indexOfObject:v84];
              v86 = *ds;
              v87 = [MEMORY[0x277CCABB0] numberWithLongLong:v82];
              v88 = [v86 indexOfObject:v87];

              v81 = selfCopy6 + 1;
            }

            while (v85 >= v88);
          }

          else
          {
            do
            {
              v74 = selfCopy6[1];
              ++selfCopy6;
              v75 = *ds;
              v76 = [MEMORY[0x277CCABB0] numberWithLongLong:{v65, v240}];
              v77 = [v75 indexOfObject:v76];
              v78 = *ds;
              v79 = [MEMORY[0x277CCABB0] numberWithLongLong:v74];
              v80 = [v78 indexOfObject:v79];
            }

            while (v77 >= v80);
          }

          v89 = a2;
          if (selfCopy6 < a2)
          {
            v89 = a2;
            do
            {
              v90 = *--v89;
              v91 = *ds;
              v92 = [MEMORY[0x277CCABB0] numberWithLongLong:{v65, v240}];
              v93 = [v91 indexOfObject:v92];
              v94 = *ds;
              v95 = [MEMORY[0x277CCABB0] numberWithLongLong:v90];
              v96 = [v94 indexOfObject:v95];
            }

            while (v93 < v96);
          }

          while (selfCopy6 < v89)
          {
            v97 = *selfCopy6;
            *selfCopy6 = *v89;
            *v89 = v97;
            do
            {
              v98 = selfCopy6[1];
              ++selfCopy6;
              v99 = *ds;
              v100 = [MEMORY[0x277CCABB0] numberWithLongLong:{v65, v240}];
              v101 = [v99 indexOfObject:v100];
              v102 = *ds;
              v103 = [MEMORY[0x277CCABB0] numberWithLongLong:v98];
              v104 = [v102 indexOfObject:v103];
            }

            while (v101 >= v104);
            do
            {
              v105 = *--v89;
              v106 = *ds;
              v107 = [MEMORY[0x277CCABB0] numberWithLongLong:v65];
              v108 = [v106 indexOfObject:v107];
              v109 = *ds;
              v110 = [MEMORY[0x277CCABB0] numberWithLongLong:v105];
              v111 = [v109 indexOfObject:v110];
            }

            while (v108 < v111);
          }

          v112 = selfCopy6 - 1;
          if (selfCopy6 - 1 != self)
          {
            *self = *v112;
          }

          a5 = 0;
          *v112 = v65;
          a4 = v254;
        }

        v21 = 0;
        v22 = *v10;
        do
        {
          v23 = *ds;
          v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{v10[v21 + 1], v240}];
          v25 = [v23 indexOfObject:v24];
          v26 = *ds;
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
            v40 = *ds;
            v41 = [MEMORY[0x277CCABB0] numberWithLongLong:v39];
            v42 = [v40 indexOfObject:v41];
            v43 = *ds;
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
            v33 = *ds;
            v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v32];
            v35 = [v33 indexOfObject:v34];
            v36 = *ds;
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
              v50 = *ds;
              v51 = [MEMORY[0x277CCABB0] numberWithLongLong:v49];
              v52 = [v50 indexOfObject:v51];
              v53 = *ds;
              v54 = [MEMORY[0x277CCABB0] numberWithLongLong:v22];
              v55 = [v53 indexOfObject:v54];
            }

            while (v52 < v55);
            do
            {
              v56 = *--v47;
              v57 = *ds;
              v58 = [MEMORY[0x277CCABB0] numberWithLongLong:v56];
              v59 = [v57 indexOfObject:v58];
              v60 = *ds;
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
        if (v63 != self)
        {
          *self = *v63;
        }

        *v63 = v22;
        if (v251 >= v30)
        {
          break;
        }

LABEL_37:
        std::__introsort<std::_ClassicAlgPolicy,[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *,false>(self, v63, ds, v254, a5 & 1);
        a5 = 0;
        selfCopy6 = v63 + 1;
      }

      v64 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *>(self, v63, ds);
      selfCopy6 = v63 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[HDStatisticsCollectionCalculator orderSourceIDs:]::$_0 &,long long *>(v63 + 1, a2, ds))
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