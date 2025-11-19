uint64_t _ZN2re10FixedArrayIDv4_fEixEm(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 16 * a3;
}

void re::attachNewBlendShapeDataIfItExistsToModelDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = [v3 name];

  if (!v5)
  {
LABEL_15:

    goto LABEL_16;
  }

  v6 = [v4 name];
  v7 = [v6 stringValue];

  v8 = [v7 UTF8String];
  re::DynamicString::rfind(v9, "_blendShape", v33);
  if (v37 && (v38 & 1) != 0)
  {
    (*(*v37 + 40))(v37, v39);
  }

  v10 = LOBYTE(v33[0]);

  if (v10 != 1)
  {
LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  v11 = [v4 childIterator];
  v5 = [v11 nextObject];
  if (v5)
  {
    while (1)
    {
      v12 = [v5 name];
      v13 = [v12 stringValue];
      v14 = [v13 UTF8String];

      re::DynamicString::rfind(&v37, "_blendTargets", v33);
      if (LOBYTE(v33[0]) == 1)
      {
        break;
      }

      if (v37 && (v38 & 1) != 0)
      {
        (*(*v37 + 40))(v37, v39);
      }

      v15 = [v11 nextObject];

      v5 = v15;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    v5 = v5;
    if (v37 && (v38 & 1) != 0)
    {
      (*(*v37 + 40))(v37, v39);
    }
  }

LABEL_21:

  if (v5)
  {
    v4 = [v5 childIterator];
    v16 = [v4 nextObject];
    if (v16)
    {
      v17 = v16;
      v31 = a1;
      v18 = *MEMORY[0x1E69DEDD0];
      v30 = xmmword_1E3068140;
      do
      {
        v19 = [v17 property:{@"offsets", v30}];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 data];
          v22 = [v20 type];

          if (v22 == v18)
          {
            v23 = [v21 dataNoCopy];
            v24 = [v23 copy];

            v25 = v24;
            v37 = v25;
            v38 = 11;
            v39 = [v21 arraySize];
            v40 = v30;
            v26 = [v17 name];
            v27 = [v26 stringValue];
            v28 = [v27 UTF8String];
            re::DynamicString::operator+(v32, "|blendTargetPosDeltas", v33);
            re::GeomModelDescriptor::setAttribute(v31, v33, 1, &v37, 0, v34);
            if ((v34[0] & 1) == 0 && v35)
            {
              if (BYTE8(v35))
              {
                (*(*v35 + 40))();
              }

              v36 = 0u;
              v35 = 0u;
            }

            if (*&v33[0])
            {
              if (BYTE8(v33[0]))
              {
                (*(**&v33[0] + 40))();
              }

              memset(v33, 0, sizeof(v33));
            }

            if (*&v32[0])
            {
              if (BYTE8(v32[0]))
              {
                (*(**&v32[0] + 40))();
              }

              memset(v32, 0, sizeof(v32));
            }
          }
        }

        v29 = [v4 nextObject];

        v17 = v29;
      }

      while (v29);
    }

    goto LABEL_15;
  }

LABEL_16:
}

void re::attachOpenSubdivDataToModelDescriptor(_BYTE *a1, void *a2)
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *a1 = 1;
  v4 = [v3 property:@"creaseIndices"];
  v5 = [v3 property:@"creaseLengths"];
  v6 = [v3 property:@"creaseSharpnesses"];
  v7 = v6;
  if (v4)
  {
    if (v5)
    {
      if (v6)
      {
        if ([v6 arraySize])
        {
          v8 = [v7 arraySize];
          if (v8 == [v5 arraySize])
          {
            v9 = [v4 data];
            v10 = [v9 dataNoCopy];

            v11 = [v5 data];
            v12 = [v11 dataNoCopy];

            v13 = [v7 data];
            v59 = [v13 dataNoCopy];

            v58 = v12;
            v14 = [v12 bytes];
            v15 = [v7 arraySize];
            v16 = v15;
            if (v15)
            {
              LODWORD(v17) = 0;
              v18 = 0;
              v19 = v14;
              v20 = v15;
              while (1)
              {
                v22 = *v19++;
                v21 = v22;
                if (v22 < 2)
                {
                  break;
                }

                v17 = v21 + v17;
                v18 = v18 + v21 - 1;
                if (!--v20)
                {
                  goto LABEL_12;
                }
              }
            }

            else
            {
              v18 = 0;
              v17 = 0;
LABEL_12:
              if ([v4 arraySize] == v17)
              {
                v56 = a1;
                v57 = v14;
                v55 = v10;
                v23 = [v10 bytes];
                v24 = [v59 bytes];
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v78 = 0;
                v79 = 0;
                v80 = 0;
                if (v16)
                {
                  v27 = v24;
                  v28 = 0;
                  v29 = 0;
                  v30 = 0;
                  v31 = 0;
                  v32 = v65;
                  do
                  {
                    v33 = *(v57 + 4 * v28) - 1;
                    if (*(v57 + 4 * v28) != 1)
                    {
                      v34 = *(v27 + 4 * v28);
                      v35 = v66;
                      v36 = v33 + v30;
                      v38 = v79;
                      v37 = v80;
                      do
                      {
                        v39 = v29;
                        if (v32 <= v29)
                        {
                          v73 = 0;
                          v84 = 0u;
                          v85 = 0u;
                          memset(v83, 0, sizeof(v83));
                          v82 = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v81 = 136315906;
                          *&v81[4] = "operator[]";
                          *&v81[12] = 1024;
                          *&v81[14] = 468;
                          *&v81[18] = 2048;
                          *&v81[20] = v39;
                          *&v81[28] = 2048;
                          *&v81[30] = v32;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_69:
                          v73 = 0;
                          v84 = 0u;
                          v85 = 0u;
                          memset(v83, 0, sizeof(v83));
                          v82 = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v81 = 136315906;
                          *&v81[4] = "operator[]";
                          *&v81[12] = 1024;
                          *&v81[14] = 468;
                          *&v81[18] = 2048;
                          *&v81[20] = v24;
                          *&v81[28] = 2048;
                          *&v81[30] = v32;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
LABEL_70:
                          v73 = 0;
                          v84 = 0u;
                          v85 = 0u;
                          memset(v83, 0, sizeof(v83));
                          v82 = 0u;
                          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v81 = 136315906;
                          *&v81[4] = "operator[]";
                          *&v81[12] = 1024;
                          *&v81[14] = 468;
                          *&v81[18] = 2048;
                          *&v81[20] = v24;
                          *&v81[28] = 2048;
                          *&v81[30] = v38;
                          _os_log_send_and_compose_impl();
                          _os_crash_msg();
                          __break(1u);
                        }

                        *(v35 + 4 * v29) = *(v23 + 4 * v31);
                        v24 = v29 + 1;
                        if (v32 <= v24)
                        {
                          goto LABEL_69;
                        }

                        *(v35 + 4 * v24) = *(v23 + 4 * ++v31);
                        v24 = v30;
                        if (v38 <= v30)
                        {
                          goto LABEL_70;
                        }

                        *(v37 + 4 * v30++) = v34;
                        v29 += 2;
                        --v33;
                      }

                      while (v33);
                      v30 = v36;
                    }

                    ++v31;
                    ++v28;
                  }

                  while (v28 != v16);
                }

                v73 = v66;
                v74 = v65;
                *v81 = 0;
                *&v81[8] = 0;
                a1 = v56;
                re::GeomModelDescriptor::setAttribute<unsigned int,unsigned int>(v56, &v82, 4, &v73, v81, v75);
                v10 = v55;
                if ((v75[0] & 1) == 0 && v76)
                {
                  if (BYTE8(v76))
                  {
                    (*(*v76 + 40))();
                  }

                  v77 = 0u;
                  v76 = 0u;
                }

                v40 = v82;
                if (v82 && (BYTE8(v82) & 1) != 0)
                {
                  v40 = (*(*v82 + 40))();
                }

                v73 = v80;
                v74 = v79;
                *v81 = 0;
                *&v81[8] = 0;
                re::GeomModelDescriptor::setAttribute<float,unsigned int>(v56, &v82, 4, &v73, v81, v70);
                if ((v70[0] & 1) == 0 && v71)
                {
                  if (BYTE8(v71))
                  {
                    (*(*v71 + 40))();
                  }

                  v72 = 0u;
                  v71 = 0u;
                }

                if (v82 && (BYTE8(v82) & 1) != 0)
                {
                  (*(*v82 + 40))();
                }

                if (v78 && v79)
                {
                  (*(*v78 + 40))();
                }

                if (v64 && v65)
                {
                  (*(*v64 + 40))();
                }
              }
            }
          }
        }
      }
    }
  }

  v41 = [v3 property:@"cornerIndices"];
  v42 = [v3 property:@"cornerSharpness"];
  v43 = v42;
  if (v41)
  {
    if (v42)
    {
      if ([v42 arraySize])
      {
        v44 = [v43 arraySize];
        if (v44 == [v41 arraySize])
        {
          v60 = v4;
          v45 = [v41 data];
          v46 = [v45 dataNoCopy];
          v47 = a1;
          v48 = [v46 copy];

          v49 = [v43 data];
          v50 = [v49 dataNoCopy];
          v51 = [v50 copy];

          v52 = v48;
          *&v82 = v52;
          BYTE8(v82) = 5;
          v83[0] = [v41 arraySize];
          *&v83[1] = xmmword_1E3068150;
          v53 = v51;
          *v81 = v53;
          v81[8] = 6;
          *&v81[16] = [v43 arraySize];
          *&v81[24] = xmmword_1E3068150;
          re::GeomModelDescriptor::setAttribute(v47, &v64, 4, &v82, 0, v67);
          if ((v67[0] & 1) == 0 && v68)
          {
            if (BYTE8(v68))
            {
              (*(*v68 + 40))();
            }

            v69 = 0u;
            v68 = 0u;
          }

          v54 = v64;
          if (v64 && (v65 & 1) != 0)
          {
            v54 = (*(*v64 + 40))();
          }

          re::GeomModelDescriptor::setAttribute(v47, &v64, 4, v81, 0, v61);
          v4 = v60;
          if ((v61[0] & 1) == 0 && v62)
          {
            if (BYTE8(v62))
            {
              (*(*v62 + 40))();
            }

            v63 = 0u;
            v62 = 0u;
          }

          if (v64 && (v65 & 1) != 0)
          {
            (*(*v64 + 40))();
          }
        }
      }
    }
  }
}

uint64_t re::GeomModelDescriptor::attributeByName(re::GeomModelDescriptor *this, const re::DynamicString *a2)
{
  v3 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(this + 48, a2);
  if (v3)
  {
    if (*(this + 14) <= *v3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return *(this + 16) + 56 * *v3;
  }

  else
  {

    return re::GeomModelDescriptor::emptyAttribute(0);
  }
}

void re::makeGeomModelDescriptorFromUSKNode(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v329 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = [v12 property:@"orientation"];
  v14 = [v13 stringValue];
  v15 = [v14 isEqualToString:@"leftHanded"];

  v16 = [v12 property:@"faceVertexIndices"];
  v17 = [v12 property:@"faceVertexCounts"];
  v18 = [v12 property:@"points"];
  v19 = [v12 property:@"doubleSided"];
  v20 = v19;
  if (!v16)
  {
    v21 = "Skiping mesh due to missing face vertex indices property.";
LABEL_9:
    v22 = *v279;
    v23 = *&v279[16];
    v24 = *&v279[24];
    *a9 = 0;
    *(a9 + 8) = 100;
    *(a9 + 16) = re::AssetErrorCategory(void)::instance;
    *(a9 + 24) = v22;
    *(a9 + 40) = v23;
    *(a9 + 48) = v24;
    goto LABEL_37;
  }

  if (!v17)
  {
    v21 = "Skiping mesh due to missing face vertex counts property.";
    goto LABEL_9;
  }

  if (!v18)
  {
    v21 = "Skiping mesh due to missing points property";
    goto LABEL_9;
  }

  v206 = v13;
  v202 = v19;
  v199 = a9;
  v222 = a4;
  v217 = a2;
  if (v19)
  {
    v227 = [(_anonymous_namespace_ *)v19 BOOLValue];
  }

  else
  {
    v227 = 0;
  }

  v25 = [v16 data];
  v26 = [v17 data];
  v27 = [v18 data];
  v224 = [v27 arraySize];
  v230 = [v26 arraySize];
  v209 = v25;
  v28 = [v25 dataNoCopy];
  v29 = [v28 copy];

  v201 = v26;
  v30 = [v26 dataNoCopy];
  v31 = [v30 copy];

  v200 = v27;
  v32 = [v27 dataNoCopy];
  v33 = [v32 copy];

  v210 = v29;
  if (!v29)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v210 = v34;
  }

  v203 = v18;
  v204 = v17;
  v205 = v16;
  v35 = v31;
  if (!v31)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v35 = v34;
  }

  v36 = v230;
  if (!v33)
  {
    v34 = objc_alloc_init(MEMORY[0x1E695DEF0]);
    v33 = v34;
  }

  v208 = v33;
  *v279 = 0;
  v279[2] = 0;
  memset(&v279[4], 0, 80);
  *&v279[84] = 0x7FFFFFFFLL;
  v280 = 0;
  v281 = 0uLL;
  v282 = 0;
  memset(v283, 0, 44);
  *&v283[44] = 0x7FFFFFFFLL;
  *(&v284 + 1) = 0;
  v285 = 0uLL;
  re::DynamicString::setCapacity(&v284, 0);
  v207 = v12;
  v37 = [v12 name];
  v38 = [v37 stringValue];
  v39 = [v38 UTF8String];

  re::DynamicString::operator=(&v284, &v277);
  v279[2] = v227;
  v40 = [v35 length];
  v198 = v35;
  if (v40 >= 4 * v230)
  {
    v42 = [v210 length];
    v43 = [v209 arraySize];
    if (v42 < 4 * v43)
    {
      v41 = v304[0];
      goto LABEL_21;
    }

    v47 = [(_anonymous_namespace_ *)v33 length];
    v12 = v207;
    if (v47 < 12 * v224)
    {
      v48 = v304[0];
      v49 = v304[1];
      *v199 = 0;
      *(v199 + 8) = 100;
      *(v199 + 16) = re::AssetErrorCategory(void)::instance;
      *(v199 + 24) = v48;
      *(v199 + 40) = v49;
      goto LABEL_22;
    }

    v273 = v35;
    v274 = 5;
    v275 = v230;
    v276 = xmmword_1E3068150;
    v269 = v210;
    v270 = 5;
    v271 = [v209 arraySize];
    v272 = xmmword_1E3068150;
    v265 = v33;
    v266 = 11;
    v267 = v224;
    v268 = xmmword_1E3068140;
    if (v15)
    {
      v279[1] = 1;
    }

    re::GeomModelDescriptor::setSurfaceTopology(v279, v224, &v273, &v269, &v262);
    v51 = v222;
    if ((v262 & 1) == 0)
    {
      v50 = v263;
      if (v263)
      {
        if (BYTE8(v263))
        {
          v50 = (*(*v263 + 40))();
        }

        v264 = 0u;
        v263 = 0u;
      }
    }

    re::GeomModelDescriptor::setAttribute(v279, v304, 1, &v265, 0, v259);
    if ((v259[0] & 1) == 0 && v260)
    {
      if (BYTE8(v260))
      {
        (*(*v260 + 40))();
      }

      v261 = 0u;
      v260 = 0u;
    }

    if (*&v304[0] && (BYTE8(v304[0]) & 1) != 0)
    {
      (*(**&v304[0] + 40))();
    }

    if (*(v217 + 8))
    {
      v52 = *(v217 + 16);
    }

    else
    {
      v52 = (v217 + 9);
    }

    if (*v52)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v54 = [v207 property:v53];
    }

    else
    {
      v53 = re::primaryUVSetForMesh(v207);
      v54 = v53;
    }

    v55 = [v207 property:@"normals"];
    v56 = v55;
    if (v54)
    {
      v57 = v55;
      re::addPropertyToGeomModelDescriptorHelper(v304, v207, v54, @"constant", v279, "vertexUV", 0);
      if (LOBYTE(v304[0]) != 1)
      {
        goto LABEL_77;
      }

      v59 = [v54 name];
      v60 = [v59 stringValue];
      v61 = [v60 UTF8String];
      v62 = re::GeomModelDescriptor::addAttributeAlias(v279, &v294, v319, v256);
      if ((v256[0] & 1) == 0 && v257)
      {
        if (BYTE8(v257))
        {
          (*(*v257 + 40))(v62);
        }

        v62 = 0uLL;
        v258 = 0u;
        v257 = 0u;
      }

      if (*v319)
      {
        if (v319[8])
        {
          (*(**v319 + 40))(v62);
        }

        memset(v319, 0, 32);
      }

      if (v294 && (BYTE8(v294) & 1) != 0)
      {
        (*(*v294 + 40))();
      }

      if ((v304[0] & 1) == 0)
      {
LABEL_77:
        if (*(&v304[1] + 1) && (v304[2] & 1) != 0)
        {
          (*(**(&v304[1] + 1) + 40))();
        }
      }

      v56 = v57;
    }

    v63 = [v56 data];

    if (!v63)
    {
      v64 = [v207 property:@"primvars:normals"];

      v56 = v64;
    }

    v196 = v56;
    if (v56)
    {
      re::addPropertyToGeomModelDescriptorHelper(v304, v207, v56, @"vertex", v279, "vertexNormal", 0);
      if (LOBYTE(v304[0]) != 1)
      {
        goto LABEL_98;
      }

      v66 = [v56 name];
      v67 = [v66 stringValue];
      v68 = [v67 UTF8String];
      v69 = re::GeomModelDescriptor::addAttributeAlias(v279, &v294, v319, v253);
      if ((v253[0] & 1) == 0 && v254)
      {
        if (BYTE8(v254))
        {
          (*(*v254 + 40))(v69);
        }

        v69 = 0uLL;
        v255 = 0u;
        v254 = 0u;
      }

      if (*v319)
      {
        if (v319[8])
        {
          (*(**v319 + 40))(v69);
        }

        memset(v319, 0, 32);
      }

      if (v294 && (BYTE8(v294) & 1) != 0)
      {
        (*(*v294 + 40))();
      }

      if ((v304[0] & 1) == 0)
      {
LABEL_98:
        if (*(&v304[1] + 1) && (v304[2] & 1) != 0)
        {
          (*(**(&v304[1] + 1) + 40))();
        }
      }
    }

    v70 = v207;
    v71 = [v70 property:@"primvars:displayColor"];
    v72 = [v70 property:@"primvars:displayOpacity"];
    v73 = v72;
    v197 = v54;
    v215 = v70;
    if (v71)
    {
      v74 = [v71 type];
      v75 = *MEMORY[0x1E69DEDD8];

      if (v74 == v75)
      {
        re::addPropertyToGeomModelDescriptorHelper(v304, v70, v71, @"constant", v279, "vertexColor", 0);
        if ((v304[0] & 1) == 0 && *(&v304[1] + 1))
        {
          if (v304[2])
          {
            (*(**(&v304[1] + 1) + 40))();
          }

          memset(&v304[1] + 8, 0, 32);
        }

        goto LABEL_260;
      }

      v76 = [v71 type];
      if (v76 == *MEMORY[0x1E69DEDD0])
      {
        re::addPropertyToGeomModelDescriptorHelper(v304, v70, v71, @"constant", v279, 0, 0);
        v77 = LOBYTE(v304[0]);
        if (v304[0] & 1) == 0 && *(&v304[1] + 1) && (v304[2])
        {
          (*(**(&v304[1] + 1) + 40))();
        }
      }

      else
      {
        v77 = 0;
      }
    }

    else
    {
      v77 = 0;
    }

    v228 = v73;
    if (v73)
    {
      v78 = [(_anonymous_namespace_ *)v73 type];
      if (v78 == *MEMORY[0x1E69DEDE8])
      {
        re::addPropertyToGeomModelDescriptorHelper(v304, v70, v73, @"constant", v279, 0, 0);
        LODWORD(v73) = LOBYTE(v304[0]);
        if (v304[0] & 1) == 0 && *(&v304[1] + 1) && (v304[2])
        {
          (*(**(&v304[1] + 1) + 40))();
        }
      }

      else
      {
        LODWORD(v73) = 0;
      }
    }

    v289 = 0;
    v288 = 0;
    v290 = 0;
    v225 = v71;
    v218 = v77;
    if (v77)
    {
      v79 = [v71 name];
      v80 = [v79 stringValue];
      v81 = [v80 UTF8String];

      v82 = re::GeomModelDescriptor::attributeByName(v279, &v294);
      v83 = v82;
      v84 = *(v82 + 5);
      if (v84)
      {
        v85 = (v84 + 8);
        if (*(v84 + 32) == 1 && (*(v84 + 33) | 2) == 0xB)
        {
          v86 = (v84 + 8);
          v87 = *(v84 + 48);
          v88 = *(v84 + 24) + *(v84 + 56);
          v89 = *(v84 + 40);
          v90 = (v84 + 8);

          v91 = 0;
          v194 = 0;
          v195 = 1;
          v92 = v84;
        }

        else
        {
          v94 = re::internal::DataPayload::computeConvertedValues<re::PackedFloat3>(v84, v304);
          if (LOBYTE(v304[0]) == 1)
          {
            v91 = *(&v304[0] + 1);
            v89 = *&v304[1];
            v87 = 12;
            v88 = *(&v304[1] + 1);
          }

          else
          {
            if (*(&v304[1] + 1) && (v304[2] & 1) != 0)
            {
              (*(**(&v304[1] + 1) + 40))(v94);
            }

            v87 = 0;
            v89 = 0;
            v91 = 0;
            v88 = 0;
          }

          v92 = 0;
          v195 = v89 == 0;
          v194 = v88;
        }
      }

      else
      {
        v88 = 0;
        v194 = 0;
        v91 = 0;
        v92 = 0;
        v89 = 0;
        v87 = 0;
        v195 = 1;
      }

      v95 = *(v83 + 48);
      v70 = v215;
      if (v95)
      {
        re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v83, v304);
        v95 = *&v304[1];
      }

      else
      {
        memset(v304, 0, 56);
      }

      if (*(v83 + 48))
      {
        v96 = v95;
      }

      else
      {
        v96 = v89;
      }

      *v319 = 0x3F8000003F800000;
      *&v319[8] = 0x3F8000003F800000;
      v97 = v289;
      if (v289)
      {
        v98 = 0;
        v99 = v290;
        do
        {
          v100 = v98;
          if (*(v83 + 48))
          {
            v100 = *(*&v304[0] + *(&v304[0] + 1) * v98);
          }

          if (v100 < v89)
          {
            v101 = v88 + v100 * v87;
            *&v102 = *v101;
            DWORD2(v102) = *(v101 + 8);
            HIDWORD(v102) = 1.0;
            *(v99 + 16 * v98) = v102;
          }

          ++v98;
        }

        while (v97 != v98);
      }

      v93 = *(v83 + 32);
      v54 = v197;
      v51 = v222;
      v71 = v225;
      if (*&v304[2])
      {
        if (*(&v304[2] + 1))
        {
          (*(**&v304[2] + 40))();
          *(&v304[2] + 1) = 0;
          *&v304[3] = 0;
        }

        *&v304[2] = 0;
      }

      if (*(&v304[1] + 1))
      {
      }

      if (v91 != 0 && !v195)
      {
        (*(*v91 + 40))(v91, v194);
      }

      if (v92)
      {
      }

      v72 = v294;
      if (v294 && (BYTE8(v294) & 1) != 0)
      {
        v72 = (*(*v294 + 40))();
      }

      v12 = v207;
    }

    else
    {
      v93 = 1;
    }

    if (v73)
    {
      v73 = v228;
      v103 = [(_anonymous_namespace_ *)v228 name];
      v104 = [v103 stringValue];
      v105 = [v104 UTF8String];

      v106 = re::GeomModelDescriptor::attributeByName(v279, &v294);
      if (v218)
      {
        v93 = v93;
      }

      else
      {
        v93 = *(v106 + 32);
      }

      if (*(v106 + 32) == v93)
      {
        v107 = v106;
        v108 = v93;
        v109 = *(v106 + 40);
        if (v109)
        {
          v110 = (v109 + 8);
          if (*(v109 + 32) == 1 && *(v109 + 33) == 6)
          {
            v111 = (v109 + 8);
            v112 = *(v109 + 48);
            v113 = *(v109 + 24) + *(v109 + 56);
            v114 = *(v109 + 40);
            v115 = (v109 + 8);

            v116 = 0;
            v219 = 0;
            v117 = 1;
            v118 = v109;
          }

          else
          {
            v119 = re::internal::DataPayload::computePoDConversionHelper<float>(v109, v304);
            if (LOBYTE(v304[0]) == 1)
            {
              v116 = *(&v304[0] + 1);
              v114 = *&v304[1];
              v112 = 4;
              v113 = *(&v304[1] + 1);
            }

            else
            {
              if (*(&v304[1] + 1) && (v304[2] & 1) != 0)
              {
                (*(**(&v304[1] + 1) + 40))(v119);
              }

              v113 = 0;
              v112 = 0;
              v114 = 0;
              v116 = 0;
            }

            v118 = 0;
            v117 = v114 == 0;
            v219 = v113;
          }
        }

        else
        {
          v219 = 0;
          v116 = 0;
          v118 = 0;
          v114 = 0;
          v112 = 0;
          v113 = 0;
          v117 = 1;
        }

        v93 = v108;
        if (*(v107 + 48))
        {
          re::GeomModelDescriptor::AttributeData::makeConvertedIndices<unsigned int>(v107, v304);
        }

        else
        {
          memset(v304, 0, 56);
        }

        if (!v288)
        {
          if (*(v107 + 48))
          {
            v120 = *&v304[1];
          }

          else
          {
            v120 = v114;
          }

          *v319 = 0x3F8000003F800000;
          *&v319[8] = 0x3F8000003F800000;
        }

        v121 = v289;
        if (v289)
        {
          v122 = 0;
          v123 = (v290 + 12);
          while (1)
          {
            v124 = v122;
            if (!*(v107 + 48))
            {
              goto LABEL_197;
            }

            if (v122 < *&v304[1])
            {
              break;
            }

LABEL_199:
            ++v122;
            v123 += 4;
            if (v121 == v122)
            {
              goto LABEL_200;
            }
          }

          v124 = *(*&v304[0] + *(&v304[0] + 1) * v122);
LABEL_197:
          if (v124 < v114)
          {
            *v123 = *(v113 + v124 * v112);
          }

          goto LABEL_199;
        }

LABEL_200:
        v12 = v207;
        v51 = v222;
        v73 = v228;
        if (*&v304[2])
        {
          if (*(&v304[2] + 1))
          {
            (*(**&v304[2] + 40))();
            *(&v304[2] + 1) = 0;
            *&v304[3] = 0;
          }

          *&v304[2] = 0;
        }

        if (*(&v304[1] + 1))
        {
        }

        if (v116 != 0 && !v117)
        {
          (*(*v116 + 40))(v116, v219);
        }

        if (v118)
        {
        }
      }

      v72 = v294;
      v70 = v215;
      if (v294 && (BYTE8(v294) & 1) != 0)
      {
        v72 = (*(*v294 + 40))();
      }

      v54 = v197;
      v71 = v225;
    }

    else
    {
      v73 = v228;
    }

    if (v288)
    {
      v125 = v290;
      v126 = v93;
      j = v289;
      v292 = 0;
      v291 = 0;
      v128 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v283[8], &v286);
      if (v128)
      {
        v129 = v128;
      }

      else
      {
        v129 = &v286;
      }

      re::DynamicString::DynamicString(&v299, v129);
      v131 = re::GeomModelDescriptor::validateIfCoreAttribute(&v299, v126, 10, &v294);
      if (v294)
      {
        if (j)
        {
          v319[32] = 4;
          v320 = 0;
          v321 = 0;
          v133 = re::DynamicString::operator=(v132, &v299);
          v319[32] = v126;
          v134 = re::globalAllocators(v133);
          if (j >> 60 || 16 * j >= 0xFFFFFFFFFFFFFFF0)
          {
LABEL_369:
            re::internal::assertLog(6, v135, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 16, j);
            _os_crash();
            __break(1u);
          }

          else
          {
            v136 = (*(*v134[2] + 32))(v134[2], (16 * j + 16) | 0xF, 0);
            v137 = ((v136 + 31) & 0xFFFFFFFFFFFFFFF0);
            *(v137 - 2) = j;
            *(v137 - 1) = v136;
            bzero(v137, 16 * j);
            *&v304[0] = v137;
            memcpy(v137, v125, 16 * j);
            *v322 = j;
            v303 = 16;
            v302 = 0;
            v301 = 1;
            re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(v304, re::ConvertToGeomModelValueType<re::Vector4<float>>::kValueType, v322, &v303, &v302, &v301, v304, re::GeomModelDescriptor::freeReNewedArrayData<re::Vector4<float>>, &v293);
            v138 = v320;
            v320 = v293;
            v293 = v138;
            if (v138)
            {
            }

            if (v292)
            {
              re::GeomModelDescriptor::makeSlicePayload<unsigned int>(&v291, v304);
              v139 = v321;
              v321 = *&v304[0];
              *&v304[0] = v139;
              if (v139)
              {
              }
            }

            v140 = v279;
            v141 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v279[48], &v299);
            if (!v141)
            {
              *&v304[0] = *(&v281 + 1);
              re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v279[48], &v299, v304);
              v131.n128_f64[0] = re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add(&v280, v319);
              v144 = v321;
              goto LABEL_233;
            }

            v125 = *v141;
            v126 = *(&v281 + 1);
            if (*(&v281 + 1) > *v141)
            {
              v142 = re::DynamicString::operator=((*v283 + 56 * v125), v319);
              *(v142 + 32) = v319[32];
              v143 = *(v142 + 5);
              *(v142 + 5) = v320;
              v320 = v143;
              v144 = *(v142 + 6);
              *(v142 + 6) = v321;
              v321 = v144;
LABEL_233:
              if (v144)
              {

                v321 = 0;
              }

              if (v320)
              {

                v320 = 0;
              }

              if (*v319 && (v319[8] & 1) != 0)
              {
                (*(**v319 + 40))();
              }

              v145 = 1;
              goto LABEL_241;
            }
          }

          v303 = 0;
          *v305 = 0u;
          memset(v304, 0, sizeof(v304));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v322 = 136315906;
          *&v322[4] = "operator[]";
          v323 = 1024;
          v324 = 789;
          v325 = 2048;
          v326 = v125;
          v327 = 2048;
          v328 = v126;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v145 = 0;
        v140 = *&v304[1];
        v125 = *&v304[0];
        LOBYTE(j) = BYTE8(v304[0]);
      }

      else
      {
        v145 = 0;
        v125 = *(&v295 + 1);
        LOBYTE(j) = v296;
        v296 = 0;
        *(&v295 + 1) = 0;
        v140 = v297;
        v298 = 0;
        v297 = 0;
      }

