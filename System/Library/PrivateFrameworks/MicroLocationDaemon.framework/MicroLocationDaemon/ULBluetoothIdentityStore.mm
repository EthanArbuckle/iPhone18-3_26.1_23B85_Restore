@interface ULBluetoothIdentityStore
+ (unsigned)maxEntriesInTable;
- (BOOL)insertDataObjects:(const void *)objects;
- (id)insertDataObjects:;
- (uint64_t)insertDataObjects:;
- (vector<ULBluetoothIdentityDO,)fetchBtIdentityEntriesBetweenTimes:(ULBluetoothIdentityStore *)self toTime:(SEL)time;
- (void)fetchBtIdentityEntriesBetweenTimes:(uint64_t)times toTime:(int)time;
@end

@implementation ULBluetoothIdentityStore

+ (unsigned)maxEntriesInTable
{
  v2 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBluetoothIdentityTableMaxRows"];
  v5 = [defaultsDictionary objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v5 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71958 unsignedIntValue];
  }

  v7 = unsignedIntValue;

  return v7;
}

- (BOOL)insertDataObjects:(const void *)objects
{
  v7[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v7[0] = &unk_286A56020;
  v7[1] = &selfCopy;
  v7[3] = v7;
  inserted = ULDBUtils::insertDataObjects<ULBluetoothIdentityDO,ULBluetoothIdentityMO>(self, objects, v7);
  std::__function::__value_func<ULBluetoothIdentityMO * ()(ULBluetoothIdentityDO const&)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x277D85DE8];
  return inserted;
}

