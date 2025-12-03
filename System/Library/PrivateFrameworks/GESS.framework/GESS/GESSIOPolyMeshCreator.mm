@interface GESSIOPolyMeshCreator
- (BOOL)clear;
- (BOOL)create:(id)create;
- (BOOL)setMtlFilePath:(id)path;
- (id).cxx_construct;
@end

@implementation GESSIOPolyMeshCreator

- (BOOL)setMtlFilePath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (objc_msgSend_length(pathCopy, v4, v5, v6))
  {
    v7 = pathCopy;
    v11 = objc_msgSend_UTF8String(v7, v8, v9, v10);
    v12 = strlen(v11);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_24BC8DF40();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v12;
    if (v12)
    {
      memmove(&__dst, v11, v12);
    }

    __dst.__r_.__value_.__s.__data_[v13] = 0;
    sub_24BCCA6F0(&v17.__pn_, &__dst);
    std::__fs::filesystem::__status(&v17, 0);
    v14 = v19;
    if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__pn_.__r_.__value_.__l.__data_);
    }

    if (v14 && v14 != 255)
    {
      operator new();
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)create:(id)create
{
  v222 = *MEMORY[0x277D85DE8];
  createCopy = create;
  if ((objc_msgSend_typeValid(createCopy, v5, v6, v7) & 1) == 0 || !objc_msgSend_length(self->_positionData, v8, v9, v10) || !objc_msgSend_length(self->_faceData, v11, v12, v13) || objc_msgSend_meshType(createCopy, v14, v15, v16) == 11 && !objc_msgSend_length(self->_faceVertexCountData, v17, v18, v19))
  {
    goto LABEL_117;
  }

  if (objc_msgSend_meshType(createCopy, v17, v18, v19) != 1)
  {
    objc_msgSend_meshType(createCopy, v20, v21, v22);
  }

  v23 = objc_msgSend_length(self->_positionData, v20, v21, v22);
  v27 = objc_msgSend_meshType(createCopy, v24, v25, v26);
  v31 = v23 % 0xC;
  if (v27 == 1)
  {
    if (v31 || __ROR8__(0xAAAAAAAAAAAAAAABLL * objc_msgSend_length(self->_faceData, v28, v29, v30), 2) >= 0x1555555555555556uLL)
    {
      goto LABEL_14;
    }
  }

  else if (v31)
  {
    goto LABEL_14;
  }

  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * objc_msgSend_length(self->_vertexNormalData, v28, v29, v30), 2) <= 0x1555555555555555uLL)
  {
    v32 = (objc_msgSend_length(self->_texCoordData, v28, v29, v30) & 7) == 0;
    goto LABEL_15;
  }

LABEL_14:
  v32 = 0;