LABEL_241:
      if (v294 & 1) == 0 && *(&v295 + 1) && (v296)
      {
        (*(**(&v295 + 1) + 40))(v131);
      }

      if (v299 && (v300 & 1) != 0)
      {
        (*(*v299 + 40))(v131);
      }

      if (v125)
      {
        v146 = v145;
      }

      else
      {
        v146 = 1;
      }

      if (v146 & 1) == 0 && (j)
      {
        (*(*v125 + 40))(v125, v140, v131);
      }

      v70 = v215;
      if (v286 && (v287 & 1) != 0)
      {
        (*(*v286 + 40))(v131);
      }

      if (v288 && v289)
      {
        (*(*v288 + 40))(v131);
      }
    }

LABEL_260:

    if (v51)
    {
      isCatmullClarkSurface = re::isCatmullClarkSurface(v70);
    }

    else
    {
      isCatmullClarkSurface = 0;
    }

    v147 = [MEMORY[0x1E69DED88] meshGroupsWithNode:v70];
    v226 = v147;
    if ([v147 count])
    {
      v296 = 0;
      *&v295 = 0;
      v294 = 0uLL;
      DWORD2(v295) = 0;
      LODWORD(v304[0]) = 0;
      re::DynamicArray<unsigned int>::resize(&v294, v230, v304);
      v249 = 0u;
      v250 = 0u;
      v251 = 0u;
      v252 = 0u;
      obj = v147;
      v229 = [obj countByEnumeratingWithState:&v249 objects:v318 count:16];
      if (v229)
      {
        v223 = *v250;
        do
        {
          for (i = 0; i != v229; ++i)
          {
            if (*v250 != v223)
            {
              objc_enumerationMutation(obj);
            }

            v149 = *(*(&v249 + 1) + 8 * i);
            v150 = [v149 inheritedMaterialBinding];
            v126 = v150;
            if (!v150)
            {
              goto LABEL_280;
            }

            v151 = [v150 path];
            v152 = [v151 stringValue];
            v153 = [v152 UTF8String];
            LOBYTE(v304[0]) = isCatmullClarkSurface;
            re::DynamicString::DynamicString((v304 + 8), v319);
            v154 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::tryGet(a3, v304);
            if (*(&v304[0] + 1))
            {
              if (v304[1])
              {
                (*(**(&v304[0] + 1) + 40))();
              }

              memset(v304 + 8, 0, 32);
            }

            if (*v319)
            {
              if (v319[8])
              {
                (*(**v319 + 40))();
              }

              memset(v319, 0, 32);
            }

            if (v154)
            {
              v155 = *(v154 + 8);
            }

            else
            {
LABEL_280:
              v155 = 0;
            }

            v156 = [v149 property:@"indices"];
            v157 = [v156 data];
            v158 = [v157 dataNoCopy];
            v159 = [v158 length];
            if (v159 >= 4 * [v157 arraySize])
            {
              v125 = [v158 bytes];
              if ([v157 arraySize])
              {
                for (j = 0; [v157 arraySize] > j; ++j)
                {
                  v160 = *(v125 + 4 * j);
                  if (v160 < v36)
                  {
                    v161 = v295;
                    if (v295 <= v160)
                    {
                      *v322 = 0;
                      *v305 = 0u;
                      memset(v304, 0, sizeof(v304));
                      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      *v319 = 136315906;
                      *&v319[4] = "operator[]";
                      *&v319[12] = 1024;
                      *&v319[14] = 789;
                      *&v319[18] = 2048;
                      *&v319[20] = v160;
                      *&v319[28] = 2048;
                      *&v319[30] = v161;
                      _os_log_send_and_compose_impl();
                      _os_crash_msg();
                      __break(1u);
                      goto LABEL_369;
                    }

                    *(v296 + 4 * v160) = v155;
                    v36 = v230;
                  }
                }
              }
            }

            v147 = v226;
          }

          v229 = [obj countByEnumeratingWithState:&v249 objects:v318 count:16];
        }

        while (v229);
      }

      v162 = re::GeomModelDescriptor::setMaterialAssignmentsPerFace(v279, v296, v295, v246);
      v12 = v207;
      v54 = v197;
      v70 = v215;
      if ((v246[0] & 1) == 0 && v247)
      {
        if (BYTE8(v247))
        {
          (*(*v247 + 40))(v162);
        }

        v162 = 0uLL;
        v248 = 0u;
        v247 = 0u;
      }

      if (v294 && v296)
      {
        (*(*v294 + 40))(v162);
      }
    }

    else
    {
      v163 = [v70 inheritedMaterialBinding];
      v164 = v163;
      if (v163)
      {
        v165 = [v163 path];
        v166 = [v165 stringValue];
        v167 = [v166 UTF8String];
        LOBYTE(v304[0]) = isCatmullClarkSurface;
        re::DynamicString::DynamicString((v304 + 8), &v294);
        v168 = re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::tryGet(a3, v304);
        if (*(&v304[0] + 1))
        {
          if (v304[1])
          {
            (*(**(&v304[0] + 1) + 40))();
          }

          memset(v304 + 8, 0, 32);
        }

        v54 = v197;
        if (v294)
        {
          if (BYTE8(v294))
          {
            (*(*v294 + 40))();
          }

          v294 = 0u;
          v295 = 0u;
        }

        v70 = v215;
        if (v168)
        {
          *&v279[4] = *(v168 + 8);
        }
      }
    }

    if (a8)
    {
      re::addSkeletonBindingsAsAttributesToModelDescriptor(v279, v70, a7, a8);
    }

    if (isCatmullClarkSurface)
    {
      re::attachOpenSubdivDataToModelDescriptor(v279, v70);
    }

    if (a5)
    {
      re::attachNewBlendShapeDataIfItExistsToModelDescriptor(v279, v70);
    }

    v169 = [v70 properties];
    v170 = v169;
    if (a6)
    {
      v244 = 0u;
      v245 = 0u;
      v242 = 0u;
      v243 = 0u;
      v171 = v169;
      v172 = [v171 countByEnumeratingWithState:&v242 objects:v317 count:16];
      if (!v172)
      {
LABEL_357:

        LOBYTE(v304[0]) = v279[0];
        *(v304 + 1) = *&v279[1];
        DWORD1(v304[0]) = *&v279[4];
        v188 = *&v279[8];
        *&v279[8] = 0;
        v304[1] = *&v279[16];
        v304[2] = *&v279[32];
        v304[3] = *&v279[48];
        memset(&v279[32], 0, 40);
        *(&v304[0] + 1) = v188;
        *v305 = *&v279[64];
        *&v305[8] = *&v279[72];
        *&v279[72] = xmmword_1E3058120;
        v306 = 1;
        v307 = v280;
        v280 = 0;
        v308 = v281;
        v281 = 0u;
        ++v282;
        v310 = *v283;
        v311 = *&v283[16];
        memset(v283, 0, 32);
        v312 = *&v283[32];
        *&v283[32] = xmmword_1E3058120;
        v309 = 1;
        v313 = 1;
        v315 = v285;
        v285 = 0uLL;
        v314 = v284;
        v284 = 0uLL;
        re::GeomModelDescriptor::reset(v279);
        v189 = v304[2];
        *(v199 + 24) = v304[1];
        *(v199 + 40) = v189;
        *(v199 + 56) = v304[3];
        *(v199 + 80) = *&v305[8];
        *(v199 + 112) = v308;
        v190 = v311;
        *(v199 + 136) = v310;
        *(v199 + 8) = v304[0];
        *(v199 + 9) = *(v304 + 1);
        *(v199 + 12) = DWORD1(v304[0]);
        v191 = *v305;
        *(v199 + 16) = *(&v304[0] + 1);
        *v199 = 1;
        memset(&v304[2], 0, 32);
        *(v199 + 72) = v191;
        *(&v304[0] + 1) = 0;
        *v305 = 0;
        *&v305[8] = xmmword_1E3058120;
        *(v199 + 96) = 1;
        *(v199 + 104) = v307;
        v307 = 0;
        v308 = 0u;
        ++v309;
        *(v199 + 128) = 1;
        *(v199 + 152) = v190;
        v310 = 0u;
        v311 = 0u;
        *(v199 + 168) = v312;
        v312 = xmmword_1E3058120;
        *(v199 + 184) = 1;
        v192 = *(&v315 + 1);
        *(v199 + 208) = v315;
        *(v199 + 216) = v192;
        v315 = 0uLL;
        v193 = *(&v314 + 1);
        *(v199 + 192) = v314;
        *(v199 + 200) = v193;
        v314 = 0uLL;
        re::GeomModelDescriptor::reset(v304);
        v16 = v205;
        v13 = v206;
        v18 = v203;
        v17 = v204;
        v46 = v200;
        v45 = v201;
        if (v314)
        {
          if (BYTE8(v314))
          {
            (*(*v314 + 40))();
          }

          v315 = 0u;
          v314 = 0u;
        }

        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v310 + 1);
        re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(&v307);
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v304[3]);
        if (*(&v304[2] + 1))
        {

          *(&v304[2] + 1) = 0;
        }

        if (*&v304[2])
        {

          *&v304[2] = 0;
        }

        if (*(&v304[0] + 1))
        {
        }

        goto LABEL_23;
      }

      v173 = v172;
      v231 = v170;
      v174 = *v243;
      do
      {
        for (k = 0; k != v173; ++k)
        {
          if (*v243 != v174)
          {
            objc_enumerationMutation(v171);
          }

          v176 = *(*(&v242 + 1) + 8 * k);
          if (([v176 isEqualToString:@"orientation"] & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"faceVertexIndices") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"faceVertexCounts") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"normals") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"primvars:normals") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"primvars:displayColor") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"primvars:skel:jointWeights") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"primvars:skel:jointIndices") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"primvars:skel:geomBindTransform") & 1) == 0 && (objc_msgSend(v176, "isEqualToString:", @"skel:joints") & 1) == 0)
          {
            v177 = [v171 objectForKey:v176];
            re::addPropertyToGeomModelDescriptorHelper(v239, v215, v177, @"constant", v279, 0, 0);
            if ((v239[0] & 1) == 0 && v240)
            {
              if (BYTE8(v240))
              {
                (*(*v240 + 40))();
              }

              v241 = 0u;
              v240 = 0u;
            }
          }
        }

        v173 = [v171 countByEnumeratingWithState:&v242 objects:v317 count:16];
      }

      while (v173);
    }

    else
    {
      v178 = [v54 name];
      v171 = [v178 stringValue];

      v237 = 0u;
      v238 = 0u;
      v235 = 0u;
      v236 = 0u;
      v231 = v170;
      v179 = v170;
      v180 = [v179 countByEnumeratingWithState:&v235 objects:v316 count:16];
      if (v180)
      {
        v181 = v180;
        v182 = *v236;
        v183 = *MEMORY[0x1E69DEEC0];
        do
        {
          for (m = 0; m != v181; ++m)
          {
            if (*v236 != v182)
            {
              objc_enumerationMutation(v179);
            }

            v185 = *(*(&v235 + 1) + 8 * m);
            v186 = [v179 objectForKey:v185];
            v187 = [v186 role];

            if (v187 == v183 && ([v185 isEqualToString:v171] & 1) == 0)
            {
              re::addPropertyToGeomModelDescriptorHelper(v232, v215, v186, @"constant", v279, 0, 0);
              if ((v232[0] & 1) == 0)
              {
                if (v233)
                {
                  if (BYTE8(v233))
                  {
                    (*(*v233 + 40))();
                  }

                  v234 = 0u;
                  v233 = 0u;
                }
              }
            }
          }

          v181 = [v179 countByEnumeratingWithState:&v235 objects:v316 count:16];
        }

        while (v181);
      }
    }

    v12 = v207;
    v147 = v226;
    v170 = v231;
    goto LABEL_357;
  }

  v41 = v304[0];
LABEL_21:
  v44 = v304[1];
  *v199 = 0;
  *(v199 + 8) = 100;
  *(v199 + 16) = re::AssetErrorCategory(void)::instance;
  *(v199 + 24) = v41;
  *(v199 + 40) = v44;
  v12 = v207;
LABEL_22:
  v16 = v205;
  v13 = v206;
  v18 = v203;
  v17 = v204;
  v46 = v200;
  v45 = v201;
LABEL_23:
  if (v277 && (v278 & 1) != 0)
  {
    (*(*v277 + 40))();
  }

  if (v284)
  {
    if (BYTE8(v284))
    {
      (*(*v284 + 40))();
    }

    v285 = 0u;
    v284 = 0u;
  }

  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v283[8]);
  re::DynamicArray<re::GeomModelDescriptor::AttributeData>::deinit(&v280);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v279[48]);
  if (*&v279[40])
  {

    *&v279[40] = 0;
  }

  v20 = v202;
  if (*&v279[32])
  {

    *&v279[32] = 0;
  }

  if (*&v279[8])
  {
  }

LABEL_37:
}

uint64_t re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::tryGet(uint64_t a1, char *a2)
{
  v4 = re::Hash<re::ImportMaterialSignature>::operator()(v6, a2);
  re::HashTable<re::ImportMaterialSignature,re::MaterialInfoUSK,re::Hash<re::ImportMaterialSignature>,re::EqualTo<re::ImportMaterialSignature>,true,false>::findEntry<re::ImportMaterialSignature>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 72 * v7 + 48;
  }
}