- (vector<ULBluetoothIdentityDO,)fetchBtIdentityEntriesBetweenTimes:(ULBluetoothIdentityStore *)self toTime:(SEL)time
{
  v31[1] = *MEMORY[0x277D85DE8];
  v9 = +[ULDefaultsSingleton shared];
  defaultsDictionary = [v9 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULDatabaseSelectionLimit"];
  v12 = [defaultsDictionary objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v12 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = [&unk_286A71940 unsignedIntValue];
  }

  v14 = unsignedIntValue;

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v15 = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  v17 = MEMORY[0x277CCAC30];
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  v20 = [v17 predicateWithFormat:@"%K > %@ && %K <= %@", @"lastSeenTimeStamp", v18, @"lastSeenTimeStamp", v19];
  [array addObject:v20];

  v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"lastSeenTimeStamp" ascending:0];
  v31[0] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [(ULBluetoothIdentityStore *)self _fetchBtIdentityEntriesByAndPredicates:array sortDescriptors:v22 andLimit:v14];
  std::vector<ULBluetoothIdentityDO>::__vdeallocate(&retstr->var0);
  *&retstr->var0 = v28;
  retstr->var2 = v29;
  v29 = 0;
  v28 = 0uLL;
  v30 = &v28;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](&v30);

  objc_autoreleasePoolPop(v15);
  var1 = retstr->var1;
  v24 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((var1 - retstr->var0) >> 3));
  if (var1 == retstr->var0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  std::__introsort<std::_ClassicAlgPolicy,[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,false>(retstr->var0, var1, v25, 1);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchBtIdentityEntriesBetweenTimes:(uint64_t)times toTime:(int)time
{
  v6 = a2;
  selfCopy = self;
  v199 = *MEMORY[0x277D85DE8];
  v191 = a2;
  selfCopy2 = self;
  while (1)
  {
    v8 = v6 - selfCopy;
    v9 = 0x8E38E38E38E38E39 * ((v6 - selfCopy) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        goto LABEL_232;
      }

      if (v9 == 2)
      {
        v191 = v6 - 9;
        if (*(v6 - 1) >= *(selfCopy + 64))
        {
          goto LABEL_232;
        }

        v91 = &selfCopy2;
        v92 = &v191;
        goto LABEL_231;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {
      *v197 = selfCopy;
      *&v198 = selfCopy + 72;
      *&v195 = v6 - 9;
      v95 = *(selfCopy + 136);
      v96 = *(v6 - 1);
      if (v95 >= *(selfCopy + 64))
      {
        if (v96 >= v95)
        {
          goto LABEL_232;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195);
        v93 = *(v198 + 64);
        v94 = *(*v197 + 64);
LABEL_229:
        if (v93 >= v94)
        {
          goto LABEL_232;
        }

        v91 = v197;
        v92 = &v198;
      }

      else
      {
        v91 = v197;
        if (v96 >= v95)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v197, &v198);
          if (*(v195 + 64) >= *(v198 + 64))
          {
            goto LABEL_232;
          }

          v91 = &v198;
        }

        v92 = &v195;
      }

LABEL_231:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v91, v92);
      goto LABEL_232;
    }

    if (v9 == 4)
    {
      v191 = v6 - 9;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(selfCopy, (selfCopy + 72), selfCopy + 144, (v6 - 9));
      goto LABEL_232;
    }

    if (v9 == 5)
    {
      break;
    }

LABEL_9:
    if (v8 <= 1727)
    {
      v97 = (selfCopy + 72);
      v99 = selfCopy == v6 || v97 == v6;
      if (time)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = selfCopy;
          do
          {
            v102 = v97;
            v103 = *(v101 + 136);
            if (v103 < *(v101 + 64))
            {
              v104 = *v97;
              *v197 = *(v101 + 113);
              v105 = *(v101 + 88);
              *&v195 = *(v101 + 96);
              *(&v195 + 7) = *(v101 + 103);
              v106 = *(v101 + 111);
              *(v101 + 88) = 0;
              *(v101 + 96) = 0;
              v107 = *(v101 + 112);
              *&v197[14] = *(v101 + 127);
              v187 = *(v101 + 135);
              *(v101 + 104) = 0;
              *(v101 + 112) = 0;
              *(v101 + 120) = 0;
              *(v101 + 128) = 0;
              v108 = v100;
              v198 = v104;
              while (1)
              {
                v109 = v108;
                v110 = selfCopy + v108;
                *(selfCopy + v108 + 72) = *(selfCopy + v108);
                if (*(selfCopy + v108 + 111) < 0)
                {
                  operator delete(*(v110 + 88));
                }

                *(v110 + 88) = *(v110 + 16);
                *(v110 + 104) = *(v110 + 32);
                *(v110 + 39) = 0;
                *(v110 + 16) = 0;
                if (*(v110 + 135) < 0)
                {
                  operator delete(*(v110 + 112));
                }

                v111 = selfCopy + v109;
                *(v110 + 112) = *(selfCopy + v109 + 40);
                v112 = *(selfCopy + v109 + 64);
                *(v110 + 128) = *(selfCopy + v109 + 56);
                *(v111 + 63) = 0;
                *(v111 + 40) = 0;
                *(v111 + 136) = v112;
                if (!v109)
                {
                  break;
                }

                v108 = v109 - 72;
                if (v103 >= *(v111 - 8))
                {
                  v113 = selfCopy + v109;
                  goto LABEL_154;
                }
              }

              v113 = selfCopy;
LABEL_154:
              *v113 = v198;
              if (*(v113 + 39) < 0)
              {
                operator delete(*(v111 + 16));
              }

              *(v111 + 16) = v105;
              v114 = selfCopy + v109;
              v115 = v195;
              *(v114 + 31) = *(&v195 + 7);
              *(v114 + 24) = v115;
              *(v111 + 39) = v106;
              if (*(v113 + 63) < 0)
              {
                operator delete(*(v111 + 40));
              }

              *(v111 + 40) = v107;
              v116 = *v197;
              *(v114 + 55) = *&v197[14];
              *(v114 + 41) = v116;
              *(v111 + 63) = v187;
              *(v113 + 64) = v103;
            }

            v97 = v102 + 9;
            v100 += 72;
            v101 = v102;
          }

          while (v102 + 9 != v6);
        }
      }

      else if (!v99)
      {
        v164 = (selfCopy + 136);
        do
        {
          v165 = v97;
          v166 = *(selfCopy + 136);
          if (v166 < *(selfCopy + 64))
          {
            v167 = *v97;
            *v197 = *(selfCopy + 113);
            v168 = *(selfCopy + 88);
            *&v195 = *(selfCopy + 96);
            *(&v195 + 7) = *(selfCopy + 103);
            v169 = *(selfCopy + 111);
            *(selfCopy + 88) = 0;
            *(selfCopy + 96) = 0;
            v170 = *(selfCopy + 112);
            *&v197[14] = *(selfCopy + 127);
            v171 = *(selfCopy + 135);
            *(selfCopy + 104) = 0;
            *(selfCopy + 112) = 0;
            *(selfCopy + 120) = 0;
            *(selfCopy + 128) = 0;
            v172 = v164;
            v198 = v167;
            do
            {
              *(v172 - 4) = *(v172 - 17);
              v173 = (v172 - 6);
              if (*(v172 - 25) < 0)
              {
                operator delete(*v173);
              }

              *v173 = *(v172 - 15);
              *(v172 - 4) = *(v172 - 13);
              *(v172 - 97) = 0;
              *(v172 - 120) = 0;
              v174 = (v172 - 3);
              if (*(v172 - 1) < 0)
              {
                operator delete(*v174);
              }

              *v174 = *(v172 - 6);
              *(v172 - 1) = *(v172 - 10);
              *(v172 - 73) = 0;
              *(v172 - 96) = 0;
              v175 = (v172 - 9);
              *v172 = *(v172 - 9);
              v176 = *(v172 - 18);
              v172 -= 9;
            }

            while (v166 < v176);
            *(v175 - 4) = v198;
            if (*(v175 - 25) < 0)
            {
              operator delete(*(v175 - 6));
            }

            *(v175 - 6) = v168;
            v177 = v195;
            *(v175 - 33) = *(&v195 + 7);
            *(v175 - 5) = v177;
            *(v175 - 25) = v169;
            if (*(v175 - 1) < 0)
            {
              operator delete(*(v175 - 3));
            }

            *(v175 - 24) = v170;
            v178 = *v197;
            *(v175 - 9) = *&v197[14];
            *(v175 - 23) = v178;
            *(v175 - 1) = v171;
            *v175 = v166;
          }

          v97 = v165 + 9;
          v164 += 9;
          selfCopy = v165;
        }

        while ((v165 + 72) != v6);
      }

      goto LABEL_232;
    }

    if (!times)
    {
      if (selfCopy != v6)
      {
        v117 = v10 >> 1;
        v118 = v10 >> 1;
        do
        {
          v119 = v118;
          if (v117 >= v118)
          {
            v120 = (2 * v118) | 1;
            v121 = selfCopy + 72 * v120;
            if (2 * v119 + 2 < v9 && *(v121 + 64) < *(v121 + 136))
            {
              v121 += 72;
              v120 = 2 * v119 + 2;
            }

            v122 = selfCopy + 72 * v119;
            v123 = *(v122 + 64);
            if (*(v121 + 64) >= v123)
            {
              v198 = *v122;
              v124 = *(v122 + 24);
              v181 = *(v122 + 16);
              *(&v195 + 7) = *(v122 + 31);
              *&v195 = v124;
              v179 = *(v122 + 39);
              *(v122 + 16) = 0;
              *(v122 + 24) = 0;
              *(v122 + 32) = 0;
              v188 = *(v122 + 40);
              v125 = *(v122 + 55);
              *v197 = *(v122 + 41);
              *&v197[14] = v125;
              v184 = *(v122 + 63);
              *(v122 + 40) = 0;
              *(v122 + 48) = 0;
              *(v122 + 56) = 0;
              do
              {
                v126 = v121;
                *v122 = *v121;
                if (*(v122 + 39) < 0)
                {
                  operator delete(*(v122 + 16));
                }

                v127 = *(v126 + 16);
                *(v122 + 32) = *(v126 + 32);
                *(v122 + 16) = v127;
                *(v126 + 39) = 0;
                *(v126 + 16) = 0;
                if (*(v122 + 63) < 0)
                {
                  operator delete(*(v122 + 40));
                }

                v128 = *(v126 + 40);
                *(v122 + 56) = *(v126 + 56);
                *(v122 + 40) = v128;
                *(v126 + 63) = 0;
                *(v126 + 40) = 0;
                *(v122 + 64) = *(v126 + 64);
                if (v117 < v120)
                {
                  break;
                }

                v129 = 2 * v120;
                v120 = (2 * v120) | 1;
                v121 = selfCopy + 72 * v120;
                v130 = v129 + 2;
                if (v130 < v9 && *(v121 + 64) < *(v121 + 136))
                {
                  v121 += 72;
                  v120 = v130;
                }

                v122 = v126;
              }

              while (*(v121 + 64) >= v123);
              *v126 = v198;
              if (*(v126 + 39) < 0)
              {
                operator delete(*(v126 + 16));
              }

              v131 = v195;
              *(v126 + 16) = v181;
              *(v126 + 24) = v131;
              *(v126 + 31) = *(&v195 + 7);
              *(v126 + 39) = v179;
              if (*(v126 + 63) < 0)
              {
                operator delete(*(v126 + 40));
              }

              *(v126 + 40) = v188;
              *(v126 + 41) = *v197;
              *(v126 + 55) = *&v197[14];
              *(v126 + 63) = v184;
              *(v126 + 64) = v123;
            }
          }

          v118 = v119 - 1;
        }

        while (v119);
        v132 = 0x8E38E38E38E38E39 * (v8 >> 3);
        do
        {
          v133 = 0;
          v134 = v6;
          v195 = *selfCopy;
          v135 = *(selfCopy + 16);
          *v194 = *(selfCopy + 24);
          *&v194[7] = *(selfCopy + 31);
          v136 = *(selfCopy + 39);
          *(selfCopy + 16) = 0;
          *(selfCopy + 24) = 0;
          v137 = *(selfCopy + 40);
          v193[0] = *(selfCopy + 48);
          *(v193 + 7) = *(selfCopy + 55);
          v189 = *(selfCopy + 63);
          *(selfCopy + 48) = 0;
          *(selfCopy + 56) = 0;
          *(selfCopy + 32) = 0;
          *(selfCopy + 40) = 0;
          v138 = selfCopy;
          v182 = *(selfCopy + 64);
          v185 = v137;
          do
          {
            v139 = v138 + 72 * v133;
            v140 = v139 + 72;
            if (2 * v133 + 2 >= v132)
            {
              v133 = (2 * v133) | 1;
            }

            else
            {
              v141 = *(v139 + 136);
              v142 = *(v139 + 208);
              v143 = v139 + 144;
              if (v141 >= v142)
              {
                v133 = (2 * v133) | 1;
              }

              else
              {
                v140 = v143;
                v133 = 2 * v133 + 2;
              }
            }

            *v138 = *v140;
            if (*(v138 + 39) < 0)
            {
              operator delete(*(v138 + 16));
            }

            v144 = *(v140 + 16);
            *(v138 + 32) = *(v140 + 32);
            *(v138 + 16) = v144;
            *(v140 + 39) = 0;
            *(v140 + 16) = 0;
            if (*(v138 + 63) < 0)
            {
              operator delete(*(v138 + 40));
            }

            v145 = *(v140 + 40);
            *(v138 + 56) = *(v140 + 56);
            *(v138 + 40) = v145;
            *(v140 + 63) = 0;
            *(v140 + 40) = 0;
            *(v138 + 64) = *(v140 + 64);
            v138 = v140;
          }

          while (v133 <= ((v132 - 2) >> 1));
          v6 -= 9;
          if (v140 == v134 - 9)
          {
            *v140 = v195;
            if (*(v140 + 39) < 0)
            {
              operator delete(*(v140 + 16));
            }

            v160 = *v194;
            *(v140 + 16) = v135;
            *(v140 + 24) = v160;
            *(v140 + 31) = *&v194[7];
            *(v140 + 39) = v136;
            if (*(v140 + 63) < 0)
            {
              operator delete(*(v140 + 40));
            }

            v161 = v193[0];
            *(v140 + 40) = v185;
            *(v140 + 48) = v161;
            *(v140 + 55) = *(v193 + 7);
            *(v140 + 63) = v189;
            *(v140 + 64) = v182;
          }

          else
          {
            *v140 = *v6;
            if (*(v140 + 39) < 0)
            {
              operator delete(*(v140 + 16));
            }

            v146 = *(v134 - 7);
            *(v140 + 32) = *(v134 - 5);
            *(v140 + 16) = v146;
            *(v134 - 33) = 0;
            *(v134 - 56) = 0;
            if (*(v140 + 63) < 0)
            {
              operator delete(*(v140 + 40));
            }

            v147 = *(v134 - 2);
            *(v140 + 56) = *(v134 - 2);
            *(v140 + 40) = v147;
            *(v134 - 9) = 0;
            *(v134 - 32) = 0;
            *(v140 + 64) = *(v134 - 1);
            *v6 = v195;
            if (*(v134 - 33) < 0)
            {
              operator delete(*(v134 - 7));
            }

            *(v134 - 7) = v135;
            *(v134 - 6) = *v194;
            *(v134 - 41) = *&v194[7];
            *(v134 - 33) = v136;
            if (*(v134 - 9) < 0)
            {
              operator delete(*(v134 - 4));
            }

            v148 = v193[0];
            *(v134 - 4) = v185;
            *(v134 - 3) = v148;
            *(v134 - 17) = *(v193 + 7);
            *(v134 - 9) = v189;
            *(v134 - 1) = v182;
            v149 = v140 + 72 - selfCopy;
            if (v149 >= 73)
            {
              v150 = (-2 - 0x71C71C71C71C71C7 * (v149 >> 3)) >> 1;
              v151 = selfCopy + 72 * v150;
              v152 = *(v140 + 64);
              if (*(v151 + 64) < v152)
              {
                v198 = *v140;
                v153 = *(v140 + 16);
                *v196 = *(v140 + 24);
                *&v196[7] = *(v140 + 31);
                v154 = *(v140 + 39);
                *(v140 + 16) = 0;
                *(v140 + 24) = 0;
                v190 = *(v140 + 40);
                *v197 = *(v140 + 41);
                *&v197[14] = *(v140 + 55);
                v155 = *(v140 + 63);
                *(v140 + 32) = 0;
                *(v140 + 40) = 0;
                *(v140 + 48) = 0;
                *(v140 + 56) = 0;
                do
                {
                  v156 = v151;
                  *v140 = *v151;
                  if (*(v140 + 39) < 0)
                  {
                    operator delete(*(v140 + 16));
                  }

                  v157 = *(v156 + 16);
                  *(v140 + 32) = *(v156 + 32);
                  *(v140 + 16) = v157;
                  *(v156 + 39) = 0;
                  *(v156 + 16) = 0;
                  if (*(v140 + 63) < 0)
                  {
                    operator delete(*(v140 + 40));
                  }

                  v158 = *(v156 + 40);
                  *(v140 + 56) = *(v156 + 56);
                  *(v140 + 40) = v158;
                  *(v156 + 63) = 0;
                  *(v156 + 40) = 0;
                  *(v140 + 64) = *(v156 + 64);
                  if (!v150)
                  {
                    break;
                  }

                  v150 = (v150 - 1) >> 1;
                  v151 = selfCopy + 72 * v150;
                  v140 = v156;
                }

                while (*(v151 + 64) < v152);
                *v156 = v198;
                if (*(v156 + 39) < 0)
                {
                  operator delete(*(v156 + 16));
                }

                v159 = *v196;
                *(v156 + 16) = v153;
                *(v156 + 24) = v159;
                *(v156 + 31) = *&v196[7];
                *(v156 + 39) = v154;
                if (*(v156 + 63) < 0)
                {
                  operator delete(*(v156 + 40));
                }

                *(v156 + 40) = v190;
                *(v156 + 41) = *v197;
                *(v156 + 55) = *&v197[14];
                *(v156 + 63) = v155;
                *(v156 + 64) = v152;
              }
            }
          }
        }

        while (v132-- > 2);
      }

      goto LABEL_232;
    }

    v11 = v9 >> 1;
    v12 = selfCopy + 72 * (v9 >> 1);
    if (v8 >= 0x2401)
    {
      *v197 = selfCopy;
      *&v198 = v12;
      *&v195 = v6 - 9;
      v13 = *(v12 + 64);
      v14 = *(v6 - 1);
      if (v13 >= *(selfCopy + 64))
      {
        if (v14 >= v13 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195), *(v198 + 64) >= *(*v197 + 64)))
        {
LABEL_26:
          v21 = selfCopy + 72 * v11;
          v22 = v21 - 72;
          *v197 = selfCopy + 72;
          *&v198 = v21 - 72;
          *&v195 = v6 - 18;
          v23 = *(v21 - 8);
          v24 = *(v6 - 10);
          if (v23 >= *(selfCopy + 136))
          {
            if (v24 >= v23 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195), *(v198 + 64) >= *(*v197 + 64)))
            {
LABEL_39:
              v27 = selfCopy + 72 * v11;
              v28 = v27 + 72;
              *v197 = selfCopy + 144;
              *&v198 = v27 + 72;
              *&v195 = v6 - 27;
              v29 = *(v27 + 136);
              v30 = *(v6 - 19);
              if (v29 >= *(selfCopy + 208))
              {
                if (v30 >= v29 || (std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195), *(v198 + 64) >= *(*v197 + 64)))
                {
LABEL_48:
                  *v197 = v22;
                  *&v198 = v12;
                  *&v195 = v28;
                  v33 = *(v12 + 64);
                  v34 = *(v28 + 64);
                  if (v33 >= *(v22 + 64))
                  {
                    if (v34 >= v33)
                    {
                      goto LABEL_57;
                    }

                    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195);
                    if (*(v198 + 64) >= *(*v197 + 64))
                    {
                      goto LABEL_57;
                    }

                    v35 = v197;
                    v36 = &v198;
                  }

                  else
                  {
                    v35 = v197;
                    if (v34 >= v33)
                    {
                      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v197, &v198);
                      if (*(v195 + 64) >= *(v198 + 64))
                      {
LABEL_57:
                        *v197 = *selfCopy;
                        v37 = *(selfCopy + 16);
                        *&v198 = *(selfCopy + 24);
                        *(&v198 + 7) = *(selfCopy + 31);
                        v38 = *(selfCopy + 39);
                        *(selfCopy + 16) = 0;
                        *(selfCopy + 24) = 0;
                        v39 = *(selfCopy + 40);
                        *&v195 = *(selfCopy + 48);
                        *(&v195 + 7) = *(selfCopy + 55);
                        v40 = *(selfCopy + 63);
                        *(selfCopy + 32) = 0;
                        *(selfCopy + 40) = 0;
                        *(selfCopy + 48) = 0;
                        *(selfCopy + 56) = 0;
                        v41 = *(selfCopy + 64);
                        v42 = *v12;
                        v43 = *(v12 + 16);
                        *(selfCopy + 32) = *(v12 + 32);
                        *selfCopy = v42;
                        *(selfCopy + 16) = v43;
                        *(v12 + 39) = 0;
                        *(v12 + 16) = 0;
                        v45 = *(v12 + 56);
                        v44 = *(v12 + 64);
                        *(selfCopy + 40) = *(v12 + 40);
                        *(selfCopy + 56) = v45;
                        *(selfCopy + 64) = v44;
                        *(v12 + 63) = 0;
                        *(v12 + 40) = 0;
                        *v12 = *v197;
                        *(v12 + 16) = v37;
                        v46 = *(&v198 + 7);
                        *(v12 + 24) = v198;
                        *(v12 + 31) = v46;
                        *(v12 + 39) = v38;
                        *(v12 + 40) = v39;
                        v47 = v195;
                        *(v12 + 55) = *(&v195 + 7);
                        *(v12 + 48) = v47;
                        *(v12 + 63) = v40;
                        *(v12 + 64) = v41;
                        goto LABEL_58;
                      }

                      v35 = &v198;
                    }

                    v36 = &v195;
                  }

                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v35, v36);
                  goto LABEL_57;
                }

                v31 = v197;
                v32 = &v198;
              }

              else
              {
                v31 = v197;
                if (v30 >= v29)
                {
                  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v197, &v198);
                  if (*(v195 + 64) >= *(v198 + 64))
                  {
                    goto LABEL_48;
                  }

                  v31 = &v198;
                }

                v32 = &v195;
              }

              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v31, v32);
              goto LABEL_48;
            }

            v25 = v197;
            v26 = &v198;
          }

          else
          {
            v25 = v197;
            if (v24 >= v23)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v197, &v198);
              if (*(v195 + 64) >= *(v198 + 64))
              {
                goto LABEL_39;
              }

              v25 = &v198;
            }

            v26 = &v195;
          }

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v25, v26);
          goto LABEL_39;
        }

        v15 = v197;
        v16 = &v198;
      }

      else
      {
        v15 = v197;
        if (v14 >= v13)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v197, &v198);
          if (*(v195 + 64) >= *(v198 + 64))
          {
            goto LABEL_26;
          }

          v15 = &v198;
        }

        v16 = &v195;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v15, v16);
      goto LABEL_26;
    }

    *v197 = v12;
    *&v198 = selfCopy;
    *&v195 = v6 - 9;
    v17 = *(selfCopy + 64);
    v18 = *(v6 - 1);
    if (v17 < *(v12 + 64))
    {
      v19 = v197;
      if (v18 >= v17)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v197, &v198);
        if (*(v195 + 64) >= *(v198 + 64))
        {
          goto LABEL_58;
        }

        v19 = &v198;
      }

      v20 = &v195;
      goto LABEL_34;
    }

    if (v18 < v17)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195);
      if (*(v198 + 64) < *(*v197 + 64))
      {
        v19 = v197;
        v20 = &v198;
LABEL_34:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v19, v20);
      }
    }

