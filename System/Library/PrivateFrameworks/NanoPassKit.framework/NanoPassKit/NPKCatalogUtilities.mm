@interface NPKCatalogUtilities
+ (id)catalogByMergingCompanionCatalog:(id)catalog intoWatchCatalog:(id)watchCatalog watchPasses:(id)passes;
@end

@implementation NPKCatalogUtilities

+ (id)catalogByMergingCompanionCatalog:(id)catalog intoWatchCatalog:(id)watchCatalog watchPasses:(id)passes
{
  v182 = *MEMORY[0x277D85DE8];
  catalogCopy = catalog;
  watchCatalogCopy = watchCatalog;
  passesCopy = passes;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v10 = passesCopy;
  v11 = [v10 countByEnumeratingWithState:&v166 objects:v181 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v167;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v167 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v166 + 1) + 8 * i);
        uniqueID = [v15 uniqueID];
        if (uniqueID)
        {
          [dictionary setObject:v15 forKey:uniqueID];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v166 objects:v181 count:16];
    }

    while (v12);
  }

  v100 = v10;

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v101 = watchCatalogCopy;
  obj = [watchCatalogCopy groups];
  v17 = [obj countByEnumeratingWithState:&v162 objects:v180 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v163;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v163 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v162 + 1) + 8 * j);
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        uniqueIDs = [v21 uniqueIDs];
        v23 = [uniqueIDs countByEnumeratingWithState:&v158 objects:v179 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v159;
          while (2)
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v159 != v25)
              {
                objc_enumerationMutation(uniqueIDs);
              }

              v27 = [dictionary objectForKey:*(*(&v158 + 1) + 8 * k)];
              if (v27)
              {
                v28 = v27;
                passType = [v27 passType];
                if ([v28 style] == 6 && passType == 1)
                {
                  v31 = array;
                }

                else
                {
                  v31 = array2;
                }

                [v31 addObject:v21];

                goto LABEL_31;
              }
            }

            v24 = [uniqueIDs countByEnumeratingWithState:&v158 objects:v179 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

LABEL_31:
      }

      v18 = [obj countByEnumeratingWithState:&v162 objects:v180 count:16];
    }

    while (v18);
  }

  array3 = [MEMORY[0x277CBEB18] array];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obja = [catalogCopy groups];
  v32 = [obja countByEnumeratingWithState:&v154 objects:v178 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v155;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v155 != v34)
        {
          objc_enumerationMutation(obja);
        }

        v36 = *(*(&v154 + 1) + 8 * m);
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        uniqueIDs2 = [v36 uniqueIDs];
        v38 = [uniqueIDs2 countByEnumeratingWithState:&v150 objects:v177 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v151;
          while (2)
          {
            for (n = 0; n != v39; ++n)
            {
              if (*v151 != v40)
              {
                objc_enumerationMutation(uniqueIDs2);
              }

              v42 = [dictionary objectForKey:*(*(&v150 + 1) + 8 * n)];
              if (v42)
              {
                v43 = v42;
                passType2 = [v42 passType];
                style = [v43 style];
                if (passType2 != 1 || style != 6)
                {
                  v47 = [v36 copy];
                  [array3 addObject:v47];
                }

                goto LABEL_53;
              }
            }

            v39 = [uniqueIDs2 countByEnumeratingWithState:&v150 objects:v177 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

LABEL_53:
      }

      v33 = [obja countByEnumeratingWithState:&v154 objects:v178 count:16];
    }

    while (v33);
  }

  v48 = [MEMORY[0x277CBEB58] set];
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v113 = array2;
  v49 = [v113 countByEnumeratingWithState:&v146 objects:v176 count:16];
  if (v49)
  {
    v50 = v49;
    v119 = *v147;
    do
    {
      for (ii = 0; ii != v50; ++ii)
      {
        if (*v147 != v119)
        {
          objc_enumerationMutation(v113);
        }

        v52 = *(*(&v146 + 1) + 8 * ii);
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145 = 0u;
        uniqueIDs3 = [v52 uniqueIDs];
        v54 = [uniqueIDs3 countByEnumeratingWithState:&v142 objects:v175 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v143;
          do
          {
            for (jj = 0; jj != v55; ++jj)
            {
              if (*v143 != v56)
              {
                objc_enumerationMutation(uniqueIDs3);
              }

              v58 = *(*(&v142 + 1) + 8 * jj);
              v59 = [dictionary objectForKey:v58];
              if (v59)
              {
                [v48 addObject:v58];
              }
            }

            v55 = [uniqueIDs3 countByEnumeratingWithState:&v142 objects:v175 count:16];
          }

          while (v55);
        }
      }

      v50 = [v113 countByEnumeratingWithState:&v146 objects:v176 count:16];
    }

    while (v50);
  }

  v60 = [MEMORY[0x277CBEB58] set];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v107 = array3;
  v120 = [v107 countByEnumeratingWithState:&v138 objects:v174 count:16];
  if (v120)
  {
    objb = *v139;
    do
    {
      for (kk = 0; kk != v120; kk = kk + 1)
      {
        if (*v139 != objb)
        {
          objc_enumerationMutation(v107);
        }

        v62 = *(*(&v138 + 1) + 8 * kk);
        v134 = 0u;
        v135 = 0u;
        v136 = 0u;
        v137 = 0u;
        uniqueIDs4 = [v62 uniqueIDs];
        v64 = [uniqueIDs4 countByEnumeratingWithState:&v134 objects:v173 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v135;
          do
          {
            for (mm = 0; mm != v65; ++mm)
            {
              if (*v135 != v66)
              {
                objc_enumerationMutation(uniqueIDs4);
              }

              v68 = *(*(&v134 + 1) + 8 * mm);
              v69 = [dictionary objectForKey:v68];
              if (v69)
              {
                [v60 addObject:v68];
              }
            }

            v65 = [uniqueIDs4 countByEnumeratingWithState:&v134 objects:v173 count:16];
          }

          while (v65);
        }
      }

      v120 = [v107 countByEnumeratingWithState:&v138 objects:v174 count:16];
    }

    while (v120);
  }

  v70 = [v48 mutableCopy];
  [v70 minusSet:v60];
  array4 = [MEMORY[0x277CBEB18] array];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v105 = v70;
  v109 = [v105 countByEnumeratingWithState:&v130 objects:v172 count:16];
  if (v109)
  {
    v108 = *v131;
    do
    {
      v71 = 0;
      do
      {
        if (*v131 != v108)
        {
          objc_enumerationMutation(v105);
        }

        v72 = *(*(&v130 + 1) + 8 * v71);
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v129 = 0u;
        v121 = v113;
        v73 = [v121 countByEnumeratingWithState:&v126 objects:v171 count:16];
        if (v73)
        {
          v74 = v73;
          v110 = v71;
          v75 = *v127;
LABEL_94:
          v76 = 0;
          while (1)
          {
            if (*v127 != v75)
            {
              objc_enumerationMutation(v121);
            }

            v77 = *(*(&v126 + 1) + 8 * v76);
            uniqueIDs5 = [v77 uniqueIDs];
            v79 = [uniqueIDs5 containsObject:v72];

            if (v79)
            {
              break;
            }

            if (v74 == ++v76)
            {
              v74 = [v121 countByEnumeratingWithState:&v126 objects:v171 count:16];
              if (v74)
              {
                goto LABEL_94;
              }

              v80 = 0;
              v71 = v110;
              goto LABEL_115;
            }
          }

          v80 = v77;

          if (!v80)
          {
            v71 = v110;
            goto LABEL_117;
          }

          v71 = v110;
          if ([array4 containsObject:v80])
          {
            goto LABEL_117;
          }

          v81 = [v60 mutableCopy];
          v82 = MEMORY[0x277CBEB98];
          uniqueIDs6 = [v80 uniqueIDs];
          v84 = [v82 setWithArray:uniqueIDs6];
          [v81 intersectSet:v84];

          v121 = v81;
          if ([v81 count])
          {
            v103 = v80;
            objc = [v81 anyObject];
            v122 = 0u;
            v123 = 0u;
            v124 = 0u;
            v125 = 0u;
            v112 = v107;
            v85 = [v112 countByEnumeratingWithState:&v122 objects:v170 count:16];
            if (v85)
            {
              v86 = v85;
              v87 = *v123;
              while (2)
              {
                for (nn = 0; nn != v86; ++nn)
                {
                  if (*v123 != v87)
                  {
                    objc_enumerationMutation(v112);
                  }

                  v89 = *(*(&v122 + 1) + 8 * nn);
                  uniqueIDs7 = [v89 uniqueIDs];
                  v91 = [uniqueIDs7 containsObject:objc];

                  if (v91)
                  {
                    uniqueIDs8 = [v89 uniqueIDs];
                    [uniqueIDs8 addObject:v72];

                    v71 = v110;
                    v80 = v103;
                    goto LABEL_115;
                  }
                }

                v86 = [v112 countByEnumeratingWithState:&v122 objects:v170 count:16];
                if (v86)
                {
                  continue;
                }

                break;
              }
            }

            v71 = v110;
            v80 = v103;
          }

          [array4 addObject:v80];
        }

        else
        {
          v80 = 0;
        }

LABEL_115:

LABEL_117:
        ++v71;
      }

      while (v71 != v109);
      v93 = [v105 countByEnumeratingWithState:&v130 objects:v172 count:16];
      v109 = v93;
    }

    while (v93);
  }

  v94 = objc_alloc_init(MEMORY[0x277D37E10]);
  groups = [v94 groups];
  [groups addObjectsFromArray:array];

  groups2 = [v94 groups];
  [groups2 addObjectsFromArray:array4];

  groups3 = [v94 groups];
  [groups3 addObjectsFromArray:v107];

  v98 = *MEMORY[0x277D85DE8];

  return v94;
}

@end