uint64_t re::GeomModelDescriptor::setAttribute<float,unsigned int>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, re *a4@<X3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v36, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v36, a3, 6, v31);
  if (v31[0])
  {
    if (*(a4 + 1))
    {
      v28 = 4;
      v29 = 0;
      v30 = 0;
      re::DynamicString::operator=(&v26, &v36);
      v28 = a3;
      re::GeomModelDescriptor::makeSlicePayload<float>(a4, &v47);
      v15 = v29;
      v29 = v47;
      *&v47 = v15;
      if (v15)
      {
      }

      if (*(a5 + 1))
      {
        *a6 = 1;
        re::GeomModelDescriptor::makeSlicePayload<unsigned int>(a5, &v47);
        v16 = v30;
        v30 = v47;
        *&v47 = v16;
        if (v16)
        {
        }
      }

      v17 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v36);
      if (v17)
      {
        v18 = *v17;
        v19 = a1[14];
        if (v19 <= *v17)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 789;
          v43 = 2048;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v20 = re::DynamicString::operator=((a1[16] + 56 * v18), &v26);
        *(v20 + 32) = v28;
        v21 = *(v20 + 5);
        *(v20 + 5) = v29;
        v29 = v21;
        v22 = *(v20 + 6);
        *(v20 + 6) = v30;
        v30 = v22;
      }

      else
      {
        *&v47 = a1[14];
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v36, &v47);
        re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v26);
        v22 = v30;
      }

      *a6 = 1;
      if (v22)
      {

        v30 = 0;
      }

      if (v29)
      {

        v29 = 0;
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    else
    {
      v23 = v47;
      v24 = v48;
      *a6 = 0;
      *(a6 + 8) = 100;
      *(a6 + 16) = re::AssetErrorCategory(void)::instance;
      *(a6 + 24) = v23;
      *(a6 + 40) = v24;
    }
  }

  else
  {
    *a6 = v31[0];
    *(a6 + 8) = v32;
    *(a6 + 24) = v33;
    *(a6 + 48) = v35;
    *(a6 + 32) = v34;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
  }

  if (v31[0] & 1) == 0 && v33 && (v34)
  {
    (*(*v33 + 40))();
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

uint64_t re::GeomModelDescriptor::makeSlicePayload<float>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v6 = *(a1 + 1);
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!(v6 >> 62) && 4 * v6 < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = (*(*v4[2] + 32))(v4[2], (4 * v6 + 16) | 3, 0);
    v8 = ((v7 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    *(v8 - 2) = v6;
    *(v8 - 1) = v7;
    bzero(v8, 4 * v6);
    v9 = 4 * *(a1 + 1);
LABEL_6:
    v16 = v8;
    memcpy(v8, *a1, v9);
    v10 = *(a1 + 1);
    v14 = 4;
    v15 = v10;
    v13 = 0;
    v12 = 1;
    return re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(&v16, &re::ConvertToGeomModelValueType<float>::kValueType, &v15, &v14, &v13, &v12, &v16, re::GeomModelDescriptor::freeReNewedArrayData<float>, a2);
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::GeomModelDescriptor::freeReNewedArrayData<float>(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

uint64_t re::GeomModelDescriptor::setAttribute<int,unsigned int>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, re *a4@<X3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v36, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v36, a3, 4, v31);
  if (v31[0])
  {
    if (*(a4 + 1))
    {
      v28 = 4;
      v29 = 0;
      v30 = 0;
      re::DynamicString::operator=(&v26, &v36);
      v28 = a3;
      re::GeomModelDescriptor::makeSlicePayload<int>(a4, &v47);
      v15 = v29;
      v29 = v47;
      *&v47 = v15;
      if (v15)
      {
      }

      if (*(a5 + 1))
      {
        *a6 = 1;
        re::GeomModelDescriptor::makeSlicePayload<unsigned int>(a5, &v47);
        v16 = v30;
        v30 = v47;
        *&v47 = v16;
        if (v16)
        {
        }
      }

      v17 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v36);
      if (v17)
      {
        v18 = *v17;
        v19 = a1[14];
        if (v19 <= *v17)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 789;
          v43 = 2048;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v20 = re::DynamicString::operator=((a1[16] + 56 * v18), &v26);
        *(v20 + 32) = v28;
        v21 = *(v20 + 5);
        *(v20 + 5) = v29;
        v29 = v21;
        v22 = *(v20 + 6);
        *(v20 + 6) = v30;
        v30 = v22;
      }

      else
      {
        *&v47 = a1[14];
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v36, &v47);
        re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v26);
        v22 = v30;
      }

      *a6 = 1;
      if (v22)
      {

        v30 = 0;
      }

      if (v29)
      {

        v29 = 0;
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    else
    {
      v23 = v47;
      v24 = v48;
      *a6 = 0;
      *(a6 + 8) = 100;
      *(a6 + 16) = re::AssetErrorCategory(void)::instance;
      *(a6 + 24) = v23;
      *(a6 + 40) = v24;
    }
  }

  else
  {
    *a6 = v31[0];
    *(a6 + 8) = v32;
    *(a6 + 24) = v33;
    *(a6 + 48) = v35;
    *(a6 + 32) = v34;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
  }

  if (v31[0] & 1) == 0 && v33 && (v34)
  {
    (*(*v33 + 40))();
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

uint64_t re::GeomModelDescriptor::makeSlicePayload<int>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v6 = *(a1 + 1);
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!(v6 >> 62) && 4 * v6 < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = (*(*v4[2] + 32))(v4[2], (4 * v6 + 16) | 3, 0);
    v8 = ((v7 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    *(v8 - 2) = v6;
    *(v8 - 1) = v7;
    bzero(v8, 4 * v6);
    v9 = 4 * *(a1 + 1);
LABEL_6:
    v16 = v8;
    memcpy(v8, *a1, v9);
    v10 = *(a1 + 1);
    v14 = 4;
    v15 = v10;
    v13 = 0;
    v12 = 1;
    return re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(&v16, &re::ConvertToGeomModelValueType<int>::kValueType, &v15, &v14, &v13, &v12, &v16, re::GeomModelDescriptor::freeReNewedArrayData<int>, a2);
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::GeomModelDescriptor::freeReNewedArrayData<int>(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

uint64_t _ZN2re19GeomModelDescriptor12setAttributeIDv4_fjEENS_6ResultINS_4UnitENS_13DetailedErrorEEERKNS_13DynamicStringENS_17GeomAttributeRateERKNS_5SliceIT_EERKNSB_IT0_EE@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, re *a4@<X3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v36, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v36, a3, 10, v31);
  if (v31[0])
  {
    if (*(a4 + 1))
    {
      v28 = 4;
      v29 = 0;
      v30 = 0;
      re::DynamicString::operator=(&v26, &v36);
      v28 = a3;
      _ZN2re19GeomModelDescriptor16makeSlicePayloadIDv4_fEENS_9SharedPtrINS_8internal11DataPayloadEEERKNS_5SliceIT_EE(a4, &v47);
      v15 = v29;
      v29 = v47;
      *&v47 = v15;
      if (v15)
      {
      }

      if (*(a5 + 1))
      {
        *a6 = 1;
        re::GeomModelDescriptor::makeSlicePayload<unsigned int>(a5, &v47);
        v16 = v30;
        v30 = v47;
        *&v47 = v16;
        if (v16)
        {
        }
      }

      v17 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v36);
      if (v17)
      {
        v18 = *v17;
        v19 = a1[14];
        if (v19 <= *v17)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 789;
          v43 = 2048;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v20 = re::DynamicString::operator=((a1[16] + 56 * v18), &v26);
        *(v20 + 32) = v28;
        v21 = *(v20 + 5);
        *(v20 + 5) = v29;
        v29 = v21;
        v22 = *(v20 + 6);
        *(v20 + 6) = v30;
        v30 = v22;
      }

      else
      {
        *&v47 = a1[14];
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v36, &v47);
        re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v26);
        v22 = v30;
      }

      *a6 = 1;
      if (v22)
      {

        v30 = 0;
      }

      if (v29)
      {

        v29 = 0;
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    else
    {
      v23 = v47;
      v24 = v48;
      *a6 = 0;
      *(a6 + 8) = 100;
      *(a6 + 16) = re::AssetErrorCategory(void)::instance;
      *(a6 + 24) = v23;
      *(a6 + 40) = v24;
    }
  }

  else
  {
    *a6 = v31[0];
    *(a6 + 8) = v32;
    *(a6 + 24) = v33;
    *(a6 + 48) = v35;
    *(a6 + 32) = v34;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
  }

  if (v31[0] & 1) == 0 && v33 && (v34)
  {
    (*(*v33 + 40))();
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

uint64_t _ZN2re19GeomModelDescriptor16makeSlicePayloadIDv4_fEENS_9SharedPtrINS_8internal11DataPayloadEEERKNS_5SliceIT_EE@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v6 = *(a1 + 1);
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!(v6 >> 60) && 16 * v6 < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = (*(*v4[2] + 32))(v4[2], (16 * v6 + 16) | 0xF, 0);
    v8 = ((v7 + 31) & 0xFFFFFFFFFFFFFFF0);
    *(v8 - 2) = v6;
    *(v8 - 1) = v7;
    bzero(v8, 16 * v6);
    v9 = 16 * *(a1 + 1);
LABEL_6:
    v16 = v8;
    memcpy(v8, *a1, v9);
    v10 = *(a1 + 1);
    v14 = 16;
    v15 = v10;
    v13 = 0;
    v12 = 1;
    return re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(&v16, _ZN2re27ConvertToGeomModelValueTypeIDv4_fE10kValueTypeE, &v15, &v14, &v13, &v12, &v16, _ZN2re19GeomModelDescriptor20freeReNewedArrayDataIDv4_fEEvPKv, a2);
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 16, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *_ZN2re19GeomModelDescriptor20freeReNewedArrayDataIDv4_fEEvPKv(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

uint64_t re::GeomModelDescriptor::setAttribute<unsigned short,unsigned int>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, re *a4@<X3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v36, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v36, a3, 3, v31);
  if (v31[0])
  {
    if (*(a4 + 1))
    {
      v28 = 4;
      v29 = 0;
      v30 = 0;
      re::DynamicString::operator=(&v26, &v36);
      v28 = a3;
      re::GeomModelDescriptor::makeSlicePayload<unsigned short>(a4, &v47);
      v15 = v29;
      v29 = v47;
      *&v47 = v15;
      if (v15)
      {
      }

      if (*(a5 + 1))
      {
        *a6 = 1;
        re::GeomModelDescriptor::makeSlicePayload<unsigned int>(a5, &v47);
        v16 = v30;
        v30 = v47;
        *&v47 = v16;
        if (v16)
        {
        }
      }

      v17 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v36);
      if (v17)
      {
        v18 = *v17;
        v19 = a1[14];
        if (v19 <= *v17)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 789;
          v43 = 2048;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v20 = re::DynamicString::operator=((a1[16] + 56 * v18), &v26);
        *(v20 + 32) = v28;
        v21 = *(v20 + 5);
        *(v20 + 5) = v29;
        v29 = v21;
        v22 = *(v20 + 6);
        *(v20 + 6) = v30;
        v30 = v22;
      }

      else
      {
        *&v47 = a1[14];
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v36, &v47);
        re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v26);
        v22 = v30;
      }

      *a6 = 1;
      if (v22)
      {

        v30 = 0;
      }

      if (v29)
      {

        v29 = 0;
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    else
    {
      v23 = v47;
      v24 = v48;
      *a6 = 0;
      *(a6 + 8) = 100;
      *(a6 + 16) = re::AssetErrorCategory(void)::instance;
      *(a6 + 24) = v23;
      *(a6 + 40) = v24;
    }
  }

  else
  {
    *a6 = v31[0];
    *(a6 + 8) = v32;
    *(a6 + 24) = v33;
    *(a6 + 48) = v35;
    *(a6 + 32) = v34;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
  }

  if (v31[0] & 1) == 0 && v33 && (v34)
  {
    (*(*v33 + 40))();
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

uint64_t re::GeomModelDescriptor::makeSlicePayload<unsigned short>@<X0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v6 = *(a1 + 1);
  if (!v6)
  {
    v9 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if ((v6 & 0x8000000000000000) == 0 && (2 * v6) < 0xFFFFFFFFFFFFFFF0)
  {
    v7 = (*(*v4[2] + 32))(v4[2], (2 * v6 + 16) | 1, 0);
    v8 = ((v7 + 17) & 0xFFFFFFFFFFFFFFFELL);
    *(v8 - 2) = v6;
    *(v8 - 1) = v7;
    bzero(v8, 2 * v6);
    v9 = 2 * *(a1 + 1);
LABEL_6:
    v16 = v8;
    memcpy(v8, *a1, v9);
    v10 = *(a1 + 1);
    v14 = 2;
    v15 = v10;
    v13 = 0;
    v12 = 1;
    return re::make::shared::object<re::internal::DataPayload,unsigned char *&,re::GeomModelValueType const&,unsigned long,unsigned long,int,BOOL,unsigned char *&,void (&)(void const*)>(&v16, &re::ConvertToGeomModelValueType<unsigned short>::kValueType, &v15, &v14, &v13, &v12, &v16, re::GeomModelDescriptor::freeReNewedArrayData<unsigned short>, a2);
  }

  re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 2, v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::GeomModelDescriptor::freeReNewedArrayData<unsigned short>(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

uint64_t re::GeomModelDescriptor::setAttribute<unsigned int,unsigned int>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, re *a4@<X3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 17), a2);
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = a2;
  }

  re::DynamicString::DynamicString(&v36, v13);
  re::GeomModelDescriptor::validateIfCoreAttribute(&v36, a3, 5, v31);
  if (v31[0])
  {
    if (*(a4 + 1))
    {
      v28 = 4;
      v29 = 0;
      v30 = 0;
      re::DynamicString::operator=(&v26, &v36);
      v28 = a3;
      re::GeomModelDescriptor::makeSlicePayload<unsigned int>(a4, &v47);
      v15 = v29;
      v29 = v47;
      *&v47 = v15;
      if (v15)
      {
      }

      if (*(a5 + 1))
      {
        *a6 = 1;
        re::GeomModelDescriptor::makeSlicePayload<unsigned int>(a5, &v47);
        v16 = v30;
        v30 = v47;
        *&v47 = v16;
        if (v16)
        {
        }
      }

      v17 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet((a1 + 6), &v36);
      if (v17)
      {
        v18 = *v17;
        v19 = a1[14];
        if (v19 <= *v17)
        {
          v38 = 0;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v47 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v39 = 136315906;
          v40 = "operator[]";
          v41 = 1024;
          v42 = 789;
          v43 = 2048;
          v44 = v18;
          v45 = 2048;
          v46 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v20 = re::DynamicString::operator=((a1[16] + 56 * v18), &v26);
        *(v20 + 32) = v28;
        v21 = *(v20 + 5);
        *(v20 + 5) = v29;
        v29 = v21;
        v22 = *(v20 + 6);
        *(v20 + 6) = v30;
        v30 = v22;
      }

      else
      {
        *&v47 = a1[14];
        re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add((a1 + 6), &v36, &v47);
        re::DynamicArray<re::GeomModelDescriptor::AttributeData>::add((a1 + 12), &v26);
        v22 = v30;
      }

      *a6 = 1;
      if (v22)
      {

        v30 = 0;
      }

      if (v29)
      {

        v29 = 0;
      }

      if (v26 && (v27 & 1) != 0)
      {
        (*(*v26 + 40))();
      }
    }

    else
    {
      v23 = v47;
      v24 = v48;
      *a6 = 0;
      *(a6 + 8) = 100;
      *(a6 + 16) = re::AssetErrorCategory(void)::instance;
      *(a6 + 24) = v23;
      *(a6 + 40) = v24;
    }
  }

  else
  {
    *a6 = v31[0];
    *(a6 + 8) = v32;
    *(a6 + 24) = v33;
    *(a6 + 48) = v35;
    *(a6 + 32) = v34;
    v35 = 0;
    v33 = 0;
    v34 = 0uLL;
  }

  if (v31[0] & 1) == 0 && v33 && (v34)
  {
    (*(*v33 + 40))();
  }

  result = v36;
  if (v36)
  {
    if (v37)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

void *re::FixedArray<re::Vector4<float>>::init<re::Vector4<float>>(void *result, uint64_t a2, unint64_t a3, _OWORD *a4)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 16);
  v6[2] = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = *a4;
      result += 2;
      --v8;
    }

    while (v8);
  }

  *result = *a4;
  return result;
}

uint64_t *re::GeomModelDescriptor::freeReNewedArrayData<re::Vector4<float>>(re *a1)
{
  result = re::globalAllocators(a1);
  if (a1)
  {
    v3 = *(*result[2] + 40);

    return v3();
  }

  return result;
}

void CGImagePtr::CGImagePtr(CGImagePtr *this, CGImageRef image)
{
  *this = image;
  *(this + 1) = CGImageGetWidth(image);
  *(this + 2) = CGImageGetHeight(image);
  *(this + 3) = CGImageGetBitsPerComponent(image);
  *(this + 4) = CGImageGetBitsPerPixel(image);
  BytesPerRow = CGImageGetBytesPerRow(image);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = BytesPerRow;
  *(this + 16) = -1;
  BitmapInfo = CGImageGetBitmapInfo(image);
  *(this + 13) = 0;
  *(this + 18) = BitmapInfo;
  *(this + 80) = 0;
  ColorSpace = CGImageGetColorSpace(image);
  if (ColorSpace)
  {
    v7 = CGColorSpaceRetain(ColorSpace);
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
    Model = CGColorSpaceGetModel(v7);
    v10 = *(this + 6);
    *(this + 6) = v7;
    *(this + 7) = NumberOfComponents;
    *(this + 16) = Model;
    CGColorSpaceRelease(v10);
  }

  UTType = CGImageGetUTType(image);
  if (UTType)
  {
    objc_storeStrong(this + 13, UTType);
  }
}

void CGImagePtr::CGImagePtr(CGImagePtr *this, const CGImagePtr *a2)
{
  *this = CGImageRetain(*a2);
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  v4 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  v5 = CGColorSpaceRetain(v4);
  v6 = *(a2 + 7);
  *(this + 6) = v5;
  *(this + 7) = v6;
  *(this + 16) = *(a2 + 16);
  *(this + 18) = *(a2 + 18);
  LODWORD(v6) = *(a2 + 80);
  *(this + 80) = v6;
  if (v6 == 1)
  {
    *(this + 88) = *(a2 + 88);
  }

  *(this + 13) = *(a2 + 13);
}

uint64_t CGImagePtr::CGImagePtr(uint64_t a1, uint64_t *a2)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 80) = 0;
  *(a1 + 104) = 0;
  v4 = *a2;
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = a2[5];
  v9 = a2[6];
  a2[5] = 0;
  *(a1 + 40) = v8;
  v10 = a2[4];
  a2[4] = 0;
  *(a1 + 32) = v10;
  v11 = a2[7];
  v12 = *(a2 + 16);
  a2[6] = 0;
  a2[7] = 0;
  *(a2 + 16) = -1;
  CGColorSpaceRelease(0);
  v13 = *(a1 + 48);
  *(a1 + 48) = v9;
  *(a1 + 56) = v11;
  *(a1 + 64) = v12;
  CGColorSpaceRelease(v13);
  CGColorSpaceRelease(0);
  v14 = *(a2 + 18);
  *(a2 + 18) = 0;
  *(a1 + 72) = v14;
  if (*(a2 + 80) == 1)
  {
    v19 = *(a2 + 11);
    *(a2 + 80) = 0;
    if (*(a1 + 80))
    {
      v15 = *(a2 + 11);
    }

    else
    {
      *(a1 + 80) = 1;
      v15 = v19;
    }

    *(a1 + 88) = v15;
  }

  else if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 0;
  }

  v16 = a2[13];
  a2[13] = 0;
  v17 = *(a1 + 104);
  *(a1 + 104) = v16;

  return a1;
}

void CGImagePtr::swap(CGImagePtr *this, CGImagePtr *a2)
{
  v4 = *this;
  v5 = *(this + 1);
  v6 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v6;
  *a2 = v4;
  *(a2 + 1) = v5;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  v11 = *(this + 6);
  *(this + 6) = 0;
  v12 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v13 = *(this + 7);
  *(this + 7) = 0;
  v14 = *(this + 16);
  *(this + 16) = -1;
  v15 = *(a2 + 7);
  LODWORD(v6) = *(a2 + 16);
  *(a2 + 16) = -1;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v16 = *(this + 6);
  *(this + 6) = v12;
  *(this + 7) = v15;
  *(this + 16) = v6;
  CGColorSpaceRelease(v16);
  v17 = *(a2 + 6);
  *(a2 + 6) = v11;
  *(a2 + 7) = v13;
  *(a2 + 16) = v14;
  CGColorSpaceRelease(v17);
  CGColorSpaceRelease(0);
  v18 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v18;
  v19 = *(this + 80);
  if (v19)
  {
    v24 = *(this + 88);
    if ((*(a2 + 80) & 1) == 0)
    {
      *(this + 80) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      goto LABEL_7;
    }

    *(this + 80) = 1;
  }

  *(this + 88) = *(a2 + 88);
LABEL_7:
  if (*(a2 + 80))
  {
    if ((v19 & 1) == 0)
    {
      *(a2 + 80) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 80) = 1;
  }

  *(a2 + 88) = v24;
LABEL_13:
  v20 = *(this + 13);
  *(this + 13) = 0;
  if (this != a2)
  {
    v21 = *(a2 + 13);
    *(a2 + 13) = 0;
    v22 = *(this + 13);
    *(this + 13) = v21;
  }

  v23 = *(a2 + 13);
  *(a2 + 13) = v20;
}

void CGImagePtr::~CGImagePtr(CGImagePtr *this)
{
  CGImageRelease(*this);
  *this = 0;

  CGColorSpaceRelease(*(this + 6));
  *(this + 6) = 0;
}

const void *re::CGColorSpaceNameFromOCIOString(re *this, const __CFString *a2)
{
  v3 = this;
  if ((atomic_load_explicit(&qword_1EE1BC1A0, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_1EE1BC1A0);
    v3 = this;
    if (v6)
    {
      if (qword_1EE1BC1C0 != -1)
      {
        dispatch_once(&qword_1EE1BC1C0, &__block_literal_global_44);
      }

      _MergedGlobals_485 = qword_1EE1BC1B8;
      __cxa_guard_release(&qword_1EE1BC1A0);
      v3 = this;
    }
  }

  v4 = _MergedGlobals_485;

  return CFDictionaryGetValue(v4, v3);
}

const void *re::OCIOStringArrayFromCGColorSpaceName(re *this, const __CFString *a2)
{
  v3 = this;
  if ((atomic_load_explicit(&qword_1EE1BC1B0, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_1EE1BC1B0);
    v3 = this;
    if (v6)
    {
      if (qword_1EE1BC1D0 != -1)
      {
        dispatch_once(&qword_1EE1BC1D0, &__block_literal_global_184);
      }

      qword_1EE1BC1A8 = qword_1EE1BC1C8;
      __cxa_guard_release(&qword_1EE1BC1B0);
      v3 = this;
    }
  }

  v4 = qword_1EE1BC1A8;

  return CFDictionaryGetValue(v4, v3);
}

void ___ZN2reL30OCIOToCGColorSpaceMappingTableEv_block_invoke()
{
  v18[53] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = *MEMORY[0x1E695F1C0];
  v17[0] = @"Input - Texture - sRGB - sRGB";
  v17[1] = @"Utility - sRGB - Texture";
  v18[0] = v1;
  v18[1] = v1;
  v17[2] = @"sRGB";
  v17[3] = @"srgb_texture";
  v18[2] = v1;
  v18[3] = v1;
  v17[4] = @"sRGB - Texture";
  v17[5] = @"Input - Generic - sRGB - Texture";
  v18[4] = v1;
  v18[5] = v1;
  v17[6] = @"srgb_tx";
  v17[7] = @"srgb_rec709_scene";
  v18[6] = v1;
  v18[7] = v1;
  v17[8] = @"sRGB Encoded Rec.709 (sRGB)";
  v17[9] = @"Input - Texture - Linear - sRGB";
  v2 = *MEMORY[0x1E695F1B0];
  v18[8] = v1;
  v18[9] = v2;
  v17[10] = @"Utility - Linear - sRGB";
  v17[11] = @"Utility - Linear - Rec.709";
  v18[10] = v2;
  v18[11] = v2;
  v17[12] = @"lin_srgb";
  v17[13] = @"scene-linear Rec 709/sRGB";
  v18[12] = v2;
  v18[13] = v2;
  v17[14] = @"lin_rec709";
  v17[15] = @"Linear Rec.709 (sRGB)";
  v18[14] = v2;
  v18[15] = v2;
  v17[16] = @"lin_rec709_srgb";
  v17[17] = @"Linear - sRGB";
  v18[16] = v2;
  v18[17] = v2;
  v17[18] = @"lin_rec709_scene";
  v17[19] = @"Utility - Linear - P3-D65";
  v3 = *MEMORY[0x1E695F0F0];
  v18[18] = v2;
  v18[19] = v3;
  v17[20] = @"Linear P3-D65";
  v17[21] = @"lin_displayp3";
  v18[20] = v3;
  v18[21] = v3;
  v17[22] = @"Linear - Display P3";
  v17[23] = @"lin_p3d65_scene";
  v18[22] = v3;
  v18[23] = v3;
  v4 = *MEMORY[0x1E695F0B8];
  v17[24] = @"Input - Texture - sRGB - Display P3";
  v17[25] = @"Input - Generic - Display P3 - Texture";
  v18[24] = v4;
  v18[25] = v4;
  v17[26] = @"sRGB - Display P3 - Texture";
  v17[27] = @"Role - texture_paint";
  v18[26] = v4;
  v18[27] = v4;
  v17[28] = @"role_texture_paint";
  v17[29] = @"Role - matte_paint";
  v18[28] = v4;
  v18[29] = v4;
  v17[30] = @"role_matte_paint";
  v17[31] = @"Role - color_picking";
  v18[30] = v4;
  v18[31] = v4;
  v17[32] = @"role_color_picking";
  v17[33] = @"srgb_displayp3";
  v18[32] = v4;
  v18[33] = v4;
  v17[34] = @"srgb_p3d65";
  v17[35] = @"Display P3";
  v18[34] = v4;
  v18[35] = v4;
  v17[36] = @"sRGB - Display P3";
  v17[37] = @"sRGB Encoded P3-D65 - Texture";
  v18[36] = v4;
  v18[37] = v4;
  v17[38] = @"srgb_encoded_p3d65_tx";
  v17[39] = @"Utility - sRGB - P3-D65 - Texture";
  v18[38] = v4;
  v18[39] = v4;
  v17[40] = @"srgb_p3d65_scene";
  v17[41] = @"sRGB Encoded P3-D65";
  v18[40] = v4;
  v18[41] = v4;
  v5 = *MEMORY[0x1E695F0C8];
  v17[42] = @"Input - Texture - PQ - Display P3";
  v17[43] = @"Utility - Rec.2020 - Camera";
  v6 = *MEMORY[0x1E695F150];
  v18[42] = v5;
  v18[43] = v6;
  v17[44] = @"srgb_rec2020";
  v17[45] = @"Utility - Linear - Rec.2020";
  v7 = *MEMORY[0x1E695F100];
  v18[44] = v6;
  v18[45] = v7;
  v17[46] = @"Linear Rec.2020";
  v17[47] = @"lin_rec2020_scene";
  v18[46] = v7;
  v18[47] = v7;
  v8 = *MEMORY[0x1E695F098];
  v17[48] = @"acescg";
  v17[49] = @"ACES - ACEScg";
  v18[48] = v8;
  v18[49] = v8;
  v17[50] = @"ACEScg";
  v17[51] = @"lin_ap1";
  v18[50] = v8;
  v18[51] = v8;
  v17[52] = @"lin_ap1_scene";
  v18[52] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:53];
  [v0 addEntriesFromDictionary:v9];
  v10 = *MEMORY[0x1E695F190];
  v15[0] = @"Input - Texture - PQ - sRGB";
  v15[1] = @"Input - Texture - Linear - Display P3";
  v11 = *MEMORY[0x1E695F198];
  v16[0] = v10;
  v16[1] = v11;
  v15[2] = @"lin_p3d65";
  v15[3] = @"Input - Texture - sRGB - Rec.2020";
  v12 = *MEMORY[0x1E695F168];
  v16[2] = v11;
  v16[3] = v12;
  v15[4] = @"Input - Generic - Rec.2020 - Texture";
  v15[5] = @"sRGB - Rec.2020 - Texture";
  v16[4] = v12;
  v16[5] = v12;
  v13 = *MEMORY[0x1E695F1A8];
  v15[6] = @"Input - Texture - Linear - Rec.2020";
  v15[7] = @"lin_rec2020";
  v16[6] = v13;
  v16[7] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:8];
  [v0 addEntriesFromDictionary:v14];
  qword_1EE1BC1B8 = v0;
  CFRetain(v0);
}