LABEL_15:
  v33 = objc_msgSend_length(self->_vertexColorData, v28, v29, v30);
  v37 = v33 == 0 && v32;
  if (v33 && v32)
  {
    v38 = objc_msgSend_length(self->_vertexColorData, v34, v35, v36);
    v37 = v38 == objc_msgSend_length(self->_positionData, v39, v40, v41);
  }

  v42 = objc_msgSend_length(self->_texCoordFaceData, v34, v35, v36);
  v46 = (v42 == 0) & v37;
  if (v42 && ((v37 ^ 1) & 1) == 0)
  {
    v47 = objc_msgSend_length(self->_texCoordFaceData, v43, v44, v45);
    v46 = v47 == objc_msgSend_length(self->_faceData, v48, v49, v50);
  }

  v51 = objc_msgSend_length(self->_vertexNormalFaceData, v43, v44, v45);
  if (!v51 || ((v46 ^ 1) & 1) != 0)
  {
    if (((v51 == 0) & v46) != 1)
    {
LABEL_117:
      v69 = 0;
      goto LABEL_118;
    }
  }

  else
  {
    v55 = objc_msgSend_length(self->_vertexNormalFaceData, v52, v53, v54);
    if (v55 != objc_msgSend_length(self->_faceData, v56, v57, v58))
    {
      goto LABEL_117;
    }
  }

  if (objc_msgSend_meshType(createCopy, v52, v53, v54) == 1 || objc_msgSend_meshType(createCopy, v59, v60, v61) == 11)
  {
    v197 = createCopy;
    if (objc_msgSend_meshType(createCopy, v59, v60, v61) == 1)
    {
      v68 = objc_msgSend_length(self->_faceData, v62, v63, v64) / 0xCuLL;
    }

    else if (objc_msgSend_meshType(createCopy, v62, v63, v64) == 11)
    {
      LODWORD(v68) = objc_msgSend_length(self->_faceVertexCountData, v65, v66, v67);
    }

    else
    {
      LODWORD(v68) = 0;
    }

    v73 = objc_msgSend_length(self->_positionData, v65, v66, v67);
    faceGroupIDData = self->_faceGroupIDData;
    if (!faceGroupIDData || !objc_msgSend_length(faceGroupIDData, v70, v71, v72) || objc_msgSend_length(self->_faceGroupIDData, v75, v76, v77) == 2 * v68)
    {
      *__dst = 0u;
      *v204 = 0u;
      v78 = v73 / 0xC;
      v205 = 0u;
      *v206 = 0u;
      *v207 = 0u;
      v208 = 0u;
      *v209 = 0u;
      *v210 = 0u;
      v211 = 0u;
      *v212 = 0u;
      *v213 = 0u;
      v214 = 0u;
      *v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v218 = v219;
      memset(v219, 0, sizeof(v219));
      v220 = 1;
      v79 = 3 * (v73 / 0xC);
      sub_24BC8CAB0(__dst, v79);
      v194 = v78;
      v195 = v68;
      v83 = objc_msgSend_bytes(self->_positionData, v80, v81, v82);
      if (v79)
      {
        memmove(__dst[0], v83, 4 * v79);
      }

      v86 = (objc_msgSend_length(self->_faceData, v83, v84, v85) >> 2);
      sub_24BC8CAB0(v206, v86);
      v90 = objc_msgSend_bytes(self->_faceData, v87, v88, v89);
      if (v86)
      {
        memmove(v206[0], v90, 4 * v86);
      }

      if (objc_msgSend_meshType(v197, v90, v91, v92) == 11)
      {
        v96 = objc_msgSend_length(self->_faceVertexCountData, v93, v94, v95);
        sub_24BC8F988(v212, v96);
        v93 = objc_msgSend_bytes(self->_faceVertexCountData, v97, v98, v99);
        if (v96)
        {
          memmove(v212[0], v93, v96);
        }
      }

      v196 = objc_msgSend_length(self->_vertexNormalData, v93, v94, v95) / 0xCuLL;
      if (objc_msgSend_length(self->_vertexNormalData, v100, v101, v102))
      {
        sub_24BC8CAB0(&v213[1], (3 * v196));
        v103 = objc_msgSend_bytes(self->_vertexNormalData, v106, v107, v108);
        if (3 * v196)
        {
          memmove(v213[1], v103, 4 * (3 * v196));
        }
      }

      if (objc_msgSend_length(self->_vertexNormalFaceData, v103, v104, v105))
      {
        sub_24BC8CAB0(v209, v86);
        v109 = objc_msgSend_bytes(self->_vertexNormalFaceData, v112, v113, v114);
        if (v86)
        {
          memmove(v209[0], v109, 4 * v86);
        }
      }

      if (objc_msgSend_length(self->_vertexColorData, v109, v110, v111))
      {
        sub_24BC8CAB0(&v204[1], v79);
        v115 = objc_msgSend_bytes(self->_vertexColorData, v118, v119, v120);
        if (v79)
        {
          memmove(v204[1], v115, 4 * v79);
        }
      }

      if (objc_msgSend_length(self->_texCoordData, v115, v116, v117))
      {
        v124 = objc_msgSend_length(self->_texCoordData, v121, v122, v123);
        sub_24BC8CAB0(v215, v124 >> 2);
        v121 = objc_msgSend_bytes(self->_texCoordData, v125, v126, v127);
        if (v124 >= 4)
        {
          memmove(v215[0], v121, v124 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }

      if (objc_msgSend_length(self->_texCoordFaceData, v121, v122, v123))
      {
        v131 = objc_msgSend_length(self->_texCoordFaceData, v128, v129, v130);
        sub_24BC8CAB0(&v207[1], v131 >> 2);
        v128 = objc_msgSend_bytes(self->_texCoordFaceData, v132, v133, v134);
        if (v131 >= 4)
        {
          memmove(v207[1], v128, v131 & 0xFFFFFFFFFFFFFFFCLL);
        }
      }

      if (objc_msgSend_length(self->_faceGroupIDData, v128, v129, v130))
      {
        v138 = objc_msgSend_length(self->_faceGroupIDData, v135, v136, v137);
        sub_24BD30080(&v210[1], v138 >> 1);
        v135 = objc_msgSend_bytes(self->_faceGroupIDData, v139, v140, v141);
        if (v138 >= 2)
        {
          memmove(v210[1], v135, v138 & 0xFFFFFFFFFFFFFFFELL);
        }
      }

      if (objc_msgSend_count(self->_groupNameArray, v135, v136, v137))
      {
        v145 = objc_msgSend_count(self->_groupNameArray, v142, v143, v144);
        sub_24BD27328(&v216 + 1, v145);
        if (-1431655765 * ((v217 - *(&v216 + 1)) >> 3))
        {
          v146 = 0;
          v147 = 0;
          do
          {
            v148 = objc_msgSend_objectAtIndexedSubscript_(self->_groupNameArray, v142, v147, v144);
            v149 = v148;
            v153 = objc_msgSend_UTF8String(v148, v150, v151, v152);
            MEMORY[0x24C2541D0](*(&v216 + 1) + v146, v153);

            ++v147;
            v146 += 24;
          }

          while (v147 < -1431655765 * ((v217 - *(&v216 + 1)) >> 3));
        }
      }

      if (objc_msgSend_count(self->_groupIDToMaterialNameDict, v142, v143, v144))
      {
        v201 = 0u;
        v202 = 0u;
        v199 = 0u;
        v200 = 0u;
        v157 = self->_groupIDToMaterialNameDict;
        v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v158, &v199, v221, 16);
        if (v162)
        {
          v163 = *v200;
          do
          {
            for (i = 0; i != v162; ++i)
            {
              if (*v200 != v163)
              {
                objc_enumerationMutation(v157);
              }

              v165 = *(*(&v199 + 1) + 8 * i);
              LOWORD(v198[0]) = objc_msgSend_unsignedShortValue(v165, v159, v160, v161);
              v168 = objc_msgSend_objectForKeyedSubscript_(self->_groupIDToMaterialNameDict, v166, v165, v167);
              v169 = v168;
              v173 = objc_msgSend_UTF8String(v168, v170, v171, v172);

              v198[2] = v198;
              v174 = sub_24BD303B8(&v218, v198);
              MEMORY[0x24C2541D0](v174 + 5, v173);
            }

            v162 = objc_msgSend_countByEnumeratingWithState_objects_count_(v157, v159, &v199, v221, 16);
          }

          while (v162);
        }
      }

      createCopy = v197;
      if (v213[1] == v214)
      {
        goto LABEL_112;
      }

      if (v209[0] == v209[1])
      {
        if (v196 == v194)
        {
LABEL_84:
          v178 = 1;
        }

        else
        {
          v178 = 2 * (v195 == v196);
        }

        goto LABEL_111;
      }

      v175 = 0;
      v176 = 1;
      while (*(v206[0] + v175) == *(v209[0] + v175))
      {
        v175 = v176;
        if ((v209[1] - v209[0]) >> 2 <= v176++)
        {
          goto LABEL_84;
        }
      }

      if (objc_msgSend_meshType(v197, v154, v155, v156) == 1)
      {
        if (v195)
        {
          v179 = 0;
          while (1)
          {
            v180 = 0;
            v181 = 1;
            do
            {
              while (!v181)
              {
                v181 = 0;
                if (++v180 == 3)
                {
                  goto LABEL_110;
                }
              }

              v182 = *(v209[0] + (3 * v179 + v180));
              v181 = v179 == v182;
              ++v180;
            }

            while (v180 != 3);
            if (v179 != v182)
            {
              break;
            }

            ++v179;
            v178 = 2;
            if (v179 == v195)
            {
              goto LABEL_111;
            }
          }

LABEL_110:
          v178 = 3;
          goto LABEL_111;
        }
      }

      else
      {
        v183 = objc_msgSend_meshType(v197, v154, v155, v156);
        v178 = 2;
        if (v183 != 11 || !v195)
        {
          goto LABEL_111;
        }

        v184 = 0;
        v185 = 0;
        v186 = 1;
        do
        {
          if (*(v212[0] + v184))
          {
            v187 = *(v212[0] + v184);
            v188 = v185;
            do
            {
              v186 = v186 && v184 == *(v209[0] + v188++);
              --v187;
            }

            while (v187);
          }

          v185 += *(v212[0] + v184++);
        }

        while (v184 != v195);
        if (!v186)
        {
          goto LABEL_110;
        }
      }

      v178 = 2;
LABEL_111:
      v220 = v178;
LABEL_112:
      if (objc_msgSend_meshType(v197, v154, v155, v156) == 1)
      {
        sub_24BD51FA4();
      }

      if (objc_msgSend_meshType(v197, v189, v190, v191) == 11)
      {
        sub_24BD2A7F0();
      }

      sub_24BD3C054(__dst);
      goto LABEL_117;
    }

    v69 = 0;
  }

  else
  {
    v69 = 1;
  }

LABEL_118:

  v192 = *MEMORY[0x277D85DE8];
  return v69;
}

- (BOOL)clear
{
  positionData = self->_positionData;
  self->_positionData = 0;

  faceData = self->_faceData;
  self->_faceData = 0;

  vertexNormalData = self->_vertexNormalData;
  self->_vertexNormalData = 0;

  vertexNormalFaceData = self->_vertexNormalFaceData;
  self->_vertexNormalFaceData = 0;

  vertexColorData = self->_vertexColorData;
  self->_vertexColorData = 0;

  texCoordData = self->_texCoordData;
  self->_texCoordData = 0;

  texCoordFaceData = self->_texCoordFaceData;
  self->_texCoordFaceData = 0;

  faceGroupIDData = self->_faceGroupIDData;
  self->_faceGroupIDData = 0;

  groupNameArray = self->_groupNameArray;
  self->_groupNameArray = 0;

  groupIDToMaterialNameDict = self->_groupIDToMaterialNameDict;
  self->_groupIDToMaterialNameDict = 0;

  return 1;
}

- (id).cxx_construct
{
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

@end