LABEL_58:
    v186 = times - 1;
    if (time)
    {
      timeCopy2 = time;
      v48 = *(selfCopy + 64);
    }

    else
    {
      v48 = *(selfCopy + 64);
      if (*(selfCopy - 8) >= v48)
      {
        *v194 = v6;
        v198 = *selfCopy;
        v61 = (selfCopy + 16);
        v60 = *(selfCopy + 16);
        *&v195 = *(selfCopy + 24);
        *(&v195 + 7) = *(selfCopy + 31);
        v62 = *(selfCopy + 39);
        *(selfCopy + 16) = 0;
        *(selfCopy + 24) = 0;
        *(selfCopy + 32) = 0;
        v64 = (selfCopy + 40);
        v63 = *(selfCopy + 40);
        *v197 = *(selfCopy + 41);
        *&v197[14] = *(selfCopy + 55);
        v65 = *(selfCopy + 63);
        *(selfCopy + 48) = 0;
        *(selfCopy + 56) = 0;
        *(selfCopy + 40) = 0;
        if (*(v6 - 1) <= v48)
        {
          v80 = selfCopy + 72;
          do
          {
            v67 = v80;
            if (v80 >= v6)
            {
              break;
            }

            v81 = *(v80 + 64);
            v80 += 72;
          }

          while (v81 <= v48);
        }

        else
        {
          v66 = selfCopy;
          do
          {
            v67 = v66 + 72;
            v68 = *(v66 + 136);
            v66 += 72;
          }

          while (v68 <= v48);
        }

        *v196 = v67;
        if (v67 < v6)
        {
          do
          {
            v82 = *(v6 - 1);
            v6 -= 9;
          }

          while (v82 > v48);
          *v194 = v6;
        }

        if (v67 < v6)
        {
          do
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, v194);
            v67 = *v196;
            do
            {
              v83 = *(v67 + 136);
              v67 += 72;
            }

            while (v83 <= v48);
            *v196 = v67;
            v84 = *v194;
            do
            {
              v85 = *(v84 - 8);
              v84 -= 72;
            }

            while (v85 > v48);
            *v194 = v84;
          }

          while (v67 < v84);
        }

        v86 = (v67 - 72);
        if (v67 - 72 != selfCopy)
        {
          *selfCopy = *v86;
          if (*(selfCopy + 39) < 0)
          {
            operator delete(*v61);
          }

          v87 = *(v67 - 56);
          *(selfCopy + 32) = *(v67 - 40);
          *v61 = v87;
          *(v67 - 33) = 0;
          *(v67 - 56) = 0;
          if (*(selfCopy + 63) < 0)
          {
            operator delete(*v64);
          }

          v88 = *(v67 - 32);
          *(selfCopy + 56) = *(v67 - 16);
          *v64 = v88;
          *(v67 - 9) = 0;
          *(v67 - 32) = 0;
          *(selfCopy + 64) = *(v67 - 8);
        }

        *v86 = v198;
        if (*(v67 - 33) < 0)
        {
          operator delete(*(v67 - 56));
        }

        *(v67 - 56) = v60;
        v89 = v195;
        *(v67 - 41) = *(&v195 + 7);
        *(v67 - 48) = v89;
        *(v67 - 33) = v62;
        if (*(v67 - 9) < 0)
        {
          operator delete(*(v67 - 32));
        }

        time = 0;
        *(v67 - 32) = v63;
        v90 = *v197;
        *(v67 - 17) = *&v197[14];
        *(v67 - 31) = v90;
        *(v67 - 9) = v65;
        *(v67 - 8) = v48;
        v69 = *v196;
        selfCopy2 = *v196;
        times = v186;
        goto LABEL_122;
      }

      timeCopy2 = time;
    }

    v49 = 0;
    v198 = *selfCopy;
    v51 = (selfCopy + 16);
    v50 = *(selfCopy + 16);
    *&v195 = *(selfCopy + 24);
    *(&v195 + 7) = *(selfCopy + 31);
    v52 = *(selfCopy + 39);
    *(selfCopy + 16) = 0;
    *(selfCopy + 24) = 0;
    *(selfCopy + 32) = 0;
    v53 = (selfCopy + 40);
    v180 = *(selfCopy + 40);
    *v197 = *(selfCopy + 41);
    *&v197[14] = *(selfCopy + 55);
    v54 = *(selfCopy + 63);
    *(selfCopy + 48) = 0;
    *(selfCopy + 56) = 0;
    *(selfCopy + 40) = 0;
    do
    {
      v55 = *(selfCopy + v49 + 136);
      v49 += 72;
    }

    while (v55 < v48);
    v56 = selfCopy + v49;
    *v196 = selfCopy + v49;
    if (v49 == 72)
    {
      while (v56 < v6)
      {
        v57 = v6 - 9;
        v59 = *(v6 - 1);
        v6 -= 9;
        if (v59 < v48)
        {
          goto LABEL_75;
        }
      }

      v57 = v6;
    }

    else
    {
      do
      {
        v57 = v6 - 9;
        v58 = *(v6 - 1);
        v6 -= 9;
      }

      while (v58 >= v48);
    }