void ___ZN2reL30CGColorSpaceToOCIOMappingTableEv_block_invoke()
{
  cf = [MEMORY[0x1E695DF90] dictionary];
  if (qword_1EE1BC1C0 != -1)
  {
    dispatch_once(&qword_1EE1BC1C0, &__block_literal_global_44);
  }

  v0 = qword_1EE1BC1B8;
  v1 = [v0 keyEnumerator];
  v2 = [v1 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = [v0 objectForKeyedSubscript:v3];
      v5 = v3;
      v6 = [cf objectForKey:v4];

      if (v6)
      {
        v7 = [cf objectForKeyedSubscript:v4];
      }

      else
      {
        v7 = [MEMORY[0x1E695DF70] array];
        [cf setObject:v7 forKeyedSubscript:v4];
      }

      [v7 addObject:v5];

      v3 = [v1 nextObject];
    }

    while (v3);
  }

  qword_1EE1BC1C8 = cf;
  CFRetain(cf);
}

void re::internal::HIDKeyboardFactory::addDeviceMatchingDictionaries(re::internal::HIDKeyboardFactory *this, __CFArray *a2)
{
  DeviceMatchingDictionary = re::internal::createDeviceMatchingDictionary(1, 6);
  CFArrayAppendValue(a2, DeviceMatchingDictionary);

  CFRelease(DeviceMatchingDictionary);
}

uint64_t re::internal::HIDKeyboardFactory::tryCreate@<X0>(IOHIDDeviceRef device@<X1>, void *a2@<X8>)
{
  if (IOHIDDeviceConformsTo(device, 1u, 6u))
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

void re::internal::HIDKeyboard::~HIDKeyboard(CFStringRef *this)
{
  re::internal::HIDDevice::~HIDDevice(this);

  JUMPOUT(0x1E6906520);
}

CFIndex HIDKeyboard_FnHandler(uint64_t a1, int a2, IOHIDValueRef value)
{
  result = IOHIDValueGetIntegerValue(value);
  *(a1 + 40) = result != 0;
  return result;
}

void HIDKeyboard_KeyHandler(re::internal::HIDDevice *a1, int a2, IOHIDValueRef value, __IOHIDElement *a4)
{
  v5 = IOHIDValueGetIntegerValue(value) != 0;

  re::InputManager::notify(7, a2, v5, 0);
}

void *re::allocInfo_InputService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_486, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_486))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BC1E0, "InputService");
    __cxa_guard_release(&_MergedGlobals_486);
  }

  return &unk_1EE1BC1E0;
}

void re::initInfo_InputService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3611AC2775B3C756;
  v6[1] = "InputService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_InputService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::internal::HIDDevice::HIDDevice(uint64_t a1, re::internal *this, const __CFString *a3, int a4)
{
  v5 = a3;
  *a1 = &unk_1F5D0C3F0;
  *(a1 + 8) = this;
  *(a1 + 16) = re::internal::getDevicePropertyString(this, @"Manufacturer", a3);
  DevicePropertyString = re::internal::getDevicePropertyString(this, @"Product", v8);
  *(a1 + 24) = DevicePropertyString;
  *(a1 + 32) = 0;
  CStringPtr = CFStringGetCStringPtr(DevicePropertyString, 0x8000100u);
  v11 = CFStringGetCStringPtr(*(a1 + 16), 0x8000100u);
  printf("Found %s by %s\n", CStringPtr, v11);
  DevicePropertyInt = re::internal::getDevicePropertyInt(this, @"VendorID", v12);
  for (i = re::internal::getDevicePropertyInt(this, @"ProductID", v14); a4; --a4)
  {
    if (LODWORD(v5->isa) == -1 && HIDWORD(v5->isa) == -1 || LODWORD(v5->isa) == DevicePropertyInt && HIDWORD(v5->isa) == i)
    {
      *(a1 + 32) = v5;
    }

    v5 = (v5 + 24);
  }

  return a1;
}

void re::internal::HIDDevice::~HIDDevice(CFStringRef *this)
{
  *this = &unk_1F5D0C3F0;
  CStringPtr = CFStringGetCStringPtr(this[3], 0x8000100u);
  v3 = CFStringGetCStringPtr(this[2], 0x8000100u);
  printf("Lost %s by %s\n", CStringPtr, v3);
}

{
  re::internal::HIDDevice::~HIDDevice(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::HIDDevice::handleInput(re::internal::HIDDevice *this, IOHIDValueRef value)
{
  Element = IOHIDValueGetElement(value);
  result = IOHIDElementGetType(Element);
  v6 = *(this + 4);
  v7 = *(v6 + 8);
  v8 = result - *v7;
  if (v8 < *(v6 + 16))
  {
    v9 = &v7[4 * v8];
    if (*(v9 + 1))
    {
      result = IOHIDElementGetUsage(Element);
      v10 = *(v9 + 1);
      v11 = result - *v10;
      if (v11 < v9[1])
      {
        v12 = &v10[4 * v11];
        v13 = *(v12 + 1);
        if (v13)
        {
          v14 = v12[1];

          return v13(this, v14, value, Element);
        }
      }
    }
  }

  return result;
}

void re::initInputManagement(re *this)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (re::internal::HIDManager::getShared(void)::sharedInstancePredicate != -1)
    {
      dispatch_once(&re::internal::HIDManager::getShared(void)::sharedInstancePredicate, &__block_literal_global_46);
    }

    v1 = re::internal::HIDManager::getShared(void)::sharedInstance;

    re::internal::HIDManager::start(v1);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];

    dispatch_async(v2, &__block_literal_global_45);
  }
}

void anonymous namespace::createOrRetainInputManagement(_anonymous_namespace_ *this)
{
  inputState();
  os_unfair_lock_lock(&stru_1EE1C7BBC);
  ++dword_1EE1C7BB8;
  if (!inputState(void)::state)
  {
    v2 = re::globalAllocators(v1);
    v3 = (*(*v2[2] + 32))(v2[2], 48, 8);
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *v3 = 0u;
    *(v3 + 36) = 0x7FFFFFFF;
    inputState(void)::state = v3;
  }

  os_unfair_lock_unlock(&stru_1EE1C7BBC);
}

uint64_t ___ZN2re19initInputManagementEv_block_invoke()
{
  if (re::internal::HIDManager::getShared(void)::sharedInstancePredicate != -1)
  {
    dispatch_once(&re::internal::HIDManager::getShared(void)::sharedInstancePredicate, &__block_literal_global_46);
  }

  v1 = re::internal::HIDManager::getShared(void)::sharedInstance;

  return re::internal::HIDManager::start(v1);
}

void re::deinitInputManagement(re *this)
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    if (re::internal::HIDManager::getShared(void)::sharedInstancePredicate != -1)
    {
      dispatch_once(&re::internal::HIDManager::getShared(void)::sharedInstancePredicate, &__block_literal_global_46);
    }

    re::internal::HIDManager::stop(re::internal::HIDManager::getShared(void)::sharedInstance);
  }

  else
  {
    v2 = MEMORY[0x1E69E96A0];

    dispatch_async(v2, &__block_literal_global_2);
  }
}

void anonymous namespace::releaseInputManagement(_anonymous_namespace_ *this)
{
  inputState();
  os_unfair_lock_lock(&stru_1EE1C7BBC);
  v2 = dword_1EE1C7BB8;
  if (dword_1EE1C7BB8)
  {
    --dword_1EE1C7BB8;
    if (v2 == 1)
    {
      v3 = inputState(void)::state;
      if (inputState(void)::state)
      {
        v4 = re::globalAllocators(v1)[2];
        v5 = re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v3);
        (*(*v4 + 40))(v4, v3, v5);
        inputState(void)::state = 0;
      }
    }
  }

  os_unfair_lock_unlock(&stru_1EE1C7BBC);
}

void ___ZN2re21deinitInputManagementEv_block_invoke()
{
  if (re::internal::HIDManager::getShared(void)::sharedInstancePredicate != -1)
  {
    dispatch_once(&re::internal::HIDManager::getShared(void)::sharedInstancePredicate, &__block_literal_global_46);
  }

  re::internal::HIDManager::stop(re::internal::HIDManager::getShared(void)::sharedInstance);
}

void re::InputManager::notify(int a1, int a2, int a3, int a4)
{
  inputState();
  os_unfair_lock_lock(&stru_1EE1C7BBC);
  v8 = inputState(void)::state;
  if (inputState(void)::state)
  {
    v9 = *(inputState(void)::state + 32);
    if (v9)
    {
      v10 = 0;
      v11 = *(inputState(void)::state + 16);
      while (1)
      {
        v12 = *v11;
        v11 += 8;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(inputState(void)::state + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    if (v10 != v9)
    {
      v13 = MEMORY[0x1E69E9820];
      do
      {
        v14 = *(v8 + 16);
        v18[0] = v13;
        v18[1] = 3221225472;
        v15 = v14 + 32 * v10;
        v18[2] = ___ZN2re12InputManager6notifyE16REInputEventTypeiii_block_invoke;
        v18[3] = &__block_descriptor_64_e5_v8__0l;
        v16 = *(v15 + 16);
        v15 += 16;
        v18[4] = v15 - 8;
        v18[5] = v15;
        v19 = a1;
        v20 = a2;
        v21 = a3;
        v22 = a4;
        dispatch_async(v16, v18);
        v17 = *(v8 + 32);
        if (v17 <= v10 + 1)
        {
          v17 = v10 + 1;
        }

        while (v17 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(*(v8 + 16) + 32 * v10) & 0x80000000) != 0)
          {
            goto LABEL_17;
          }
        }

        LODWORD(v10) = v17;
LABEL_17:
        ;
      }

      while (v10 != *(inputState(void)::state + 32));
    }
  }

  os_unfair_lock_unlock(&stru_1EE1C7BBC);
}

void inputState(void)
{
  {
    inputState(void)::state = 0;
    *&dword_1EE1C7BB8 = 0;
  }
}

void ___ZN2re12InputManager6notifyE16REInputEventTypeiii_block_invoke(uint64_t a1)
{
  v1 = **(a1 + 32);
  v3 = *(a1 + 48);
  v2 = *(a1 + 52);
  v4 = *(a1 + 56);
  if (v3 <= 5)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        *(v1 + 112) = 0;
      }

      else
      {
        if (v3 == 4)
        {
          *(v1 + 112) = 0;
          *(v1 + 124) = v4;
LABEL_33:
          v6 = *(v1 + 136) & ~v2;
          goto LABEL_34;
        }

        *(v1 + 112) = vadd_s32(vsub_s32(v4, *(v1 + 124)), *(v1 + 112));
      }

      *(v1 + 124) = v4;
    }

    else
    {
      if (v3)
      {
        if (v3 == 1)
        {
          switch(v2)
          {
            case 4:
              *(v1 + 120) += v4.i32[0];
              break;
            case 2:
              *(v1 + 116) += v4.i32[0];
              break;
            case 1:
              *(v1 + 112) += v4.i32[0];
              break;
          }
        }

        else if (v3 == 2)
        {
          *(v1 + 112) = 0;
          *(v1 + 120) = 0;
          *(v1 + 136) = 0;
          *(v1 + 128) = 0;
        }

        return;
      }

      if (!v4.i32[0])
      {
        goto LABEL_33;
      }
    }

    v6 = *(v1 + 136) | v2;
LABEL_34:
    *(v1 + 136) = v6;
    return;
  }

  if (v3 > 8)
  {
    switch(v3)
    {
      case 9:
        *(v1 + 200) = 0;
        *(v1 + 204) = v2;
        *(v1 + 208) = v4.i32[0];
        *(v1 + 196) = 0;
        *(v1 + 212) = 1;
        break;
      case 10:
        v11 = v4.i32[0] - *(v1 + 208);
        *(v1 + 196) = v2 - *(v1 + 204);
        *(v1 + 200) = v11;
        *(v1 + 204) = v2;
        *(v1 + 208) = v4.i32[0];
        *(v1 + 212) = 0;
        break;
      case 11:
        v5 = v4.i32[0] - *(v1 + 208);
        *(v1 + 196) = v2 - *(v1 + 204);
        *(v1 + 200) = v5;
        *(v1 + 204) = v2;
        *(v1 + 208) = v4.i32[0];
        *(v1 + 213) = 1;
        break;
    }
  }

  else if (v3 == 6)
  {
    *(v1 + 120) = v2;
    *(v1 + 132) += v2;
  }

  else if (v3 == 7)
  {
    if (v2 >= 0xE8)
    {
      abort();
    }

    v7 = v1 + 16;
    v8 = v2 >> 6;
    v9 = 1 << v2;
    if (v4.i32[0])
    {
      v10 = *(v7 + 8 * v8) | v9;
    }

    else
    {
      v10 = *(v7 + 8 * v8) & ~v9;
    }

    *(v7 + 8 * v8) = v10;
  }

  else
  {
    v12 = v1 + 16;
    v13 = 0;
    std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v12, 0xE8uLL);
  }
}

void re::InputManager::subscribe(uint64_t a1, id *a2)
{
  v4 = a1;
  inputState();
  os_unfair_lock_lock(&stru_1EE1C7BBC);
  if (inputState(void)::state)
  {
    re::HashTable<re::InputManager *,re::dispatch::Queue,re::Hash<re::InputManager *>,re::EqualTo<re::InputManager *>,true,false>::addOrReplace(inputState(void)::state, &v4, a2);
  }

  os_unfair_lock_unlock(&stru_1EE1C7BBC);
  v5 = v4 + 16;
  v6 = 0;
  std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v5, 0xE8uLL);
  v3 = v4;
  *(v4 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = 0;
  *(v3 + 136) = 0;
  *(v3 + 204) = 0;
  *(v3 + 196) = 0;
  *(v3 + 212) = 0;
}

id *re::HashTable<re::InputManager *,re::dispatch::Queue,re::Hash<re::InputManager *>,re::EqualTo<re::InputManager *>,true,false>::addOrReplace(uint64_t a1, void *a2, id *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<unsigned long long,re::sg::MaterialSource,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
    *(v8 + 8) = *a2;
    *(v8 + 16) = *a3;
    v9 = (v8 + 16);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = (*(a1 + 16) + 32 * v7 + 16);
    re::ObjCObject::operator=(v9, a3);
  }

  return v9;
}

void re::InputManager::unsubscribe(re::InputManager *this, re::InputManager *a2)
{
  v2 = this;
  inputState();
  os_unfair_lock_lock(&stru_1EE1C7BBC);
  if (inputState(void)::state)
  {
    re::HashTable<re::InputManager *,re::dispatch::Queue,re::Hash<re::InputManager *>,re::EqualTo<re::InputManager *>,true,false>::remove(inputState(void)::state, &v2);
  }

  os_unfair_lock_unlock(&stru_1EE1C7BBC);
}

BOOL re::HashTable<re::InputManager *,re::dispatch::Queue,re::Hash<re::InputManager *>,re::EqualTo<re::InputManager *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::InputManager *,re::dispatch::Queue,re::Hash<re::InputManager *>,re::EqualTo<re::InputManager *>,true,false>::removeInternal(a1, v5);
}

BOOL re::InputManager::isSubscribed(unint64_t a1)
{
  inputState();
  os_unfair_lock_lock(&stru_1EE1C7BBC);
  if (inputState(void)::state && *inputState(void)::state && (v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27)), v3 = *(*(inputState(void)::state + 8) + 4 * ((v2 ^ (v2 >> 31)) % *(inputState(void)::state + 24))), v3 != 0x7FFFFFFF))
  {
    v6 = *(inputState(void)::state + 16);
    v7 = 0x7FFFFFFFLL;
    while (*(v6 + 32 * v3 + 8) != a1)
    {
      v3 = *(v6 + 32 * v3) & 0x7FFFFFFF;
      if (v3 == 0x7FFFFFFF)
      {
        goto LABEL_11;
      }
    }

    v7 = v3;
LABEL_11:
    v4 = v7 != 0x7FFFFFFF;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&stru_1EE1C7BBC);
  return v4;
}

uint64_t re::InputManager::wentTouching(re::InputManager *this)
{
  if (*(this + 252))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 232);
  }

  return v1 & 1;
}

uint64_t re::InputManager::wentTouchMoving(re::InputManager *this)
{
  if (*(this + 253))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 233);
  }

  return v1 & 1;
}

__n128 re::InputManager::keyboardState@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[3];
  v3 = this[4];
  *a2 = result;
  a2[1] = v3;
  return result;
}

__n128 re::InputManager::mouseState@<Q0>(re::InputManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 140);
  result = *(this + 152);
  *(a2 + 12) = result;
  return result;
}

__n128 re::InputManager::getTouchState@<Q0>(re::InputManager *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 216);
  *a2 = result;
  a2[1].n128_u32[0] = *(this + 58);
  return result;
}

BOOL re::HashTable<re::InputManager *,re::dispatch::Queue,re::Hash<re::InputManager *>,re::EqualTo<re::InputManager *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;

      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 32 * v12);
      v9 = a2[3];
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void anonymous namespace::deviceFactories(_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_487, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_487))
  {
    qword_1EE1BC278 = 0;
    qword_1EE1BC280 = 0;
    qword_1EE1BC288 = 0;

    __cxa_guard_release(&_MergedGlobals_487);
  }
}

void re::internal::HIDManager::stop(re::internal::HIDManager *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: Unbalanced HIDManager.stop() call.\n", "void re::internal::HIDManager::stop()");
    v2 = *(this + 1);
  }

  v3 = v2 - 1;
  *(this + 1) = v3;
  if (!v3)
  {
    IOHIDManagerClose(*(this + 1), 0);
    v4 = *(this + 1);
    Current = CFRunLoopGetCurrent();
    IOHIDManagerUnscheduleFromRunLoop(v4, Current, *MEMORY[0x1E695E8E0]);
    IOHIDManagerRegisterDeviceMatchingCallback(*(this + 1), re::internal::HIDManager::nullCallback, 0);
    v6 = *(this + 1);

    IOHIDManagerRegisterDeviceRemovalCallback(v6, re::internal::HIDManager::nullCallback, 0);
  }
}

uint64_t re::internal::HIDManager::start(uint64_t this)
{
  v1 = *(this + 4) + 1;
  *(this + 4) = v1;
  if (v1 <= 1)
  {
    v2 = this;
    if (qword_1EE1BC280 == qword_1EE1BC278)
    {
      return fprintf(*MEMORY[0x1E69E9848], "%s: No HID device factories registered.\n");
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v4 = Mutable;
        v5 = qword_1EE1BC278;
        v6 = qword_1EE1BC280;
        while (v5 != v6)
        {
          v7 = *v5++;
          (*(*v7 + 16))(v7, v4);
        }

        IOHIDManagerSetDeviceMatchingMultiple(v2[1], v4);
        CFRelease(v4);
        IOHIDManagerRegisterDeviceMatchingCallback(v2[1], re::internal::HIDManager::deviceMatchingCallback, v2);
        IOHIDManagerRegisterDeviceRemovalCallback(v2[1], re::internal::HIDManager::deviceRemovalCallback, v2);
        v8 = v2[1];
        Current = CFRunLoopGetCurrent();
        IOHIDManagerScheduleWithRunLoop(v8, Current, *MEMORY[0x1E695E8E0]);
        this = IOHIDManagerOpen(v2[1], 0);
        if (this)
        {
          this = fprintf(*MEMORY[0x1E69E9848], "%s: IOHIDManagerOpen() failed.\n", "void re::internal::HIDManager::start()");
          *v2 = 0;
        }
      }

      else
      {
        return fprintf(*MEMORY[0x1E69E9848], "%s: CFArrayCreateMutable() failed.\n");
      }
    }
  }

  return this;
}

void re::internal::HIDManager::deviceMatchingCallback(re::internal::HIDManager *this, void *a2, int a3, __IOHIDDevice *a4, __IOHIDDevice *a5)
{
  v7 = qword_1EE1BC278;
  v8 = qword_1EE1BC280;
  while (v7 != v8)
  {
    (*(**v7 + 24))(&context);
    if (context)
    {
      IOHIDDeviceRegisterInputValueCallback(a4, re::internal::HIDManager::inputValueCallback, context);
      v10 = *(this + 3);
      v9 = *(this + 4);
      if (v10 >= v9)
      {
        v13 = *(this + 2);
        v14 = v10 - v13;
        v15 = (v10 - v13) >> 3;
        v16 = v15 + 1;
        if ((v15 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v17 = v9 - v13;
        if (v17 >> 2 > v16)
        {
          v16 = v17 >> 2;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          v18 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 61))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v19 = (v10 - v13) >> 3;
        v20 = (8 * v15);
        v21 = context;
        context = 0;
        v22 = (8 * v15 - 8 * v19);
        *v20 = v21;
        v12 = v20 + 1;
        memcpy(v22, v13, v14);
        *(this + 2) = v22;
        *(this + 3) = v12;
        *(this + 4) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        v11 = context;
        context = 0;
        *v10 = v11;
        v12 = v10 + 8;
      }

      *(this + 3) = v12;
      v23 = context;
      context = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }

      return;
    }

    v7 += 8;
  }
}

void re::internal::HIDManager::deviceRemovalCallback(re::internal::HIDManager *this, void *a2, int a3, IOHIDDeviceRef device, __IOHIDDevice *a5)
{
  IOHIDDeviceRegisterInputValueCallback(device, 0, 0);
  v8 = *(this + 2);
  v7 = *(this + 3);
  while (v8 != v7)
  {
    if (*(*v8 + 8) == device)
    {
      v9 = v8 + 1;
      if (v8 + 1 != v7)
      {
        do
        {
          v10 = *(v9 - 1);
          *(v9 - 1) = *v9;
          *v9 = 0;
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = *(this + 3);
        v8 = v9 - 1;
      }

      while (v7 != v8)
      {
        v12 = *--v7;
        v11 = v12;
        *v7 = 0;
        if (v12)
        {
          (*(*v11 + 8))(v11);
        }
      }

      *(this + 3) = v8;
      return;
    }

    ++v8;
  }
}

__CFDictionary *re::internal::createDeviceMatchingDictionary(re::internal *this, int a2)
{
  v9 = a2;
  valuePtr = this;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: CFDictionaryCreateMutable failed.\n", "CFMutableDictionaryRef re::internal::createDeviceMatchingDictionary(UInt32, UInt32)");
    return Mutable;
  }

  v4 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: CFNumberCreate(usage page) failed.\n");
    return 0;
  }

  v5 = v4;
  CFDictionarySetValue(Mutable, @"PrimaryUsagePage", v4);
  CFRelease(v5);
  v6 = CFNumberCreate(v2, kCFNumberIntType, &v9);
  if (!v6)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s: CFNumberCreate(usage) failed.\n");
    return 0;
  }

  v7 = v6;
  CFDictionarySetValue(Mutable, @"PrimaryUsage", v6);
  CFRelease(v7);
  return Mutable;
}

uint64_t re::internal::getDevicePropertyInt(re::internal *this, const __CFString *a2, const __CFString *a3)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  Property = IOHIDDeviceGetProperty(this, a2);
  if (!Property)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = Property;
  v5 = CFGetTypeID(Property);
  TypeID = CFNumberGetTypeID();
  result = 0xFFFFFFFFLL;
  if (v5 == TypeID)
  {
    valuePtr = -1;
    if (CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

__IOHIDDevice *re::internal::getDevicePropertyString(__IOHIDDevice *this, const __CFString *a2, const __CFString *a3)
{
  if (this)
  {
    this = IOHIDDeviceGetProperty(this, a2);
    if (this)
    {
      v3 = this;
      v4 = CFGetTypeID(this);
      if (v4 == CFStringGetTypeID())
      {
        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

re::TypeBuilder *re::TypeBuilder::TypeBuilder(re::TypeBuilder *this, re::Allocator *a2)
{
  *this = 0;
  re::StringID::invalid((this + 8));
  *(this + 6) = -1;
  *(this + 28) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 50) = 0;
  *(this + 408) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 122) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 0;
  *(this + 98) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 492) = 0x7FFFFFFFLL;
  *(this + 26) = a2;
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(this + 26, 0);
  ++*(this + 58);
  *(this + 31) = a2;
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(this + 31, 0);
  ++*(this + 68);
  *(this + 36) = a2;
  re::DynamicArray<float *>::setCapacity(this + 36, 0);
  ++*(this + 78);
  *(this + 41) = a2;
  re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this + 41, 0);
  ++*(this + 88);
  *(this + 46) = a2;
  re::DynamicArray<re::BlendParameterInputNode>::setCapacity(this + 46, 0);
  ++*(this + 98);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(this + 456, a2, 3);
  return this;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_25, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void re::TypeBuilder::~TypeBuilder(re::TypeBuilder *this, uint64_t a2)
{
  re::TypeBuilder::reset(this, a2);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 208);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 328);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 368);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 57);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(this + 57);
  if (*(this + 408) == 1)
  {
    re::StringID::destroyString((this + 424));
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(this + 368);
  re::DynamicArray<re::GeomDeformer::Attribute>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 248);
  re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(this + 208);
  re::StringID::destroyString((this + 8));
}

void re::TypeBuilder::reset(re::TypeBuilder *this, uint64_t a2)
{
  v3 = *this;
  if (v3 <= 2)
  {
    if (!*this)
    {
      return;
    }

    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_17;
      }

      re::DynamicArray<re::EnumConstant>::clear(this + 208);
      re::DynamicArray<re::EnumConstant>::clear(this + 248);
    }
  }

  else
  {
    if (*this < 7u)
    {
      goto LABEL_3;
    }

    switch(v3)
    {
      case 7u:
        *(this + 38) = 0;
        ++*(this + 78);
        break;
      case 8u:
LABEL_18:
        re::StringID::destroyString((this + 144));
        re::DynamicArray<re::GeomDeformer::Attribute>::clear(this + 328);
        re::DynamicArray<re::MeshAssetSmoothDeformerData>::clear(this + 368);
        LOBYTE(v6) = 0;
        v5 = re::Optional<re::internal::ObjectMemberInfo>::operator=(this + 408, &v6);
        if (v6 == 1 && (v7 & 1) != 0)
        {
          if (v7)
          {
          }
        }

        break;
      case 9u:
        break;
      default:
LABEL_17:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown type category.", "!Unreachable code", "reset", 77);
        _os_crash();
        __break(1u);
        goto LABEL_18;
    }
  }

LABEL_3:
  *this = 0;
  re::StringID::invalid(&v6);
  v4 = re::StringID::operator=((this + 8), &v6);
  if (v6)
  {
    if (v6)
    {
    }
  }

  *(this + 6) = -1;
  if (*(this + 28) == 1)
  {
    *(this + 28) = 0;
  }

  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::clear(this + 456);
}

void re::DynamicArray<re::EnumConstant>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = 24 * v2;
    v4 = (*(a1 + 32) + 8);
    do
    {
      re::StringID::destroyString(v4);
      v4 = (v4 + 24);
      v3 -= 24;
    }

    while (v3);
  }

  ++*(a1 + 24);
}

uint64_t re::Optional<re::internal::ObjectMemberInfo>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::StringID::destroyString((a1 + 16));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    re::StringID::operator=((a1 + 16), (a2 + 16));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = &str_67;
LABEL_6:
    v5 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v5;
  }

  return a1;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_202, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 14;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::TypeBuilder::commitTo(re::TypeBuilder *this@<X0>, re::TypeRegistry *a2@<X1>, void *a3@<X8>)
{
  if (*this)
  {
    re::TypeRegistry::declareType((this + 8), a2, *this, *(this + 6), 0, a3);
    if (*a3)
    {
      v5 = *a3;
      re::TypeBuilder::commitTo(this, &v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "commitTo", 102);
    _os_crash();
    __break(1u);
  }
}

void re::TypeBuilder::commitTo(unsigned __int8 *a1, uint64_t *a2)
{
  v268 = *MEMORY[0x1E69E9840];
  if (!*a1)
  {
LABEL_326:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling commitTo().", "isBuilding()", "commitTo", 118);
    _os_crash();
    __break(1u);
    goto LABEL_327;
  }

  v4 = a2;
  v2 = *a2;
  if (!*a2)
  {
LABEL_327:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "commitTo", 119);
    _os_crash();
    __break(1u);
LABEL_328:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Type version mismatch.", "m_version == registry->typeVersion(typeID)", "commitTo", 124);
    _os_crash();
    __break(1u);
LABEL_329:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid member type.", "memberType", "commitTo", 345);
    _os_crash();
    __break(1u);
LABEL_330:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid member type.", "memberType", "commitTo", 316);
    _os_crash();
    __break(1u);
LABEL_331:
    v254 = 0;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    *buf = 0u;
    v9 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v255 = 136315906;
    v256 = "operator[]";
    v257 = 1024;
    v258 = 789;
    v259 = 2048;
    v260 = v5;
    v261 = 2048;
    v262 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_332:
    re::TypeRegistry::typeName(v2, *v6);
    v246 = re::TypeRegistry::typeName(v2, *v6);
    re::internal::assertLog(6, v247, "assertion failure: '%s' (%s:line %i) Duplicate custom class IDs in inheritance tree. Classes %s and %s.", "objectType.customClassID.value() != m_objectTypeInfo.customClassID.value()", "commitTo", 375, v246[1], *(v9 + 2));
    _os_crash();
    __break(1u);
    goto LABEL_333;
  }

  v9 = a1;
  v3 = *(a1 + 6);
  v10 = re::DataArray<re::TextureAtlasTile>::tryGet(v2 + 96, a2[1]);
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = -1;
  }

  if (v3 != v12)
  {
    goto LABEL_328;
  }

  v13 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v4 + 8));
  v15 = *v9;
  if (v15 > 9)
  {
    goto LABEL_350;
  }

  v3 = v13;
  if (((1 << v15) & 0x2FA) != 0)
  {
    goto LABEL_9;
  }

  if (v15 != 2)
  {
    if (v15 == 8)
    {
      re::TypeRegistry::makeStringID(v2, v9 + 9, buf);
      v13 = re::StringID::operator=((v9 + 144), buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v40 = *(v9 + 43);
      if (v40)
      {
        v7 = 40 * v40;
        v6 = *(v9 + 45) + 8;
        do
        {
          re::TypeRegistry::makeStringID(v2, v6, buf);
          v13 = re::StringID::operator=(v6, buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v6 += 40;
          v7 -= 40;
        }

        while (v7);
      }

      v41 = *(v9 + 48);
      if (v41)
      {
        v6 = *(v9 + 50);
        v7 = 24 * v41;
        do
        {
          re::TypeRegistry::makeStringID(v2, v6, buf);
          v13 = re::StringID::operator=(v6, buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v6 += 24;
          v7 -= 24;
        }

        while (v7);
      }

      goto LABEL_9;
    }

LABEL_350:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Unexpected type category.", "!Unreachable code", "internStrings", 1125);
    _os_crash();
    __break(1u);
    return;
  }

  v50 = *(v9 + 28);
  if (v50)
  {
    v7 = 24 * v50;
    v51 = (*(v9 + 30) + 8);
    do
    {
      re::TypeRegistry::makeStringID(v2, v51, buf);
      v13 = re::StringID::operator=(v51, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v51 = (v51 + 24);
      v7 -= 24;
    }

    while (v7);
  }

  v52 = *(v9 + 33);
  if (v52)
  {
    v7 = 24 * v52;
    v53 = (*(v9 + 35) + 8);
    do
    {
      re::TypeRegistry::makeStringID(v2, v53, buf);
      v13 = re::StringID::operator=(v53, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v53 = (v53 + 24);
      v7 -= 24;
    }

    while (v7);
  }

LABEL_9:
  if (*(v9 + 6))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v9 + 7) == 0;
  }

  *(v9 + 4) = *(v4 + 8);
  v16 = *v9;
  if (v16 <= 4)
  {
    if (*v9 <= 2u)
    {
      if (v16 == 1)
      {
        *(v9 + 20) |= v5 | 2;
        *v3 = *(v2 + 264) & 0xFFFFFF | (*(v3 + 3) << 24);
        v54 = *(v2 + 256);
        v55 = *(v2 + 264);
        if (v55 >= v54)
        {
          v56 = v55 + 1;
          if (v54 < v55 + 1)
          {
            if (*(v2 + 248))
            {
              v57 = 2 * v54;
              v21 = v54 == 0;
              v58 = 8;
              if (!v21)
              {
                v58 = v57;
              }

              if (v58 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v58;
              }

              re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity((v2 + 248), v59);
            }

            else
            {
              re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity((v2 + 248), v56);
              ++*(v2 + 272);
            }
          }

          v55 = *(v2 + 264);
        }

        v175 = *(v2 + 280) + 88 * v55;
        v176 = *(v9 + 3);
        *v175 = *(v9 + 2);
        *(v175 + 16) = v176;
        v177 = *(v9 + 4);
        v178 = *(v9 + 5);
        v179 = *(v9 + 6);
        *(v175 + 80) = *(v9 + 14);
        *(v175 + 48) = v178;
        *(v175 + 64) = v179;
        *(v175 + 32) = v177;
        ++*(v2 + 264);
        ++*(v2 + 272);
        goto LABEL_301;
      }

      if (v16 == 2)
      {
        if (!*(v9 + 28))
        {
          v4 = *re::foundationIntrospectionLogObjects(v13);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v9 + 2);
            *buf = 136315138;
            *&buf[4] = v24;
            _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Creating enum type %s without values.", buf, 0xCu);
          }
        }

        v25 = *(v9 + 33);
        if (v25)
        {
          v26 = *(v9 + 35);
          v27 = *(v9 + 28);
          if (!v27)
          {
LABEL_333:
            re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) New value of renamed enum constant (old name = %s) is missing.", "found", "commitTo", 168, v26[2]);
            _os_crash();
            __break(1u);
            goto LABEL_334;
          }

          v28 = &v26[3 * v25];
          v29 = 24 * v27;
          do
          {
            v30 = v29;
            v31 = *(v9 + 30);
            while (*v26 != *v31)
            {
              v31 += 3;
              v30 -= 24;
              if (!v30)
              {
                goto LABEL_333;
              }
            }

            v26 += 3;
          }

          while (v26 != v28);
        }

        v32 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
        *(v9 + 20) |= v5 | 2;
        *v3 = *(v2 + 304) & 0xFFFFFF | (*(v3 + 3) << 24);
        v33 = *(v9 + 28);
        *(v9 + 30) = *(v2 + 344);
        *(v9 + 31) = v33;
        *(v9 + 32) = *(v9 + 33);
        v34 = *(v2 + 296);
        v35 = *(v2 + 304);
        if (v35 >= v34)
        {
          v36 = v35 + 1;
          if (v34 < v35 + 1)
          {
            if (*(v2 + 288))
            {
              v37 = 2 * v34;
              v21 = v34 == 0;
              v38 = 8;
              if (!v21)
              {
                v38 = v37;
              }

              if (v38 <= v36)
              {
                v39 = v36;
              }

              else
              {
                v39 = v38;
              }

              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 288), v39);
            }

            else
            {
              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 288), v36);
              ++*(v2 + 312);
            }
          }

          v35 = *(v2 + 304);
        }

        v214 = *(v2 + 320) + 104 * v35;
        v215 = *(v9 + 2);
        v216 = *(v9 + 4);
        *(v214 + 16) = *(v9 + 3);
        *(v214 + 32) = v216;
        *v214 = v215;
        v217 = *(v9 + 5);
        v218 = *(v9 + 6);
        v219 = *(v9 + 7);
        *(v214 + 96) = *(v9 + 16);
        *(v214 + 64) = v218;
        *(v214 + 80) = v219;
        *(v214 + 48) = v217;
        ++*(v2 + 304);
        ++*(v2 + 312);
        re::DynamicArray<re::EnumConstant>::copy((v2 + 328), *(v9 + 30), *(v9 + 30), *(v9 + 28));
        re::DynamicArray<re::EnumConstant>::copy((v2 + 328), *(v9 + 28) + *(v9 + 30), *(v9 + 35), *(v9 + 33));
        goto LABEL_301;
      }

LABEL_349:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Unknown type category.", "!Unreachable code", "commitTo", 462);
      _os_crash();
      __break(1u);
      goto LABEL_350;
    }

    if (v16 == 3)
    {
      v60 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
      *v3 = *(v2 + 384) & 0xFFFFFF | (*(v3 + 3) << 24);
      v61 = *(v2 + 376);
      v62 = *(v2 + 384);
      if (v62 >= v61)
      {
        v63 = v62 + 1;
        if (v61 < v62 + 1)
        {
          if (*(v2 + 368))
          {
            v64 = 2 * v61;
            v21 = v61 == 0;
            v65 = 8;
            if (!v21)
            {
              v65 = v64;
            }

            if (v65 <= v63)
            {
              v66 = v63;
            }

            else
            {
              v66 = v65;
            }

            re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 368), v66);
          }

          else
          {
            re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 368), v63);
            ++*(v2 + 392);
          }
        }

        v62 = *(v2 + 384);
      }

      v180 = *(v2 + 400) + 104 * v62;
      v181 = *(v9 + 2);
      v182 = *(v9 + 4);
      *(v180 + 16) = *(v9 + 3);
      *(v180 + 32) = v182;
      *v180 = v181;
      v183 = *(v9 + 5);
      v184 = *(v9 + 6);
      v185 = *(v9 + 7);
      *(v180 + 96) = *(v9 + 16);
      *(v180 + 64) = v184;
      *(v180 + 80) = v185;
      *(v180 + 48) = v183;
      ++*(v2 + 384);
      ++*(v2 + 392);
      goto LABEL_301;
    }

    if (v16 != 4)
    {
      goto LABEL_349;
    }

    v42 = v5 ^ 1;
    if ((*(v9 + 31) & 0xFFFFFF) != 0)
    {
      v42 = 1;
    }

    if (v42)
    {
      if ((*(v9 + 31) & 0xFFFFFF) != 0)
      {
LABEL_146:
        *v3 = *(v2 + 424) & 0xFFFFFF | (*(v3 + 3) << 24);
        v83 = *(v2 + 416);
        v84 = *(v2 + 424);
        if (v84 >= v83)
        {
          v85 = v84 + 1;
          if (v83 < v84 + 1)
          {
            if (*(v2 + 408))
            {
              v86 = 2 * v83;
              v21 = v83 == 0;
              v87 = 8;
              if (!v21)
              {
                v87 = v86;
              }

              if (v87 <= v85)
              {
                v88 = v85;
              }

              else
              {
                v88 = v87;
              }

              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 408), v88);
            }

            else
            {
              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 408), v85);
              ++*(v2 + 432);
            }
          }

          v84 = *(v2 + 424);
        }

        v208 = *(v2 + 440) + 104 * v84;
        v209 = *(v9 + 2);
        v210 = *(v9 + 4);
        *(v208 + 16) = *(v9 + 3);
        *(v208 + 32) = v210;
        *v208 = v209;
        v211 = *(v9 + 5);
        v212 = *(v9 + 6);
        v213 = *(v9 + 7);
        *(v208 + 96) = *(v9 + 16);
        *(v208 + 64) = v212;
        *(v208 + 80) = v213;
        *(v208 + 48) = v211;
        ++*(v2 + 424);
        ++*(v2 + 432);
        goto LABEL_301;
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
      if ((buf[0] & 1) == 0)
      {
LABEL_347:
        re::internal::assertLog(4, v43, "assertion failure: '%s' (%s:line %i) Element type must be registered before the array type.", "elementType", "commitTo", 221);
        _os_crash();
        __break(1u);
LABEL_348:
        re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v99, v8, v7);
        _os_crash();
        __break(1u);
      }

      if (*(*(&v264 + 1) + 48))
      {
        *(v9 + 20) |= 1u;
      }
    }

    v13 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
    if ((*(*(&v264 + 1) + 48) & 3) != 0)
    {
      *(v9 + 20) |= 2u;
    }

    goto LABEL_146;
  }

  if (*v9 <= 6u)
  {
    if (v16 == 5)
    {
      *v3 = *(v2 + 464) & 0xFFFFFF | (*(v3 + 3) << 24);
      v67 = *(v2 + 456);
      v68 = *(v2 + 464);
      if (v68 >= v67)
      {
        v69 = v68 + 1;
        if (v67 < v68 + 1)
        {
          if (*(v2 + 448))
          {
            v70 = 2 * v67;
            v21 = v67 == 0;
            v71 = 8;
            if (!v21)
            {
              v71 = v70;
            }

            if (v71 <= v69)
            {
              v72 = v69;
            }

            else
            {
              v72 = v71;
            }

            re::DynamicArray<re::internal::ListTypeInfo>::setCapacity((v2 + 448), v72);
          }

          else
          {
            re::DynamicArray<re::internal::ListTypeInfo>::setCapacity((v2 + 448), v69);
            ++*(v2 + 472);
          }
        }

        v68 = *(v2 + 464);
      }

      v186 = *(v2 + 480) + 136 * v68;
      *v186 = *(v9 + 2);
      v187 = *(v9 + 3);
      v188 = *(v9 + 4);
      v189 = *(v9 + 6);
      *(v186 + 48) = *(v9 + 5);
      *(v186 + 64) = v189;
      *(v186 + 16) = v187;
      *(v186 + 32) = v188;
      v190 = *(v9 + 7);
      v191 = *(v9 + 8);
      v192 = *(v9 + 9);
      *(v186 + 128) = *(v9 + 20);
      *(v186 + 96) = v191;
      *(v186 + 112) = v192;
      *(v186 + 80) = v190;
      ++*(v2 + 464);
      ++*(v2 + 472);
      goto LABEL_301;
    }

    if (v16 == 6)
    {
      *v3 = *(v2 + 504) & 0xFFFFFF | (*(v3 + 3) << 24);
      v44 = *(v2 + 496);
      v45 = *(v2 + 504);
      if (v45 >= v44)
      {
        v46 = v45 + 1;
        if (v44 < v45 + 1)
        {
          if (*(v2 + 488))
          {
            v47 = 2 * v44;
            v21 = v44 == 0;
            v48 = 8;
            if (!v21)
            {
              v48 = v47;
            }

            if (v48 <= v46)
            {
              v49 = v46;
            }

            else
            {
              v49 = v48;
            }

            re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity((v2 + 488), v49);
          }

          else
          {
            re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity((v2 + 488), v46);
            ++*(v2 + 512);
          }
        }

        v45 = *(v2 + 504);
      }

      v193 = *(v2 + 520) + 168 * v45;
      v194 = *(v9 + 2);
      v195 = *(v9 + 4);
      *(v193 + 16) = *(v9 + 3);
      *(v193 + 32) = v195;
      *v193 = v194;
      v196 = *(v9 + 5);
      v197 = *(v9 + 6);
      v198 = *(v9 + 8);
      *(v193 + 80) = *(v9 + 7);
      *(v193 + 96) = v198;
      *(v193 + 48) = v196;
      *(v193 + 64) = v197;
      v199 = *(v9 + 9);
      v200 = *(v9 + 10);
      v201 = *(v9 + 11);
      *(v193 + 160) = *(v9 + 24);
      *(v193 + 128) = v200;
      *(v193 + 144) = v201;
      *(v193 + 112) = v199;
      ++*(v2 + 504);
      ++*(v2 + 512);
      goto LABEL_301;
    }

    goto LABEL_349;
  }

  if (v16 == 7)
  {
    v73 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), &v251);
    if (v251)
    {
      if (BYTE4(v252) == 2)
      {
        if (!*(v9 + 6))
        {
          if (!*(v9 + 7))
          {
            v74 = *(v9 + 38);
            *(v9 + 31) = *(v2 + 584);
            *(v9 + 32) = v74;
            *v3 = *(v2 + 544) & 0xFFFFFF | (*(v3 + 3) << 24);
            v75 = *(v2 + 544);
            v76 = *(v2 + 536);
            if (v75 >= v76)
            {
              v77 = v75 + 1;
              if (v76 < v75 + 1)
              {
                v4 = v2 + 528;
                if (*(v2 + 528))
                {
                  v78 = 2 * v76;
                  v21 = v76 == 0;
                  v79 = 8;
                  if (!v21)
                  {
                    v79 = v78;
                  }

                  if (v79 <= v77)
                  {
                    v80 = v77;
                  }

                  else
                  {
                    v80 = v79;
                  }

                  v73 = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 528), v80);
                }

                else
                {
                  v73 = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 528), v77);
                  ++*(v2 + 552);
                }
              }

              v75 = *(v2 + 544);
            }

            v220 = *(v2 + 560) + 104 * v75;
            v221 = *(v9 + 2);
            v222 = *(v9 + 4);
            *(v220 + 16) = *(v9 + 3);
            *(v220 + 32) = v222;
            *v220 = v221;
            v223 = *(v9 + 5);
            v224 = *(v9 + 6);
            v225 = *(v9 + 7);
            *(v220 + 96) = *(v9 + 16);
            *(v220 + 64) = v224;
            *(v220 + 80) = v225;
            *(v220 + 48) = v223;
            ++*(v2 + 544);
            ++*(v2 + 552);
            v7 = *(v9 + 38);
            if (!v7)
            {
              goto LABEL_301;
            }

            v6 = *(v9 + 31);
            v226 = *(v2 + 584);
            v3 = v226 + 1;
            if (v226 + 1 > v6)
            {
              v3 = v6 + v7;
              if (!__CFADD__(v6, v7))
              {
                v227 = *(v9 + 40);
                if (v226 >= v3)
                {
                  memmove((*(v2 + 600) + 8 * v6), *(v9 + 40), 8 * v7);
                }

                else
                {
                  v228 = *(v2 + 576);
                  if (v228 < v3)
                  {
                    if (*(v2 + 568))
                    {
                      v229 = 2 * v228;
                      v21 = v228 == 0;
                      v230 = 8;
                      if (!v21)
                      {
                        v230 = v229;
                      }

                      if (v230 <= v3)
                      {
                        v231 = v6 + v7;
                      }

                      else
                      {
                        v231 = v230;
                      }

                      re::DynamicArray<float *>::setCapacity((v2 + 568), v231);
                    }

                    else
                    {
                      re::DynamicArray<float *>::setCapacity((v2 + 568), v6 + v7);
                      ++*(v2 + 592);
                    }
                  }

                  v232 = *(v2 + 584);
                  v233 = v232 - v6;
                  v234 = &v227[8 * (v232 - v6)];
                  if (v232 != v6)
                  {
                    memmove((*(v2 + 600) + 8 * v6), v227, 8 * v233);
                    v6 = *(v2 + 584);
                  }

                  memcpy((*(v2 + 600) + 8 * v6), v234, 8 * (v7 - v233));
                  *(v2 + 584) = v3;
                }

                ++*(v2 + 592);
                goto LABEL_301;
              }

              goto LABEL_340;
            }