LABEL_75:
    *v194 = v57;
    v69 = selfCopy + v49;
    if (v56 < v57)
    {
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, v194);
        v69 = *v196;
        do
        {
          v70 = *(v69 + 136);
          v69 += 72;
        }

        while (v70 < v48);
        *v196 = v69;
        v71 = *v194;
        do
        {
          v72 = *(v71 - 8);
          v71 -= 72;
        }

        while (v72 >= v48);
        *v194 = v71;
      }

      while (v69 < v71);
    }

    v73 = (v69 - 72);
    if (v69 - 72 != selfCopy)
    {
      *selfCopy = *v73;
      if (*(selfCopy + 39) < 0)
      {
        operator delete(*v51);
      }

      v74 = *(v69 - 56);
      *(selfCopy + 32) = *(v69 - 40);
      *v51 = v74;
      *(v69 - 33) = 0;
      *(v69 - 56) = 0;
      if (*(selfCopy + 63) < 0)
      {
        operator delete(*v53);
      }

      v75 = *(v69 - 32);
      *(selfCopy + 56) = *(v69 - 16);
      *v53 = v75;
      *(v69 - 9) = 0;
      *(v69 - 32) = 0;
      *(selfCopy + 64) = *(v69 - 8);
    }

    *v73 = v198;
    if (*(v69 - 33) < 0)
    {
      operator delete(*(v69 - 56));
    }

    *(v69 - 56) = v50;
    v76 = v195;
    *(v69 - 41) = *(&v195 + 7);
    *(v69 - 48) = v76;
    *(v69 - 33) = v52;
    times = v186;
    if (*(v69 - 9) < 0)
    {
      operator delete(*(v69 - 32));
    }

    *(v69 - 32) = v180;
    v77 = *v197;
    *(v69 - 17) = *&v197[14];
    *(v69 - 31) = v77;
    *(v69 - 9) = v54;
    *(v69 - 8) = v48;
    v78 = v56 >= v57;
    time = timeCopy2;
    if (!v78)
    {
      goto LABEL_92;
    }

    v79 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *>(selfCopy2, v69 - 72);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *>(v69, v191))
    {
      if (!v79)
      {
LABEL_92:
        std::__introsort<std::_ClassicAlgPolicy,[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,false>(selfCopy2, v69 - 72, v186, timeCopy2 & 1);
        time = 0;
      }

      selfCopy2 = v69;
      goto LABEL_122;
    }

    if (v79)
    {
      goto LABEL_232;
    }

    v191 = (v69 - 72);
    v69 = selfCopy2;
LABEL_122:
    v6 = v191;
    selfCopy = v69;
  }

  v191 = v6 - 9;
  *v197 = selfCopy;
  *&v198 = selfCopy + 72;
  *&v195 = selfCopy + 144;
  *v196 = selfCopy + 216;
  *v194 = v6 - 9;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[ULBluetoothIdentityStore fetchBtIdentityEntriesBetweenTimes:toTime:]::$_1 &,ULBluetoothIdentityDO *,0>(selfCopy, (selfCopy + 72), selfCopy + 144, selfCopy + 216);
  if (*(v6 - 1) < *(selfCopy + 280))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(v196, v194);
    if (*(*v196 + 64) < *(selfCopy + 208))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v195, v196);
      if (*(v195 + 64) < *(selfCopy + 136))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<ULBluetoothIdentityDO *&,ULBluetoothIdentityDO *&>(&v198, &v195);
        v93 = *(v198 + 64);
        v94 = *(selfCopy + 64);
        goto LABEL_229;
      }
    }
  }

LABEL_232:
  v163 = *MEMORY[0x277D85DE8];
}

- (uint64_t)insertDataObjects:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (id)insertDataObjects:
{
  managedObjectContext = [**(self + 8) managedObjectContext];
  v4 = [ULBluetoothIdentityMO createFromDO:a2 inManagedObjectContext:managedObjectContext];

  return v4;
}

@end