LABEL_339:
            v249 = 0;
            v266 = 0u;
            v267 = 0u;
            v264 = 0u;
            v265 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v255 = 136315906;
            v256 = "copy";
            v257 = 1024;
            v258 = 643;
            v259 = 2048;
            v260 = v6;
            v261 = 2048;
            v262 = v3;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_340:
            re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v226, v6, v7);
            _os_crash();
            __break(1u);
            goto LABEL_341;
          }

          goto LABEL_337;
        }

LABEL_336:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Tagged unions don't support custom constructors.", "!sharedTypeInfo().constructor", "commitTo", 265);
        _os_crash();
        __break(1u);
LABEL_337:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Tagged unions don't support custom destructors.", "!sharedTypeInfo().destructor", "commitTo", 266);
        _os_crash();
        __break(1u);
LABEL_338:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid super class type.", "superClass", "commitTo", 303);
        _os_crash();
        __break(1u);
        goto LABEL_339;
      }

LABEL_335:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Union tag type must be an enum type.", "tagType.value().isEnum()", "commitTo", 264);
      _os_crash();
      __break(1u);
      goto LABEL_336;
    }

LABEL_334:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Union tag type must be registered before the union type.", "tagType", "commitTo", 263);
    _os_crash();
    __break(1u);
    goto LABEL_335;
  }

  if (v16 != 8)
  {
    if (v16 == 9)
    {
      *v3 = *(v2 + 744) & 0xFFFFFF | (*(v3 + 3) << 24);
      v17 = *(v2 + 744);
      v18 = *(v2 + 736);
      if (v17 >= v18)
      {
        v19 = v17 + 1;
        if (v18 < v17 + 1)
        {
          if (*(v2 + 728))
          {
            v20 = 2 * v18;
            v21 = v18 == 0;
            v22 = 8;
            if (!v21)
            {
              v22 = v20;
            }

            if (v22 <= v19)
            {
              v23 = v19;
            }

            else
            {
              v23 = v22;
            }

            re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity((v2 + 728), v23);
          }

          else
          {
            re::DynamicArray<re::RenderGraphTargetDescription>::setCapacity((v2 + 728), v19);
            ++*(v2 + 752);
          }
        }

        v17 = *(v2 + 744);
      }

      v202 = (*(v2 + 760) + 112 * v17);
      v203 = *(v9 + 2);
      v204 = *(v9 + 4);
      v202[1] = *(v9 + 3);
      v202[2] = v204;
      *v202 = v203;
      v205 = *(v9 + 5);
      v206 = *(v9 + 6);
      v207 = *(v9 + 8);
      v202[5] = *(v9 + 7);
      v202[6] = v207;
      v202[3] = v205;
      v202[4] = v206;
      ++*(v2 + 744);
      ++*(v2 + 752);
      goto LABEL_301;
    }

    goto LABEL_349;
  }

  LOBYTE(v251) = 0;
  v81 = *(v9 + 29);
  v4 = v81 & 0xFFFFFF;
  if ((v81 & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
    re::Optional<re::TypeInfo>::operator=(&v251, buf);
    if ((v251 & 1) == 0)
    {
      goto LABEL_338;
    }
  }

  if (v4)
  {
    v82 = *(v253 + 48) & 1;
  }

  else
  {
    v82 = 1;
  }

  if ((v5 & (*(v9 + 23) == 0) & ((v9[408] | v9[160]) ^ 1) & v82) == 1)
  {
    v89 = *(v9 + 43);
    if (v89)
    {
      v4 = *(v9 + 45);
      v5 = 40 * v89;
      do
      {
        re::TypeRegistry::typeInfo(v2, *v4, buf);
        if ((buf[0] & 1) == 0)
        {
          goto LABEL_330;
        }

        if ((*(*(&v264 + 1) + 48) & 1) == 0)
        {
          goto LABEL_163;
        }

        v4 += 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v9 + 20) |= 1u;
  }

LABEL_163:
  if ((v251 != 1 || (*(v253 + 48) & 2) != 0) && (v9[28] != 1 || v9[29] == 1))
  {
    v90 = *(v9 + 43);
    if (v90)
    {
      v4 = *(v9 + 45);
      v5 = 40 * v90;
      do
      {
        re::TypeRegistry::typeInfo(v2, *v4, buf);
        if ((buf[0] & 1) == 0)
        {
          goto LABEL_329;
        }

        if ((*(*(&v264 + 1) + 48) & 2) == 0)
        {
          goto LABEL_173;
        }

        v4 += 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v9 + 20) |= 2u;
  }

LABEL_173:
  if (v9[160] == 1 && v251 == 1)
  {
    re::TypeInfo::rootClass((&v251 + 8), &v249);
    v91 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *v250);
    v92 = *(v250 + 88);
    if (v92)
    {
      v93 = *v91 & 0xFFFFFF;
      v4 = *(v2 + 624);
      do
      {
        v5 = v93;
        if (v4 <= v93)
        {
          goto LABEL_331;
        }

        v6 = *(v2 + 640) + 176 * v93;
        if (*(v6 + 128) == 1 && *(v6 + 136) == *(v9 + 21))
        {
          goto LABEL_332;
        }

        ++v93;
      }

      while (--v92);
    }
  }

  if (v9[408] == 1)
  {
    *(v9 + 44) = *(v2 + 664);
    re::DynamicArray<re::internal::ObjectMemberInfo>::add((v2 + 648), (v9 + 416));
  }

  v94 = *(v2 + 664);
  v7 = *(v9 + 43);
  *(v9 + 31) = v94;
  *(v9 + 32) = v7;
  v6 = *(v9 + 45);
  if ((v9[80] & 0x10) != 0)
  {
LABEL_188:
    if (v7)
    {
      v8 = v94;
      v99 = *(v2 + 664);
      v4 = v99 + 1;
      if (v99 + 1 <= v8)
      {
LABEL_346:
        v249 = 0;
        v266 = 0u;
        v267 = 0u;
        v264 = 0u;
        v265 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v255 = 136315906;
        v256 = "copy";
        v257 = 1024;
        v258 = 643;
        v259 = 2048;
        v260 = v8;
        v261 = 2048;
        v262 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_347;
      }

      v100 = v8 + v7;
      if (__CFADD__(v8, v7))
      {
        goto LABEL_348;
      }

      if (v99 >= v100)
      {
        v5 = v6 + 40 * v7;
        v113 = (*(v2 + 680) + 40 * v8 + 8);
        v114 = v6 + 8;
        do
        {
          *(v113 - 1) = *(v114 - 8);
          v115 = re::StringID::operator=(v113, v114);
          v116 = *(v114 + 16);
          *(v115 + 6) = *(v114 + 24);
          v115[2] = v116;
          v113 = v115 + 5;
          v117 = v114 + 32;
          v114 += 40;
        }

        while (v117 != v5);
      }

      else
      {
        re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity((v2 + 648), v8 + v7);
        v101 = *(v2 + 664);
        v102 = *(v2 + 680);
        v103 = v8;
        v104 = v101 - v8;
        if (v101 != v8)
        {
          v248 = *(v2 + 664);
          v105 = (v102 + 40 * v8 + 8);
          v5 = v6 + 8;
          do
          {
            *(v105 - 1) = *(v5 - 8);
            v106 = re::StringID::operator=(v105, v5);
            v107 = *(v5 + 16);
            *(v106 + 6) = *(v5 + 24);
            v106[2] = v107;
            v105 = v106 + 5;
            v108 = v5 + 32;
            v5 += 40;
          }

          while (v108 != v6 + 40 * v104);
          v102 = *(v2 + 680);
          v103 = *(v2 + 664);
          v101 = v248;
        }

        if (v104 != v7)
        {
          v7 = v6 + 40 * v7;
          v5 = 40 * v101 - 40 * v8 + v6 + 8;
          v109 = (v102 + 40 * v103 + 8);
          do
          {
            *(v109 - 1) = *(v5 - 8);
            v110 = re::StringID::StringID(v109, v5);
            v111 = *(v5 + 16);
            *(v110 + 6) = *(v5 + 24);
            *(v110 + 2) = v111;
            v112 = v5 + 32;
            v5 += 40;
            v109 = (v110 + 40);
          }

          while (v112 != v7);
        }

        *(v2 + 664) = v100;
      }

      ++*(v2 + 672);
    }
  }

  else if (v7)
  {
    v95 = 0;
    v96 = (v6 + 32);
    v97 = 40 * v7;
    while (1)
    {
      v98 = *v96;
      if (v98 <= v95)
      {
        goto LABEL_324;
      }

      v96 += 10;
      v95 = v98;
      v97 -= 40;
      if (!v97)
      {
        goto LABEL_188;
      }
    }
  }

  v118 = *(v2 + 704);
  v8 = *(v9 + 48);
  *(v9 + 33) = v118;
  *(v9 + 34) = v8;
  if (v8)
  {
    v7 = v118;
    v119 = *(v2 + 704);
    v4 = v119 + 1;
    if (v119 + 1 <= v7)
    {
LABEL_341:
      v249 = 0;
      v266 = 0u;
      v267 = 0u;
      v264 = 0u;
      v265 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "copy";
      v257 = 1024;
      v258 = 643;
      v259 = 2048;
      v260 = v7;
      v261 = 2048;
      v262 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_342;
    }

    v4 = v7 + v8;
    if (__CFADD__(v7, v8))
    {
LABEL_342:
      re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v119, v7, v8);
      _os_crash();
      __break(1u);
LABEL_343:
      v249 = 0;
      v266 = 0u;
      v267 = 0u;
      v264 = 0u;
      v265 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v255 = 136315906;
      v256 = "operator[]";
      v257 = 1024;
      v258 = 789;
      v259 = 2048;
      v260 = v4;
      v261 = 2048;
      v262 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_344;
    }

    v120 = *(v9 + 50);
    if (v119 >= v4)
    {
      v131 = (*(v2 + 720) + 24 * v7);
      v132 = 24 * v8;
      do
      {
        v133 = re::StringID::operator=(v131, v120);
        *(v133 + 4) = *(v120 + 16);
        v120 += 24;
        v131 = v133 + 3;
        v132 -= 24;
      }

      while (v132);
    }

    else
    {
      re::DynamicArray<re::AttributeArgument>::growCapacity((v2 + 688), v7 + v8);
      v121 = *(v2 + 704);
      v122 = *(v2 + 720);
      v123 = v7;
      v124 = v121 - v7;
      if (v121 != v7)
      {
        v125 = (v122 + 24 * v7);
        v126 = 24 * v121 - 24 * v7;
        v6 = v120;
        do
        {
          v127 = re::StringID::operator=(v125, v6);
          *(v127 + 4) = *(v6 + 16);
          v6 += 24;
          v125 = v127 + 3;
          v126 -= 24;
        }

        while (v126);
        v122 = *(v2 + 720);
        v123 = *(v2 + 704);
        v124 = v121 - v7;
      }

      if (v124 != v8)
      {
        v128 = v120 + 24 * v124;
        v129 = (v122 + 24 * v123);
        v6 = 24 * v8 + 24 * v7 - 24 * v121;
        do
        {
          v130 = re::StringID::StringID(v129, v128);
          *(v130 + 4) = *(v128 + 16);
          v128 += 24;
          v129 = (v130 + 24);
          v6 -= 24;
        }

        while (v6);
      }

      *(v2 + 704) = v4;
    }

    ++*(v2 + 712);
  }

  if ((*(v9 + 29) & 0xFFFFFF) == 0)
  {
    *v3 = *(v2 + 624) & 0xFFFFFF | (*(v3 + 3) << 24);
    v157 = *(v2 + 624);
    if (v157 >= *(v2 + 616))
    {
      re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity((v2 + 608), v157 + 1);
      v157 = *(v2 + 624);
    }

    v158 = *(v2 + 640) + 176 * v157;
    *v158 = *(v9 + 2);
    v159 = *(v9 + 3);
    v160 = *(v9 + 4);
    v161 = *(v9 + 6);
    *(v158 + 48) = *(v9 + 5);
    *(v158 + 64) = v161;
    *(v158 + 16) = v159;
    *(v158 + 32) = v160;
    v162 = *(v9 + 7);
    *(v158 + 92) = *(v9 + 124);
    *(v158 + 80) = v162;
    re::StringID::StringID((v158 + 112), v9 + 9);
    v163 = v9[160];
    *(v158 + 128) = v163;
    if (v163 == 1)
    {
      *(v158 + 136) = *(v9 + 21);
    }

    v164 = *(v9 + 12);
    *(v158 + 144) = *(v9 + 11);
    *(v158 + 160) = v164;
    ++*(v2 + 624);
    ++*(v2 + 632);
    goto LABEL_301;
  }

  v4 = *re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v9 + 14)) & 0xFFFFFFLL;
  v5 = *(v2 + 624);
  if (v5 <= v4)
  {
    goto LABEL_343;
  }

  v5 = (*(*(v2 + 640) + 176 * v4 + 88) + v4);
  *v3 = (*(*(v2 + 640) + 176 * v4 + 88) + v4) & 0xFFFFFF | (*(v3 + 3) << 24);
  v134 = *(v2 + 624);
  v3 = v134 + 1;
  if (v134 + 1 <= v5)
  {
LABEL_344:
    v249 = 0;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v255 = 136315906;
    v256 = "insert";
    v257 = 1024;
    v258 = 855;
    v259 = 2048;
    v260 = v5;
    v261 = 2048;
    v262 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_345:
    v249 = 0;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v255 = 136315906;
    v256 = "operator[]";
    v257 = 1024;
    v258 = 789;
    v259 = 2048;
    v260 = v4;
    v261 = 2048;
    v262 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_346;
  }

  if (v134 >= *(v2 + 616))
  {
    re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity((v2 + 608), v134 + 1);
    v134 = *(v2 + 624);
  }

  v135 = *(v2 + 640) + 176 * v134;
  if (v134 > v5)
  {
    v136 = *(v135 - 128);
    *(v135 + 32) = *(v135 - 144);
    *(v135 + 48) = v136;
    v137 = *(v135 - 160);
    *v135 = *(v135 - 176);
    *(v135 + 16) = v137;
    v138 = *(v135 - 96);
    *(v135 + 64) = *(v135 - 112);
    *(v135 + 80) = v138;
    v139 = *(v135 - 84);
    v140 = *(v135 - 56);
    *(v135 + 112) = *(v135 - 64);
    *(v135 + 120) = v140;
    *(v135 + 92) = v139;
    *(v135 - 64) = 0;
    *(v135 - 56) = &str_67;
    v141 = *(v135 - 48);
    *(v135 + 128) = v141;
    if (v141 == 1)
    {
      *(v135 + 136) = *(v135 - 40);
    }

    v142 = *(v135 - 16);
    *(v135 + 144) = *(v135 - 32);
    *(v135 + 160) = v142;
    v143 = *(v2 + 640);
    v144 = *(v2 + 624);
    if (v143 + 176 * v144 - 176 != v143 + 176 * v5)
    {
      v145 = 176 * v144;
      v7 = 176 * v5 + 176;
      v8 = 1;
      while (1)
      {
        v146 = v143 + v145;
        v147 = *(v143 + v145 - 304);
        *(v146 - 144) = *(v143 + v145 - 320);
        *(v146 - 128) = v147;
        v148 = *(v143 + v145 - 288);
        v149 = *(v143 + v145 - 336);
        *(v146 - 176) = *(v143 + v145 - 352);
        *(v146 - 160) = v149;
        v150 = *(v143 + v145 - 272);
        *(v146 - 112) = v148;
        *(v146 - 96) = v150;
        *(v146 - 84) = *(v143 + v145 - 260);
        re::StringID::operator=((v143 + v145 - 64), (v143 + v145 - 240));
        if (*(v143 + v145 - 48))
        {
          if (*(v143 + v145 - 224))
          {
            goto LABEL_233;
          }

          *(v146 - 48) = 0;
        }

        else if (*(v143 + v145 - 224))
        {
          *(v146 - 48) = 1;
LABEL_233:
          *(v143 + v145 - 40) = *(v143 + v145 - 216);
        }

        v151 = v143 + v145;
        v152 = *(v143 + v145 - 192);
        *(v151 - 32) = *(v143 + v145 - 208);
        *(v151 - 16) = v152;
        v143 -= 176;
        v7 += 176;
        if (v145 == v7)
        {
          v143 = *(v2 + 640);
          break;
        }
      }
    }

    v135 = v143 + 176 * v5;
    *v135 = *(v9 + 2);
    v153 = *(v9 + 3);
    v154 = *(v9 + 4);
    v155 = *(v9 + 6);
    *(v135 + 48) = *(v9 + 5);
    *(v135 + 64) = v155;
    *(v135 + 16) = v153;
    *(v135 + 32) = v154;
    v156 = *(v9 + 7);
    *(v135 + 92) = *(v9 + 124);
    *(v135 + 80) = v156;
    re::StringID::operator=((v135 + 112), v9 + 18);
    if (*(v135 + 128))
    {
      if ((v9[160] & 1) == 0)
      {
        *(v135 + 128) = 0;
        goto LABEL_249;
      }
    }

    else
    {
      if ((v9[160] & 1) == 0)
      {
        goto LABEL_249;
      }

      *(v135 + 128) = 1;
    }

    goto LABEL_248;
  }

  *v135 = *(v9 + 2);
  v165 = *(v9 + 3);
  v166 = *(v9 + 4);
  v167 = *(v9 + 6);
  *(v135 + 48) = *(v9 + 5);
  *(v135 + 64) = v167;
  *(v135 + 16) = v165;
  *(v135 + 32) = v166;
  v168 = *(v9 + 7);
  *(v135 + 92) = *(v9 + 124);
  *(v135 + 80) = v168;
  re::StringID::StringID((v135 + 112), v9 + 9);
  v169 = v9[160];
  *(v135 + 128) = v169;
  if (v169 == 1)
  {
LABEL_248:
    *(v135 + 136) = *(v9 + 21);
  }

LABEL_249:
  v170 = *(v9 + 12);
  *(v135 + 144) = *(v9 + 11);
  *(v135 + 160) = v170;
  v6 = *(v2 + 624) + 1;
  *(v2 + 624) = v6;
  ++*(v2 + 632);
  v3 = (v5 + 1);
  if (v3 < v6)
  {
    v6 = v6;
    v7 = 176 * v3;
    do
    {
      v5 = *(v2 + 624);
      if (v5 <= v3)
      {
        goto LABEL_325;
      }

      v171 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(*(v2 + 640) + v7));
      *v171 = v3++ & 0xFFFFFF | (*(v171 + 3) << 24);
      v7 += 176;
    }

    while (v3 < v6);
    v6 = *(v2 + 624);
  }

  if (v6 <= v4)
  {
    goto LABEL_345;
  }

  v172 = *(v2 + 640) + 176 * v4;
  v173 = *(v172 + 84);
  ++*(v172 + 88);
  if ((v173 & 0xFFFFFF) != 0)
  {
    v5 = 176;
    while (1)
    {
      v3 = *re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v172 + 80)) & 0xFFFFFFLL;
      v4 = *(v2 + 624);
      if (v4 <= v3)
      {
        break;
      }

      v172 = *(v2 + 640) + 176 * v3;
      v174 = *(v172 + 84);
      ++*(v172 + 88);
      if ((v174 & 0xFFFFFF) == 0)
      {
        goto LABEL_301;
      }
    }

    v249 = 0;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v255 = 136315906;
    v256 = "operator[]";
    v257 = 1024;
    v258 = 789;
    v259 = 2048;
    v260 = v3;
    v261 = 2048;
    v262 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_324:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Object member %s has invalid numeric tag %d. Tags need to be unique and greater than 1. Object members need to be sorted by tag.", "member.serializationTag > tag", "commitTo", 395, *(v96 - 2), v98);
    _os_crash();
    __break(1u);
LABEL_325:
    v249 = 0;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v255 = 136315906;
    v256 = "operator[]";
    v257 = 1024;
    v258 = 789;
    v259 = 2048;
    v260 = v3;
    v261 = 2048;
    v262 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_326;
  }

LABEL_301:
  if (v9[28] == 1)
  {
    if (v9[29])
    {
      v235 = 2;
    }

    else
    {
      v235 = 0;
    }

    *(v9 + 20) = *(v9 + 20) & 0xFFFFFFFD | v235;
  }

  v236 = *(v9 + 122);
  if (v236)
  {
    v237 = 0;
    v238 = *(v9 + 59);
    while (1)
    {
      v239 = *v238;
      v238 += 14;
      if (v239 < 0)
      {
        break;
      }

      if (v236 == ++v237)
      {
        LODWORD(v237) = *(v9 + 122);
        break;
      }
    }
  }

  else
  {
    LODWORD(v237) = 0;
  }

  while (v237 != v236)
  {
    v240 = *(v9 + 59);
    v241 = v240 + 56 * v237;
    v242 = *(v241 + 24);
    v251 = *(v241 + 8);
    *(&v251 + 1) = *(v9 + 4);
    v252 = v242;
    memset(buf, 0, sizeof(buf));
    *&v264 = 0;
    v243 = re::Hash<re::internal::TypeAttributeKey>::operator()(&v255, &v251);
    re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(v2 + 768, &v251, v243, buf);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v244 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(v2 + 768, *&buf[8], *buf);
      *(v244 + 8) = v251;
      *(v244 + 24) = v252;
      *(v244 + 32) = *(v240 + 56 * v237 + 32);
      ++*(v2 + 808);
    }

    v245 = *(v9 + 122);
    if (v245 <= v237 + 1)
    {
      v245 = v237 + 1;
    }

    while (v245 - 1 != v237)
    {
      LODWORD(v237) = v237 + 1;
      if ((*(*(v9 + 59) + 56 * v237) & 0x80000000) != 0)
      {
        goto LABEL_321;
      }
    }

    LODWORD(v237) = v245;
LABEL_321:
    ;
  }

  ++*(v2 + 24);
  re::TypeBuilder::reset(v9, v14);
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 4 * a2;
}

unint64_t *re::DynamicArray<re::EnumConstant>::copy(unint64_t *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = this[2];
  if (v7 + 1 <= a2)
  {
    v21 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v22) = 136315906;
    *(&v22 + 4) = "copy";
    WORD6(v22) = 1024;
    HIWORD(v22) = 643;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_18:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v21, v22);
    _os_crash();
    __break(1u);
  }

  v4 = a4;
  v8 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_18;
  }

  if (v7 >= v8)
  {
    this = (this[4] + 24 * a2 + 8);
    v19 = 24 * a4;
    v20 = (a3 + 8);
    do
    {
      *(this - 1) = *(v20 - 1);
      this = re::StringID::operator=(this, v20) + 3;
      v20 += 3;
      v19 -= 24;
    }

    while (v19);
  }

  else
  {
    this = re::DynamicArray<re::EnumConstant>::growCapacity(this, a2 + a4);
    v10 = v6[2];
    v11 = v6[4];
    v12 = 3 * v5;
    v13 = v10 - v5;
    if (v10 != v5)
    {
      this = (v11 + 24 * v5 + 8);
      v14 = 24 * v10 - 24 * v5;
      v15 = (a3 + 8);
      do
      {
        *(this - 1) = *(v15 - 1);
        this = re::StringID::operator=(this, v15) + 3;
        v15 += 3;
        v14 -= 24;
      }

      while (v14);
      v11 = v6[4];
      v5 = v6[2];
    }

    if (v13 != v4)
    {
      v16 = 24 * v4 + 8 * v12 - 24 * v10;
      v17 = (24 * v10 - 8 * v12 + a3 + 8);
      this = (v11 + 24 * v5 + 8);
      do
      {
        *(this - 1) = v17[-1].var1;
        v18 = re::StringID::StringID(this, v17);
        v17 = (v17 + 24);
        this = (v18 + 24);
        v16 -= 24;
      }

      while (v16);
    }

    v6[2] = v8;
  }

  ++*(v6 + 6);
  return this;
}

re::StringID *re::DynamicArray<re::internal::ObjectMemberInfo>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = *a2;
  result = re::StringID::StringID((v5 + 8), (a2 + 8));
  v7 = *(a2 + 24);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 24) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::TypeBuilder::setSharedInfo(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, int a5, unint64_t a6, unint64_t a7)
{
  v8 = a6;
  if (HIDWORD(a6))
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Size (%zu) exceeds limit.", "size <= std::numeric_limits<uint32_t>::max()", "setSharedInfo", 493, a6);
    _os_crash();
    __break(1u);
  }

  else
  {
    v7 = a7;
    if (!HIDWORD(a7))
    {
      *a1 = a2;
      result = re::StringID::operator=((a1 + 8), a3);
      *(a1 + 24) = a4;
      *(a1 + 40) = v8;
      *(a1 + 44) = v7;
      *(a1 + 72) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 96) = a5;
      return result;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Alignment (%zu) exceeds limit.", "alignment <= std::numeric_limits<uint32_t>::max()", "setSharedInfo", 494, v7);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilder::setIntroducedVersion(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    *(result + 104) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setIntroducedVersion", 510, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::setConstructor(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    *(result + 48) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setConstructor", 518, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::setDestructor(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    *(result + 56) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setDestructor", 526, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::setRetain(uint64_t this, void (*a2)(void *))
{
  if (*this)
  {
    *(this + 64) = a2;
    if (a2)
    {
      *(this + 80) |= 0x200u;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setRetain", 534, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setRelease(uint64_t this, void (*a2)(void *))
{
  if (*this)
  {
    *(this + 72) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setRelease", 544, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setEncoder(uint64_t this, void (*a2)(re::snapshot::Encoder *, const void *))
{
  if (*this)
  {
    *(this + 192) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before calling this function.", "isBuilding()", "setEncoder", 552, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setDecoder(uint64_t this, void (*a2)(re::snapshot::Decoder *, void *))
{
  if (*this)
  {
    *(this + 200) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before calling this function.", "isBuilding()", "setDecoder", 561, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

_BYTE *re::TypeBuilder::setHasKnownSize(_BYTE *this, uint64_t a2)
{
  if (*this)
  {
    if ((this[28] & 1) == 0)
    {
      this[28] = 1;
    }

    this[29] = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setHasKnownSize", 570, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setIsIncomplete(uint64_t this, uint64_t a2)
{
  if (*this)
  {
    if (a2)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    *(this + 80) = *(this + 80) & 0xFFFFFFEF | v4;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setIsIncomplete", 577, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setPreviousVersion(unsigned __int8 *a1, uint64_t *a2)
{
  if (!*a1)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setPreviousVersion", 584);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = *a2;
  if (!*a2)
  {
LABEL_9:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "previousTypeID.isValid()", "setPreviousVersion", 585);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v2 = *a1;
  if (v2 != *(re::DataArray<re::internal::TypeInfoIndex>::tryGet(v4 + 32, a2[1]) + 3))
  {
LABEL_10:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Previous version needs to be of the same type category.", "m_category == registry->typeCategory(previousTypeID)", "setPreviousVersion", 589);
    _os_crash();
    __break(1u);
    goto LABEL_11;
  }

  if (*a2)
  {
    v7 = *(a1 + 6);
    result = re::DataArray<re::TextureAtlasTile>::tryGet(v4 + 96, a2[1]);
    if (result)
    {
      if (v7 > *(result + 16))
      {
        *(a1 + 11) = a2[1];
        return result;
      }
    }
  }

LABEL_11:
  re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) New version number needs to be greater than previous version number.", "m_version > registry->typeVersion(previousTypeID)", "setPreviousVersion", 590);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilder::setVersion(uint64_t this, uint64_t a2)
{
  if (*this)
  {
    *(this + 24) = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setVersion", 602, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setIsCallbackSerializer(uint64_t this, uint64_t a2)
{
  if (*this)
  {
    if (a2)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }

    *(this + 80) = *(this + 80) & 0xFFFFFEFF | v4;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setIsCallbackSerializer", 609, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::beginEnumType(uint64_t a1, uint64_t *a2, int a3, int a4, uint64_t a5)
{
  re::TypeRegistry::typeInfo(*a5, a5, v12);
  if (v12[0])
  {
    *(a1 + 32) = -1;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 88) = 0xFFFFFFFFLL;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0;
    *(a1 + 112) = -1;
    *(a1 + 124) = 0;
    *(a1 + 116) = 0;
    result = re::TypeBuilder::setSharedInfo(a1, 2, a2, a3, a4, *(v13 + 8), *(v13 + 12));
    *(a1 + 112) = *(a5 + 8);
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Type is missing in type registry. Type might have been forward declared, but no type information was provided.", "underlyingTypeInfo", "beginEnumType", 636);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::TypeBuilder::addEnumConstant(re::TypeBuilder *this, uint64_t a2, StringID *a3)
{
  if (*this == 2)
  {
    v5 = a2;
    re::StringID::StringID(&v6, a3);
    v4 = re::DynamicArray<re::EnumConstant>::add(this + 26, &v5);
    if (v6)
    {
      if (v6)
      {
      }
    }
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) beginEnumType() needs to be called before addEnumConstant().", "isBuilding()", "addEnumConstant", 647);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kEnum", "addEnumConstant", 648);
    _os_crash();
    __break(1u);
  }
}

void *re::DynamicArray<re::EnumConstant>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::EnumConstant>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 24 * v4);
  *v5 = *a2;
  v6 = a2[1];
  v5[1] = v5[1] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[2] = a2[2];
  a2[1] = 0;
  a2[2] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void re::TypeBuilder::addEnumConstantRenaming(re::TypeBuilder *this, uint64_t a2, StringID *a3)
{
  if (*this == 2)
  {
    v5 = a2;
    re::StringID::StringID(&v6, a3);
    v4 = re::DynamicArray<re::EnumConstant>::add(this + 31, &v5);
    if (v6)
    {
      if (v6)
      {
      }
    }
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) beginEnumType() needs to be called before addEnumConstantRenaming().", "isBuilding()", "addEnumConstantRenaming", 655);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kEnum", "addEnumConstantRenaming", 656);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::TypeBuilder::beginOptionalType(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t a4, __int128 *a5)
{
  v10 = -1;
  *(a1 + 32) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 124) = 0;
  *(a1 + 116) = 0;
  *(a1 + 132) = 0;
  v13 = *a5;
  re::TypeRegistry::typeInfo(v13, &v13, v14);
  if (v14[0] == 1)
  {
    v10 = *(v15 + 64);
  }

  result = re::TypeBuilder::setSharedInfo(a1, 3, a2, 1, v10, a3, a4);
  v12 = *(a5 + 1);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = v12;
  return result;
}

uint64_t re::TypeBuilder::setOptionalAccessors(uint64_t this, void *(*a2)(void *), void (*a3)(void *, const void *))
{
  if (*this == 3)
  {
    *(this + 120) = a2;
    *(this + 128) = a3;
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) beginOptionalType() needs to be called before setOptionalAccessors().", "isBuilding()", "setOptionalAccessors", 679);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kOptional", "setOptionalAccessors", 680);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::beginArrayType(uint64_t a1, uint64_t *a2, re **a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFF)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Invalid array size. Value: %zu, max: %d", "length < std::numeric_limits<int32_t>::max()", "beginArrayType", 696, a4, 0x7FFFFFFFLL);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  re::TypeRegistry::typeInfo(*a3, a3, v14);
  if ((v14[0] & 1) == 0)
  {
LABEL_7:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Type is missing in type registry. Type might have been forward declared, but no type information was provided.", "elementTypeInfo", "beginArrayType", 700);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = -1;
  *(a1 + 32) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *&v10 = 0xFFFFFFFFLL;
  *(&v10 + 1) = 0xFFFFFFFFLL;
  *(a1 + 112) = v10;
  *(a1 + 128) = 0;
  v13 = *a3;
  re::TypeRegistry::typeInfo(v13, &v13, v16);
  if (v16[0] == 1)
  {
    v9 = *(v17 + 64);
  }

  v11 = re::internal::checkedArraySize(*(v15 + 8), a4);
  result = re::TypeBuilder::setSharedInfo(a1, 4, a2, 1, v9, v11, *(v15 + 12));
  *(a1 + 80) |= 8u;
  *(a1 + 112) = a3[1];
  *(a1 + 120) = 0xFFFFFFFFLL;
  *(a1 + 128) = a4;
  return result;
}

uint64_t re::TypeBuilder::beginArrayType(uint64_t a1, uint64_t *a2, re **a3, uint64_t a4, int a5)
{
  re::TypeRegistry::typeInfo(*a3, a3, v15);
  if (v15[0])
  {
    v11 = -1;
    *(a1 + 32) = -1;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 88) = 0xFFFFFFFFLL;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0;
    *&v12 = 0xFFFFFFFFLL;
    *(&v12 + 1) = 0xFFFFFFFFLL;
    *(a1 + 112) = v12;
    *(a1 + 128) = 0;
    v14 = *a3;
    re::TypeRegistry::typeInfo(v14, &v14, v17);
    if (v17[0] == 1)
    {
      v11 = *(v18 + 64);
    }

    result = re::TypeBuilder::setSharedInfo(a1, 4, a2, 1, v11, 8uLL, *(v16 + 12));
    *(a1 + 80) |= 8u;
    *(a1 + 112) = a3[1];
    *(a1 + 120) = *(a4 + 8);
    *(a1 + 128) = a5;
  }

  else
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Type is missing in type registry. Type might have been forward declared, but no type information was provided.", "elementTypeInfo", "beginArrayType", 719);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

double re::TypeBuilder::beginListType(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, unint64_t a5, __int128 *a6)
{
  v14 = *a6;
  re::TypeRegistry::typeInfo(v14, &v14, v15);
  v12 = -1;
  if (v15[0] == 1)
  {
    v12 = *(v16 + 64);
  }

  *(a1 + 32) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 116) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0u;
  *(a1 + 164) = 0;
  re::TypeBuilder::setSharedInfo(a1, 5, a2, a3, v12, a4, a5);
  *(a1 + 112) = *(a6 + 1);
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  return result;
}

uint64_t re::TypeBuilder::setListUsesContiguousStorage(uint64_t this, uint64_t a2)
{
  if (*this == 5)
  {
    if (a2)
    {
      v2 = 8;
    }

    else
    {
      v2 = 0;
    }

    *(this + 80) = *(this + 80) & 0xFFFFFFF7 | v2;
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginListType() needs to be called before setListAccessors().", "isBuilding()", "setListUsesContiguousStorage", 761);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kList", "setListUsesContiguousStorage", 762);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setListAccessors(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*result == 5)
  {
    *(result + 120) = a2;
    *(result + 128) = a3;
  }

  else
  {
    if (!*result)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginListType() needs to be called before setListAccessors().", "isBuilding()", "setListAccessors", 769);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kList", "setListAccessors", 770);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::setListIndexer(uint64_t this, void *(*a2)(void *, unint64_t))
{
  if (*this == 5)
  {
    *(this + 136) = a2;
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginListType() needs to be called before setListIndexer().", "isBuilding()", "setListIndexer", 780);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kList", "setListIndexer", 781);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::setListIterator(uint64_t this, void *(*a2)(void *, re::Allocator *), void *(*a3)(void *), void (*a4)(void *, re::Allocator *))
{
  if (*this == 5)
  {
    *(this + 144) = a2;
    *(this + 152) = a3;
    *(this + 160) = a4;
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) beginListType() needs to be called before setListIterator().", "isBuilding()", "setListIterator", 791);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kList", "setListIterator", 792);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::beginDictionaryType(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, unint64_t a5, __int128 *a6, __int128 *a7)
{
  v19 = *a6;
  re::TypeRegistry::typeInfo(v19, &v19, v20);
  if (v20[0] == 1)
  {
    v14 = *(v21 + 64);
  }

  else
  {
    v14 = -1;
  }

  v18 = *a7;
  re::TypeRegistry::typeInfo(v18, &v18, v20);
  v15 = -1;
  if (v20[0] == 1)
  {
    v15 = *(v21 + 64);
  }

  *(a1 + 32) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = -1;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  *(a1 + 184) = 0uLL;
  result = re::TypeBuilder::setSharedInfo(a1, 6, a2, a3, v16, a4, a5);
  *(a1 + 112) = *(a6 + 1);
  *(a1 + 120) = *(a7 + 1);
  return result;
}

uint64_t re::TypeBuilder::setDictionaryAccessors(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result == 6)
  {
    *(result + 128) = a2;
    *(result + 136) = a3;
    *(result + 144) = a4;
    *(result + 192) = a5;
  }

  else
  {
    if (!*result)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginDictionaryType() needs to be called before setDictionaryAccessors().", "isBuilding()", "setDictionaryAccessors", 825);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kDictionary", "setDictionaryAccessors", 826);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::setDictionaryIterator(uint64_t this, void *(*a2)(void *, re::Allocator *), BOOL (*a3)(void *), const void *(*a4)(void *), void *(*a5)(void *), void (*a6)(void *, re::Allocator *))
{
  if (*this == 6)
  {
    *(this + 152) = a2;
    *(this + 160) = a3;
    *(this + 168) = a4;
    *(this + 176) = a5;
    *(this + 184) = a6;
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) beginDictionaryType() needs to be called before setDictionaryAccessors().", "isBuilding()", "setDictionaryIterator", 842);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, a4, a5, a6, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kDictionary", "setDictionaryIterator", 843);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::beginObjectType(uint64_t a1, uint64_t *a2, int a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (*a7 && (re::TypeRegistry::typeInfo(*a7, a7, v17), (v17[0] & 1) == 0))
  {
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Super class type is missing in type registry. Super classes need to be registered before their sub-classes.", "typeRegistry->typeInfo(superClass)", "beginObjectType", 889);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
    *(a1 + 32) = -1;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 88) = 0xFFFFFFFFLL;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0;
    re::StringID::invalid((a1 + 144));
    *(a1 + 160) = 0;
    *(a1 + 176) = -1;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    result = re::TypeBuilder::setSharedInfo(a1, 8, a2, a3, a4, a5, a6);
    if (*a7)
    {
      v15 = *(a7 + 8);
    }

    *(a1 + 112) = v15;
    *(a1 + 120) = 1;
  }

  return result;
}

uint64_t re::TypeBuilder::setObjectSuperClass(uint64_t result, void *a2)
{
  if (*result == 8)
  {
    if (*a2)
    {
      v2 = a2[1];
    }

    else
    {
      v2 = 0xFFFFFFFFLL;
    }

    *(result + 112) = v2;
  }

  else
  {
    if (!*result)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before addObjectMember().", "isBuilding()", "setObjectSuperClass", 900);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kObject", "setObjectSuperClass", 901);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::addObjectMember(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (*a1 == 8)
  {
    v8 = a2;
    v13 = 0xFFFFFFFFLL;
    re::StringID::invalid(&v14);
    v15 = 0;
    v16 = 1;
    v17 = 0;
    v13 = *(a3 + 8);
    re::StringID::operator=(&v14, a4);
    v15 = a5;
    v16 = 1;
    v17 = v8;
    v10 = *(a1 + 344);
    v11 = re::DynamicArray<re::internal::ObjectMemberInfo>::add((a1 + 328), &v13);
    if (v14)
    {
      if (v14)
      {
      }
    }

    return v10;
  }

  else
  {
    if (!*a1)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before addObjectMember().", "isBuilding()", "addObjectMember", 909);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kObject", "addObjectMember", 910);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::TypeBuilder::addObjectMemberRenaming(re::TypeBuilder *this, const re::StringID *a2, const re::StringID *a3)
{
  if (*this != 8)
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before addMemberSharedInternal().", "isBuilding()", "addObjectMemberRenaming", 933);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kObject", "addObjectMemberRenaming", 934);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(5, a2, a3, "assertion failure: '%s' (%s:line %i) No type member found with name %s. Type members need to be defined before calls addObjectMemberRenaming().", "(size_t)index < m_objectMembers.size()", "addObjectMemberRenaming", 947, *(v3 + 1));
    _os_crash();
    __break(1u);
    return;
  }

  v3 = a2;
  v5 = *(this + 43);
  if (!v5)
  {
    goto LABEL_15;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(this + 45);
  while (!re::StringID::operator==((v9 + 40 * v7 + 8), v3))
  {
    v7 = (v8 + 1);
    v8 = v7;
    a2 = v7;
    if (v5 <= v7)
    {
      goto LABEL_8;
    }
  }

  a2 = v8;
LABEL_8:
  if (v5 <= v7)
  {
    goto LABEL_15;
  }

  re::TypeBuilder::addObjectMemberRenaming(this, a2, a3);
}

void re::TypeBuilder::addObjectMemberRenaming(re::TypeBuilder *this, uint64_t a2, const re::StringID *a3)
{
  if (*this != 8)
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before addMemberSharedInternal().", "isBuilding()", "addObjectMemberRenaming", 954);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kObject", "addObjectMemberRenaming", 955);
    _os_crash();
    __break(1u);
    goto LABEL_10;
  }

  v3 = a2;
  if (*(this + 43) <= a2)
  {
LABEL_10:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid index %d. Type members need to be defined before calling addObjectMemberRenaming().", "memberIndex < m_objectMembers.size()", "addObjectMemberRenaming", 958, v3);
    _os_crash();
    __break(1u);
    return;
  }

  re::StringID::invalid(&v7);
  v8 = v3;
  re::StringID::operator=(&v7, a3);
  v6 = re::DynamicArray<re::RenamedObjectMember>::add((this + 368), &v7);
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }
}

re::StringID *re::DynamicArray<re::RenamedObjectMember>::add(_anonymous_namespace_ *this, StringID *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AttributeArgument>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::StringID::StringID((*(this + 4) + 24 * v4), a2);
  *(result + 4) = a2[1].var0;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::TypeBuilder::addCustomClassID(uint64_t this, uint64_t a2)
{
  if (*this == 8)
  {
    if ((*(this + 160) & 1) == 0)
    {
      *(this + 160) = 1;
    }

    *(this + 168) = a2;
  }

  else
  {
    if (!*this)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before addCustomClassID().", "isBuilding()", "addCustomClassID", 983);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kObject", "addCustomClassID", 984);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

void re::TypeBuilder::addObjectMemberCustomClassID(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (*a1 != 8)
  {
    if (!*a1)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before addMemberSharedInternal().", "isBuilding()", "addObjectMemberCustomClassID", 991);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kObject", "addObjectMemberCustomClassID", 992);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if ((*(a1 + 116) & 0xFFFFFF) != 0)
  {
LABEL_16:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) addObjectMemberCustomClassID() can only be added to root class.", "m_objectTypeInfo.superClass.isNull()", "addObjectMemberCustomClassID", 996);
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  v4 = v22;
  re::TypeRegistry::typeInfo(*a2, a2, v22);
  if ((v22[0] & 1) == 0)
  {
LABEL_17:
    re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) Type is missing in type registry. Type might have been forward declared, but no type information was provided.", "memberTypeInfo", "addObjectMemberCustomClassID", 1000);
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  if ((re::TypeInfo::isInteger(&v23) & 1) == 0)
  {
LABEL_18:
    re::TypeInfo::name((v4 + 8));
    v11 = re::TypeInfo::name((v4 + 8));
    re::internal::assertLog(5, v12, "assertion failure: '%s' (%s:line %i) Custom class identifier expected to be basic or enum type. Type: %s", "memberTypeInfo.value().isInteger()", "addObjectMemberCustomClassID", 1003, v11[1]);
    _os_crash();
    __break(1u);
    return;
  }

  v18 = 0xFFFFFFFFLL;
  re::StringID::invalid(&v19);
  LODWORD(v20) = 0;
  BYTE4(v20) = 1;
  v21 = 0;
  v18 = *(a2 + 8);
  re::StringID::operator=(&v19, a3);
  LODWORD(v20) = a4;
  BYTE4(v20) = 1;
  v21 = -1;
  v13[0] = 1;
  v14 = v18;
  re::StringID::StringID(&v15, &v19);
  v16 = v20;
  v17 = v21;
  v10 = re::Optional<re::internal::ObjectMemberInfo>::operator=(a1 + 408, v13);
  if (v13[0] == 1 && (v15 & 1) != 0)
  {
    if (v15)
    {
    }
  }

  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }
}

uint64_t re::TypeBuilder::setHideObjectWithOneMember(uint64_t this, uint64_t a2)
{
  if (*this)
  {
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    *(this + 80) = *(this + 80) & 0xFFFFFFFB | v4;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginObjectType() needs to be called before calling this function.", "isBuilding()", "setHideObjectWithOneMember", 1029, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::TypeBuilder::beginPointerType(uint64_t a1, uint64_t *a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, char a7)
{
  *(a1 + 32) = -1;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0xFFFFFFFFLL;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xFFFFFFFFLL;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0xFFFFFFFFLL;
  *(a1 + 136) = 0;
  result = re::TypeBuilder::setSharedInfo(a1, 9, a2, a3, -1, a4, a5);
  *(a1 + 112) = *(a6 + 8);
  *(a1 + 120) = a7;
  return result;
}

uint64_t re::TypeBuilder::addCustomClassIDForPointer(uint64_t result, uint64_t a2, int a3)
{
  if (*result == 9)
  {
    *(result + 128) = *(a2 + 8);
    *(result + 136) = a3;
  }

  else
  {
    if (!*result)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginPointerType() needs to be called before setGetActualTypeFunction().", "isBuilding()", "addCustomClassIDForPointer", 1052);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Wrong type.", "m_category == TypeCategory::kPointer", "addCustomClassIDForPointer", 1053);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilder::addAttribute(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (*a1)
  {
    v12[0] = *(a2 + 8);
    v12[1] = 0xFFFFFFFFLL;
    v13 = a4;
    v8 = re::Hash<re::internal::TypeAttributeKey>::operator()(buf, v12);
    v9 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>((a1 + 456), v12, v8, buf);
    if (v16 != 0x7FFFFFFF)
    {
      v10 = *re::foundationIntrospectionLogObjects(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Same attribute type added multiple times to type. Previous attributes will be overwritten. Only the last attribute will be kept.", buf, 2u);
      }
    }

    *buf = a3;
    v15 = a5;
    return re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::addOrReplace((a1 + 456), v12, buf);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling addAttribute.", "isBuilding()", "addAttribute", 1065);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = re::Hash<re::internal::TypeAttributeKey>::operator()(&v16, a2);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(a1, a2, v6, &v13);
  v7 = HIDWORD(v14);
  if (HIDWORD(v14) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(a1, v14, v13);
    v9 = *a2;
    *(v8 + 24) = a2[2];
    *(v8 + 8) = v9;
    result = v8 + 32;
    *(v8 + 32) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 56 * v7;
    v12 = *(a3 + 8);
    *(v11 + 32) = *a3;
    result = v11 + 32;
    *(result + 8) = v12;
  }

  return result;
}

void *re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = &str_67;
          v14 = v12[2];
          *(v11 + 8) = *(v12 + 6);
          v11[3] = v14;
          re::StringID::destroyString(v12);
          v11 += 5;
          v8 = v12 + 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 88 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 104 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::EnumConstant>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 136 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 168 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 64);
          *(v11 + 3) = *(v8 + 48);
          *(v11 + 4) = v14;
          *(v11 + 1) = v12;
          *(v11 + 2) = v13;
          v15 = *(v8 + 80);
          *(v11 + 92) = *(v8 + 92);
          *(v11 + 5) = v15;
          v16 = *(v8 + 112);
          v11[14] = v11[14] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[14] = *(v8 + 112) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[15] = *(v8 + 120);
          *(v8 + 112) = 0;
          *(v8 + 120) = &str_67;
          LODWORD(v16) = *(v8 + 128);
          *(v11 + 128) = v16;
          if (v16 == 1)
          {
            v11[17] = *(v8 + 136);
          }

          v17 = *(v8 + 160);
          *(v11 + 9) = *(v8 + 144);
          *(v11 + 10) = v17;
          re::StringID::destroyString((v8 + 112));
          v11 += 22;
          v8 += 176;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v7 = result;
  v8 = a3 % *(result + 24);
  v9 = *(*(result + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = re::internal::TypeAttributeKey::operator==((*(result + 16) + 56 * v9 + 8), a2);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(v7 + 16);
  v12 = *(v11 + 56 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = re::internal::TypeAttributeKey::operator==((v11 + 56 * v12 + 8), a2);
      if (result)
      {
        break;
      }

      v11 = *(v7 + 16);
      v12 = *(v11 + 56 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v6 = v13;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v8;
  *(a4 + 12) = v6;
  *(a4 + 16) = v9;
  return result;
}

BOOL re::internal::TypeAttributeKey::operator==(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 == *a2 && a1[1] == WORD1(v2) && ((*(a1 + 1) ^ HIDWORD(v2)) & 0xFFFFFF) == 0 && (v3 = a2[1], a1[4] == v3) && a1[5] == WORD1(v3) && ((*(a1 + 3) ^ HIDWORD(v3)) & 0xFFFFFF) == 0)
  {
    return *(a1 + 4) == *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Hash<re::internal::TypeAttributeKey>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(a2 + 8) ^ (*(a2 + 8) >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = 73244475 * (*(a2 + 16) ^ HIWORD(*(a2 + 16)));
  return ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v5 << 6) + (v5 >> 2) + ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) - 0x61C8864680B583E9) ^ v5)) ^ v3;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::move(a1, v9);
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 24);
        *(result + 8) = *(v8 + 8);
        *(result + 24) = v9;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

void re::internal::typeRegistryAllocator(re::internal *this)
{
  if ((atomic_load_explicit(&qword_1EE1BC298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BC298))
  {
    byte_1EE1BC2B8 = 0;
    qword_1EE1BC2A8 = &unk_1F5CCF7F8;
    unk_1EE1BC2B0 = "TypeInfo allocator";

    __cxa_guard_release(&qword_1EE1BC298);
  }
}

void anonymous namespace::getOrCreateGlobalTypeRegistry(_anonymous_namespace_ *this, const re::IntrospectionBase *a2, char a3)
{
  v4 = a2;
  v5 = this;
  if ((atomic_load_explicit(&qword_1EE1BC2A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if ((v5 & 1) != 0 || v4)
    {
      if (_MergedGlobals_488)
      {
        return;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(v31);
      v6 = _MergedGlobals_488;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(v31);
      if (v6)
      {
        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to create the global type registry when it cannot be created.", "canCreateRegistry", "getOrCreateGlobalTypeRegistry", 44);
      _os_crash();
      __break(1u);
      goto LABEL_35;
    }

    if (v5)
    {
      goto LABEL_11;
    }

    if (!v4)
    {
      break;
    }

LABEL_35:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to lock introspectionSharedMutex when it is already locked. Forcing a crash because this would hang otherwise.", "!threadOwnsSharedLock", "getOrCreateGlobalTypeRegistry", 49);
    _os_crash();
    __break(1u);
LABEL_36:
    this = __cxa_guard_acquire(&qword_1EE1BC2A0);
    if (this)
    {
      re::internal::typeRegistryAllocator(this);
      __cxa_guard_release(&qword_1EE1BC2A0);
    }
  }

  v7 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v7);
LABEL_11:
  if ((_MergedGlobals_488 & 1) == 0)
  {
    _MergedGlobals_488 = 1;
    re::introspect_BOOL(1, a2);
    re::introspect_char(1, v8);
    re::introspect_double(1, v9);
    re::introspect_float(1, v10);
    re::introspect_short(1, v11);
    re::introspect_int(1, v12);
    re::introspect_long(1, v13);
    re::introspect_size_t(1, v14);
    re::introspect_int64_t(1, v15);
    re::introspect_uint8_t(1, v16);
    re::introspect_uint16_t(1, v17);
    re::introspect_uint32_t(1, v18);
    re::introspect_uint64_t(1, v19);
    re::IntrospectionInfo<char *>::get(1, v20);
    v32 = 218827000;
    v33 = "short";
    *&v34.var0 = 0x2CE93A4A92;
    v34.var1 = "int16_t";
    if (*&v34.var0)
    {
      if (*&v34.var0)
      {
      }
    }

    if (v32)
    {
      if (v32)
      {
      }
    }

    v32 = 208862;
    v33 = "int";
    *&v34.var0 = 0x2CE93BFE06;
    v34.var1 = "int32_t";
    if (*&v34.var0)
    {
      if (*&v34.var0)
      {
      }
    }

    if (v32)
    {
      if (v32)
      {
      }
    }

    re::StackScratchAllocator::StackScratchAllocator(&v32);
    re::TypeBuilder::TypeBuilder(v31, &v32);
    *&v34.var0 = 0x258C98EAAF29A10ALL;
    v34.var1 = "CallbackSerializerAttribute";
    v30[0] = 0;
    v30[1] = 0xFFFFFFFFLL;
    v23 = re::TypeBuilder::beginObjectType(v31, &v34, 1, 1, 8uLL, 8uLL, v30);
    if (*&v34.var0)
    {
      if (*&v34.var0)
      {
      }
    }

    *&v34.var0 = 0xAE8345F9D646D604;
    v34.var1 = "ComplexVersioningAttribute";
    v28[0] = 0;
    v28[1] = 0xFFFFFFFFLL;
    v24 = re::TypeBuilder::beginObjectType(v31, &v34, 1, 1, 8uLL, 8uLL, v28);
    if (*&v34.var0)
    {
      if (*&v34.var0)
      {
      }
    }

    re::TypeBuilder::~TypeBuilder(v31, v25);
    re::StackScratchAllocator::~StackScratchAllocator(&v32);
  }

  if ((v5 & 1) == 0)
  {
    v26 = re::introspectionSharedMutex(this);
    std::__shared_mutex_base::unlock(v26);
  }
}

uint64_t *re::IntrospectionInfo<char *>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionPointer::IntrospectionPointer(&re::IntrospectionInfo<char *>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<char *>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<char *>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::IntrospectionInfo<char *>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::IntrospectionInfo<char *>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<char *>::get(BOOL)::isInitialized)
    {
LABEL_22:
      v13 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v13);
      return &re::IntrospectionInfo<char *>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<char *>::get(BOOL)::isInitialized = 1;
  v7 = re::introspect_char(1, a2);
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<char *>::get(BOOL)::info, 0);
  qword_1EE186188 = 0x800000001;
  dword_1EE186190 = 8;
  word_1EE186194 = 0;
  *&xmmword_1EE186198 = 0;
  *(&xmmword_1EE186198 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<char *>::get(BOOL)::info = &unk_1F5CBD2C0;
  qword_1EE1861A8 = v7;
  unk_1EE1861B0 = 0;
  re::IntrospectionRegistry::add(v8, v9);
  re::getPrettyTypeName(&re::IntrospectionInfo<char *>::get(BOOL)::info, &v16);
  if (BYTE8(v16))
  {
    v11 = v17;
  }

  else
  {
    v11 = &v16 + 9;
  }

  if (v16 && (BYTE8(v16) & 1) != 0)
  {
    (*(*v16 + 40))();
  }

  if (v18 >> 1 == 94623636 && (__s1 == "char*" || !strcmp(__s1, "char*")))
  {
    v12 = v16;
  }

  else
  {
    v16 = v7[2];
    v12 = v15;
  }

  xmmword_1EE186198 = v12;
  if (v18)
  {
    if (v18)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_22;
  }

  return &re::IntrospectionInfo<char *>::get(BOOL)::info;
}

uint64_t *re::foundationIntrospectionLogObjects(re *this)
{
  {
    re::foundationIntrospectionLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Introspection");
  }

  return &re::foundationIntrospectionLogObjects(void)::logObjects;
}

uint64_t re::TypeInfo::TypeInfo(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = a2;
  *(result + 12) = a3;
  *(result + 8) = *(a2 + 24);
  if ((a3 - 1) >= 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "TypeInfo", 46, v4, v5);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result + 16) = a4;
  }

  return result;
}

uint64_t re::TypeInfo::TypeInfo(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v4 = *(a2 + 12);
  *(result + 12) = v4;
  if ((v4 - 1) >= 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "TypeInfo", 66, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

uint64_t re::TypeInfo::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    v4 = *(a2 + 12);
    *(result + 12) = v4;
    if ((v4 - 1) >= 9)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "operator=", 91, v2, v3);
      result = _os_crash();
      __break(1u);
    }

    else
    {
      *(result + 16) = *(a2 + 16);
    }
  }

  return result;
}

uint64_t *re::TypeInfo::name(re::TypeInfo *this)
{
  result = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (!result)
  {
  }

  return result;
}

uint64_t re::TypeInfo::atVersion@<X0>(re::TypeInfo *this@<X0>, int a2@<W1>, unsigned __int8 *a3@<X8>)
{
  v9[0] = 1;
  re::TypeInfo::TypeInfo(v10, this);
  while (1)
  {
    result = re::DataArray<re::TextureAtlasTile>::tryGet((v10[0] + 12), *v11);
    v6 = result ? *(result + 16) : -1;
    if (v6 == a2)
    {
      break;
    }

    if ((*(v11 + 60) & 0xFFFFFF) != 0)
    {
      re::TypeRegistry::typeInfo(v10[0], *(v11 + 56), v8);
    }

    else
    {
      v8[0] = 0;
    }

    result = re::Optional<re::TypeInfo>::operator=(v9, v8);
    if ((v9[0] & 1) == 0)
    {
      *a3 = 0;
      return result;
    }
  }

  v7 = v9[0];
  *a3 = v9[0];
  if (v7 == 1)
  {
    return re::TypeInfo::TypeInfo((a3 + 8), v10);
  }

  return result;
}

uint64_t re::TypeInfo::nextVersion@<X0>(re::TypeInfo *this@<X0>, const re::TypeInfo *a2@<X1>, _BYTE *a3@<X8>)
{
  result = re::TypeInfo::TypeInfo(v10, a2);
  if ((*(v11 + 60) & 0xFFFFFF) != 0)
  {
    result = re::TypeRegistry::typeInfo(v10[0], *(v11 + 56), v7);
    while ((v7[0] & 1) != 0)
    {
      if (v9 == *(this + 2))
      {
        *a3 = 1;
        return re::TypeInfo::TypeInfo((a3 + 8), v10);
      }

      re::TypeInfo::operator=(v10, &v8);
      if ((*(v9 + 60) & 0xFFFFFF) != 0)
      {
        re::TypeRegistry::typeInfo(v8, *(v9 + 56), v6);
      }

      else
      {
        v6[0] = 0;
      }

      result = re::Optional<re::TypeInfo>::operator=(v7, v6);
    }
  }

  *a3 = 0;
  return result;
}

void *re::TypeInfo::createInstance(re::TypeInfo *this, re::Allocator *a2, void *a3)
{
  v6 = *(this + 2);
  LODWORD(v7) = *(v6 + 8);
  v8 = *(v6 + 12);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v7;
  }

  if (v8 <= 0x10)
  {
    v9 = 16;
  }

  else
  {
    v9 = v8;
  }

  if ((*(v6 + 48) & 0x20) != 0)
  {
    memptr = 0;
    malloc_type_posix_memalign(&memptr, (v9 + 7) & 0x1FFFFFFF8, v7, 0xAE8B065EuLL);
    v10 = memptr;
  }

  else
  {
    v10 = (*(*a2 + 32))(a2, v7, v9);
  }

  re::TypeInfo::construct(this, v10, a2, a3);
  return v10;
}

void re::TypeInfo::construct(re::TypeInfo *this, void *a2, re::Allocator *a3, void *a4)
{
  *&v28[9] = *MEMORY[0x1E69E9840];
  v8 = *(this + 2);
  v9 = *(v8 + 16);
  if (v9)
  {

    v9(a2, this);
    return;
  }

  v10 = *(this + 12);
  if (v10 > 4)
  {
    if (*(this + 12) <= 7u)
    {
      if (v10 - 5 < 2)
      {
        v11 = *re::foundationIntrospectionLogObjects(this);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
          if (!v12)
          {
          }

          v13 = v12[1];
          *buf = 136315138;
          *v28 = v13;
          _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "No explicit constructor set for %s.", buf, 0xCu);
        }

        bzero(a2, *(*(this + 2) + 8));
        return;
      }

      if (v10 == 7)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Tagged unions can't be created directly. They need to be embedded in a class/struct.", "!Unreachable code", "construct", 375);
        _os_crash();
        __break(1u);
      }

LABEL_40:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "construct", 385);
      _os_crash();
      __break(1u);
      return;
    }

    if (v10 != 8 && v10 != 9)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (*(this + 12) <= 2u)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_40;
      }

      v14 = re::TypeInfo::enumConstants(this);
      if (v15)
      {
        v16 = v14;
        v17 = 0;
        while (*(v14 + v17))
        {
          v17 += 24;
          if (24 * v15 == v17)
          {
            re::Slice<re::EnumConstant>::first(v15, v15);
            v18 = *(*(this + 2) + 8);

            memcpy(a2, v16, v18);
            return;
          }
        }
      }

      v8 = *(this + 2);
    }

    goto LABEL_31;
  }

  if (v10 == 3)
  {
LABEL_31:
    v19 = *(v8 + 8);

    bzero(a2, v19);
    return;
  }

  if (v10 != 4)
  {
    goto LABEL_40;
  }

  re::TypeInfo::TypeInfo(v25, this);
  re::TypeRegistry::typeInfo(v25[0], *(v26 + 80), buf);
  re::TypeInfo::TypeInfo(v24, &v28[1]);
  if ((*(v26 + 92) & 0xFFFFFF) != 0)
  {
    re::ArrayAccessor::reset(v25, a2, a3, 0);
  }

  else
  {
    v20 = re::ArrayAccessor::size(v25, a2);
    if (v20)
    {
      v21 = v20;
      for (i = 0; i != v21; ++i)
      {
        v23 = re::ArrayAccessor::elementAtUnchecked(v25, a2, i);
        re::TypeInfo::construct(v24, v23, a3, a4);
      }
    }
  }
}

void re::TypeInfo::releaseInstance(re::TypeInfo *this, void *a2, re::Allocator *a3, void *a4)
{
  v5 = *(this + 2);
  if ((*(v5 + 49) & 2) != 0)
  {
    v9 = *(v5 + 40);
    if (v9)
    {

      v9(a2);
    }
  }

  else
  {
    re::TypeInfo::destruct(this, a2, a3, a4);
    if ((*(*(this + 2) + 48) & 0x20) != 0)
    {

      free(a2);
    }

    else
    {
      v8 = *(*a3 + 40);

      v8(a3, a2);
    }
  }
}

void re::TypeInfo::destruct(re::TypeInfo *this, void *a2, re::Allocator *a3, void *a4)
{
  *&v21[9] = *MEMORY[0x1E69E9840];
  v8 = *(*(this + 2) + 24);
  if (v8)
  {

    v8(a2, this);
    return;
  }

  v9 = *(this + 12);
  if (v9 <= 4)
  {
    goto LABEL_10;
  }

  if (v9 - 5 >= 2)
  {
    if (v9 - 8 < 2)
    {
      return;
    }

    if (v9 != 7)
    {
      goto LABEL_25;
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Tagged unions can't be created directly. They need to be embedded in a class/struct.", "!Unreachable code", "destruct", 471);
    _os_crash();
    __break(1u);
LABEL_10:
    if (v9 - 1 < 2)
    {
      return;
    }

    if (v9 == 3)
    {
      re::TypeInfo::TypeInfo(buf, this);
      (*(*&v21[3] + 96))(a2, 0);
      return;
    }

    if (v9 == 4)
    {
      re::TypeInfo::TypeInfo(v18, this);
      re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), buf);
      re::TypeInfo::TypeInfo(v17, &v21[1]);
      if ((*(v19 + 92) & 0xFFFFFF) != 0)
      {
        re::ArrayAccessor::reset(v18, a2, a3, 0);
      }

      else
      {
        v13 = re::ArrayAccessor::size(v18, a2);
        if (v13)
        {
          v14 = v13;
          for (i = 0; i != v14; ++i)
          {
            v16 = re::ArrayAccessor::elementAtUnchecked(v18, a2, i);
            re::TypeInfo::destruct(v17, v16, a3, a4);
          }
        }
      }

      return;
    }

LABEL_25:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "destruct", 481);
    _os_crash();
    __break(1u);
    return;
  }

  v10 = *re::foundationIntrospectionLogObjects(this);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    if (!v11)
    {
    }

    v12 = v11[1];
    *buf = 136315138;
    *v21 = v12;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "No explicit destructor set for %s.", buf, 0xCu);
  }
}

uint64_t re::TypeInfo::enumConstants(re::TypeInfo *this)
{
  v1 = *(this + 2);
  if (!*(v1 + 92))
  {
    return 0;
  }

  v2 = *(v1 + 88);
  if (*(*this + 344) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*this + 360) + 24 * v2;
}

uint64_t re::Slice<re::EnumConstant>::first(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeInfo::copy(re::TypeInfo *this, void **a2, char **a3, re::Allocator *a4, void *a5)
{
  v10 = *(this + 12);
  if (v10 <= 5)
  {
    if (*(this + 12) <= 3u)
    {
      if (v10 - 1 >= 2)
      {
        if (v10 == 3)
        {
          re::TypeInfo::TypeInfo(&v46, this);
          if ((*(v49 + 88))(a3))
          {
            re::TypeInfo::TypeInfo(&v46, this);
            re::TypeInfo::TypeInfo(&v42, this);
            v20 = (*(v44 + 88))(a3);
            (*(v49 + 96))(a2, v20);
          }

          else
          {
            re::TypeInfo::TypeInfo(&v46, this);
            (*(v49 + 96))(a2, 0);
          }
        }
      }

      else
      {
        memcpy(a2, a3, *(*(this + 2) + 8));
      }

      return 1;
    }

    if (v10 == 4)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::TypeRegistry::typeInfo(v42, *(v44 + 80), &v46);
      re::TypeInfo::TypeInfo(v40, v47);
      v31 = re::ArrayAccessor::size(&v42, a3);
      v32 = re::ArrayAccessor::size(&v42, a3);
      re::ArrayAccessor::reset(&v42, a2, a4, v32);
      if (v31)
      {
        v33 = 0;
        while (1)
        {
          v34 = re::ArrayAccessor::elementAt(&v42, a2, v33);
          v35 = re::ArrayAccessor::elementAt(&v42, a3, v33);
          if ((re::TypeInfo::copy(v40, v34, v35, a4, a5) & 1) == 0)
          {
            break;
          }

          if (v31 == ++v33)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else if (v10 == 5)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::TypeRegistry::typeInfo(v42, *(v44 + 80), &v46);
      re::TypeInfo::TypeInfo(v40, v47);
      v15 = (*(v44 + 88))(a3);
      v16 = *(v44 + 96);
      re::TypeInfo::TypeInfo(&v46, &v42);
      v16(a2, &v46, a4, v15);
      if (v15)
      {
        v17 = 0;
        while (1)
        {
          v18 = (*(v44 + 104))(a2, v17);
          v19 = (*(v44 + 104))(a3, v17);
          if ((re::TypeInfo::copy(v40, v18, v19, a4, a5) & 1) == 0)
          {
            break;
          }

          if (v15 == ++v17)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    return 1;
  }

  if (*(this + 12) <= 7u)
  {
    if (v10 == 6)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::TypeRegistry::typeInfo(v42, *(v44 + 88), &v46);
      re::TypeInfo::TypeInfo(v40, v47);
      v21 = (*(v44 + 120))(a3, a4);
      while ((*(v44 + 128))(v21))
      {
        v22 = (*(v44 + 136))(v21);
        v23 = (*(v44 + 112))(a2, &v42, a4, v22);
        if (v23)
        {
          v24 = v23;
          v25 = (*(v44 + 144))(v21);
          if (re::TypeInfo::copy(v40, v24, v25, a4, a5))
          {
            continue;
          }
        }

        return 0;
      }
    }

    else if (v10 == 7)
    {
      re::TypeInfo::TypeInfo(&v42, this);
      re::UnionAccessor::activeMemberType(&v42, a3, &v46);
      if (v46)
      {
        Tag = re::UnionAccessor::readTag(&v42, a3);
        re::UnionAccessor::reset(&v42, a2, Tag, a4);
        return re::TypeInfo::copy(v47, a2, a3, a4, a5);
      }
    }

    return 1;
  }

  if (v10 != 8)
  {
    if (v10 != 9)
    {
      return 1;
    }

    v13 = *a3;
    v14 = *a2;
    if (!*a3)
    {
      if (v14)
      {
        re::TypeInfo::releaseInstance(this, v14, a4, 0);
      }

      *a2 = 0;
      return 1;
    }

    if (!v14 || (re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46), re::TypeInfo::TypeInfo(&v42, v47), v43 != 8) || *(v44 + 88) < 2u || (re::TypeRegistry::typeInfoChecked(*this, *(*(this + 2) + 80), v40), re::TypeInfo::getActualTypeFromPointer(v40, a2, &v46), re::TypeRegistry::typeInfoChecked(*this, *(*(this + 2) + 80), v39), re::TypeInfo::getActualType(v39, v13, &v36), v46 == v36) && v47[0] == v37 && v47[1] == HIWORD(v37) && ((v48 ^ v38) & 0xFFFFFF) == 0)
    {
      if (*a2)
      {
        goto LABEL_64;
      }
    }

    else
    {
      re::TypeRegistry::typeInfoChecked(*this, *(*(this + 2) + 80), &v46);
      re::TypeInfo::releaseInstance(&v46, *a2, a4, 0);
      *a2 = 0;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46);
    re::TypeInfo::TypeInfo(&v42, v47);
    *a2 = re::TypeInfo::createInstance(&v42, a4, 0);
LABEL_64:
    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46);
    re::TypeInfo::TypeInfo(&v42, v47);
    return (re::TypeInfo::copy(&v42, *a2, v13, a4, a5) & 1) != 0;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46);
  if (v46 != 1 || (re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v46), re::TypeInfo::TypeInfo(&v42, v47), !*(v44 + 96)) && (re::TypeRegistry::typeInfo(v42, *(v44 + 80), &v46), v46 != 1) || (result = re::TypeInfo::copy(&v42, a2, a3, a4, a5), result))
  {
    re::TypeMemberCollection::TypeMemberCollection(&v42, *this, *(this + 2));
    if (!v45)
    {
LABEL_46:
      v27 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      if (!v27)
      {
      }

      if (*v27 >> 1 == 0x134375A94D9F7110 && ((v28 = v27[1], v28 == "DynamicString") || !strcmp(v28, "DynamicString")))
      {
        re::DynamicString::operator=(a2, a3);
      }

      else
      {
        v29 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
        if (!v29)
        {
        }

        if (*v29 >> 1 == 0x22C6ED80D0CLL)
        {
          v30 = v29[1];
          if (v30 == "StringID" || !strcmp(v30, "StringID"))
          {
            re::StringID::operator=(a2, a3);
          }
        }
      }

      return 1;
    }

    v26 = 0;
    while (1)
    {
      re::TypeMemberCollection::operator[](&v42, v26, v40);
      if (*(v41 + 28) == 1)
      {
        re::TypeRegistry::typeInfo(v40[0], *v41, &v46);
        re::TypeInfo::TypeInfo(v39, v47);
        result = re::TypeInfo::copy(v39, a2 + *(v41 + 24), a3 + *(v41 + 24), a4, a5);
        if (!result)
        {
          break;
        }
      }

      if (++v26 >= v45)
      {
        if (v45)
        {
          return 1;
        }

        goto LABEL_46;
      }
    }
  }

  return result;
}