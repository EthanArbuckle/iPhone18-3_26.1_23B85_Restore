uint64_t re::AnimationBlendTree<re::SkeletalPose>::createInstance(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v6 = (*(*a2 + 32))(a2, 456, 8);
  *v6 = &unk_1F5CAD3A8;
  v7 = *(a1 + 16);
  *(v6 + 8) = *(a1 + 8);
  *(v6 + 16) = v7;
  re::StringID::StringID((v6 + 24), (a1 + 24));
  re::DynamicString::DynamicString((v6 + 40), (a1 + 40));
  *(v6 + 72) = *(a1 + 72);
  *v6 = &unk_1F5CAD968;
  *(v6 + 80) = a1;
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 416) = 0;
  *(v6 + 440) = 0;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 356) = 0u;
  *(v6 + 408) = 0;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 8) = 47;
  re::AnimationBlendTreeInstance<re::SkeletalPose>::init(v6, a2, a3);
  return v6;
}

void re::AnimationBlendTreeInstance<re::SkeletalPose>::init(uint64_t a1, uint64_t a2, re::BindNode **a3)
{
  v4 = a2;
  v144 = *MEMORY[0x1E69E9840];
  *(a1 + 448) = a2;
  if (*(*(a1 + 80) + 288))
  {
    v6 = a3;
    *(a1 + 344) = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 344), 0);
    ++*(a1 + 368);
    *(a1 + 384) = v4;
    re::DynamicArray<float *>::setCapacity((a1 + 384), 0);
    ++*(a1 + 408);
    goto LABEL_181;
  }

  v7 = (*(*a2 + 32))(a2, 6408, 8);
  *v7 = 0;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0;
  *(v7 + 112) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 144) = 0;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 280) = 0;
  *(v7 + 152) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 184) = 0u;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 216) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0;
  bzero((v7 + 288), 0x818uLL);
  re::EvaluationTree::EvaluationTree((v7 + 296));
  bzero((v7 + 2360), 0xB98uLL);
  re::EvaluationContextManager::EvaluationContextManager((v7 + 2360));
  *(v7 + 5344) = 0u;
  *(v7 + 5376) = 0u;
  *(v7 + 5328) = 0u;
  *(v7 + 5344) = 1;
  *(v7 + 5360) = 0u;
  *(v7 + 5352) = 0;
  *(v7 + 5376) = 0;
  *(v7 + 5392) = 0u;
  *(v7 + 5408) = 0u;
  *(v7 + 5424) = 0u;
  *(v7 + 5440) = 0u;
  *(v7 + 5456) = 0u;
  *(v7 + 5472) = 0u;
  *(v7 + 5488) = 0u;
  *(v7 + 5504) = 0u;
  *(v7 + 5520) = 0u;
  *(v7 + 5536) = 0u;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5480) = 1;
  *(v7 + 5504) = 0;
  *(v7 + 5512) = 0;
  *(v7 + 5488) = 0u;
  *(v7 + 5536) = 0;
  *(v7 + 5544) = 0;
  *(v7 + 5520) = 0u;
  *(v7 + 5592) = 0;
  *(v7 + 5552) = 0u;
  *(v7 + 5568) = 0u;
  *(v7 + 5584) = 0;
  *(v7 + 5600) = &unk_1F5CB2E90;
  *(v7 + 5608) = -1;
  bzero((v7 + 5616), 0x318uLL);
  *(a1 + 440) = v7;
  v8 = *(a1 + 80);
  *v7 = v4;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v7, 0);
  ++*(v7 + 24);
  *(v7 + 40) = v4;
  re::DynamicArray<re::SkeletalPose>::setCapacity((v7 + 40), 0);
  ++*(v7 + 64);
  re::EvaluationTree::init((v7 + 296), v4);
  re::EvaluationContextManager::init((v7 + 2360), v4);
  re::RigEnvironment::init((v7 + 5328), v4);
  *(v7 + 5432) = v4;
  *(v7 + 5448) = v7 + 5328;
  *(v7 + 5456) = 0;
  *(v7 + 5440) = 0;
  re::RigGraphCompilation::init((v7 + 5464), v4);
  v9 = v8[54];
  *(v7 + 80) = v4;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity((v7 + 80), v9);
  ++*(v7 + 104);
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize((v7 + 80), v8[54]);
  v10 = v4;
  if (v8[54])
  {
    v11 = 0;
    v3 = 0;
    v4 = buf;
    do
    {
      re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v3, buf);
      re::DynamicArray<re::RigDataValue>::add(v7 + 120, buf);
      re::RigDataValue::~RigDataValue(buf);
      v12 = *(v7 + 152) + 288 * *(v7 + 136);
      v13 = *(v12 - 256);
      if (v13 > 5)
      {
        if (*(v12 - 256) > 7u)
        {
          if (v13 != 8)
          {
            if (v13 == 10)
            {
              v24 = *(v12 - 104);
              re::RigHierarchy::deinit(v24);
              re::RigHierarchy::init(v24, (v7 + 5328), (MEMORY[0x50] + 24), v10, (v7 + 296));
              re::RigHierarchy::getEvaluationSkeletalPose(v24, v10, 0, v141);
              re::EvaluationSkeletalPose::createInputHandle(v141, (v7 + 2360), &v124);
              v10 = *(v7 + 96);
              if (v10 <= v3)
              {
                goto LABEL_233;
              }

              re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((*(v7 + 112) + v11), &v124);
              v10 = a2;
              if (v124)
              {
                if (v125)
                {
                  (*(*v124 + 40))();
                  v125 = 0;
                  v126 = 0;
                }

                v124 = 0;
              }

              re::BlendShapeWeights::~BlendShapeWeights(v141);
            }

            else if (v13 == 13 && (*(v12 - 248) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA)
            {
              v16 = *(v12 - 240);
              if (v16 == "SRT" || !strcmp(v16, "SRT"))
              {
                v17 = v12 - 288;
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v18 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = xmmword_1E30474D0;
                *buf = 5;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
                *buf = *(v7 + 2176) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 504), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
                v109 = *(*(v7 + 536) + 8 * *(v7 + 520) - 8);
                *v132 = 0u;
                *buf = 7;
                memset(&buf[8], 0, 24);
                re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
                *buf = *(v7 + 2256) - 1;
                re::DynamicArray<unsigned long>::add((v7 + 584), buf);
                re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
                v19 = *(*(v7 + 616) + 8 * *(v7 + 600) - 8);
                *v132 = "scale";
                *&v132[8] = 5;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v20 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v20 + 176) = v18;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "rotation";
                *&v132[8] = 8;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v21 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v21 + 176) = v109;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }

                *v132 = "translation";
                *&v132[8] = 11;
                re::RigDataValue::attributeValue(v17, v132, buf);
                v22 = *&buf[8];
                *(*&buf[8] + 96) = 2;
                *(v22 + 176) = v19;
                v10 = a2;
                if (buf[0] & 1) == 0 && *&buf[24] && (v134)
                {
                  (*(**&buf[24] + 40))();
                }
              }
            }

            goto LABEL_43;
          }

          *v132 = 0u;
          *buf = 7;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2240), buf);
          *buf = *(v7 + 2256) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 584), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 904), v132);
          v14 = *(v7 + 616);
          v15 = *(v7 + 600);
LABEL_41:
          v23 = *(v14 + 8 * v15 - 8);
          *(v12 - 192) = 2;
LABEL_42:
          *(v12 - 112) = v23;
          goto LABEL_43;
        }

        if (v13 == 6)
        {
          *v132 = xmmword_1E30474D0;
          *buf = 5;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2160), buf);
          *buf = *(v7 + 2176) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 504), buf);
          re::DynamicArray<re::Vector3<float>>::add((v7 + 824), v132);
          v14 = *(v7 + 536);
          v15 = *(v7 + 520);
          goto LABEL_41;
        }

        if (v13 == 7)
        {
          *v132 = 0;
          *buf = 6;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2200), buf);
          *buf = *(v7 + 2216) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 544), buf);
          re::DynamicArray<unsigned long>::add((v7 + 864), v132);
          v14 = *(v7 + 576);
          v15 = *(v7 + 560);
          goto LABEL_41;
        }
      }

      else if (*(v12 - 256) <= 2u)
      {
        if (v13 == 1)
        {
          *v132 = 0;
          *buf = 0;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 1960), buf);
          *buf = *(v7 + 1976) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 304), buf);
          re::DynamicArray<int>::add((v7 + 624), v132);
          v14 = *(v7 + 336);
          v15 = *(v7 + 320);
          goto LABEL_41;
        }

        if (v13 == 2)
        {
          *v132 = 0;
          *buf = 1;
          memset(&buf[8], 0, 24);
          re::DynamicArray<re::EvaluationRegister>::add((v7 + 2000), buf);
          *buf = *(v7 + 2016) - 1;
          re::DynamicArray<unsigned long>::add((v7 + 344), buf);
          re::DynamicArray<int>::add((v7 + 664), v132);
          v14 = *(v7 + 376);
          v15 = *(v7 + 360);
          goto LABEL_41;
        }
      }

      else
      {
        switch(v13)
        {
          case 3u:
            *v132 = 0;
            *buf = 2;
            memset(&buf[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2040), buf);
            *buf = *(v7 + 2056) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 384), buf);
            re::DynamicArray<float>::add((v7 + 704), v132);
            v23 = *(*(v7 + 416) + 8 * *(v7 + 400) - 8);
            *(v12 - 192) = 2;
            goto LABEL_42;
          case 4u:
            v134 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 3;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2080), v132);
            *v132 = *(v7 + 2096) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 424), v132);
            re::DynamicArray<re::Matrix3x3<float>>::add((v7 + 744), buf);
            v14 = *(v7 + 456);
            v15 = *(v7 + 440);
            goto LABEL_41;
          case 5u:
            v134 = 0u;
            __s1 = 0u;
            memset(buf, 0, sizeof(buf));
            *v132 = 4;
            memset(&v132[8], 0, 24);
            re::DynamicArray<re::EvaluationRegister>::add((v7 + 2120), v132);
            *v132 = *(v7 + 2136) - 1;
            re::DynamicArray<unsigned long>::add((v7 + 464), v132);
            re::DynamicArray<re::Matrix4x4<float>>::add((v7 + 784), buf);
            v14 = *(v7 + 496);
            v15 = *(v7 + 480);
            goto LABEL_41;
        }
      }

LABEL_43:
      ++v3;
      v11 += 24;
    }

    while (v3 < v8[54]);
  }

  re::RigGraphSystem::compile(v7 + 5432, v8 + 10, v7 + 296, (v7 + 2360), *(v7 + 152), *(v7 + 136), v132);
  re::RigGraphCompilation::operator=((v7 + 160), &v132[8]);
  if (!*(v7 + 272))
  {
    goto LABEL_234;
  }

  v26 = *(v7 + 288);
  if (*(v26 + 32) == 10)
  {
    re::RigHierarchy::getEvaluationSkeletalPose(*(v26 + 184), v10, 0, buf);
    re::EvaluationSkeletalPose::createOutputHandle(buf, (v7 + 2360), v141);
    re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=((v7 + 6384), v141);
    if (v141[0])
    {
      if (v141[1])
      {
        (*(*v141[0] + 40))();
        v141[1] = 0;
        v141[2] = 0;
      }

      v141[0] = 0;
    }

    re::BlendShapeWeights::~BlendShapeWeights(buf);
  }

  re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  if ((*(v7 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v7 + 2360));
  }

  re::RigGraphCompilation::setRuntimeContext(v7 + 160, (v7 + 4896));
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>((v7 + 2360), buf);
  (*(*(v7 + 5600) + 32))(&v124);
  v27 = (v7 + 248);
  if (!v8[54])
  {
    v6 = a3;
    goto LABEL_172;
  }

  v28 = 0;
  v4 = 0;
  v29 = 32;
  do
  {
    re::RigGraphNode::inputValue((v8 + 10), (v7 + 5328), (v7 + 296), v10, v4, buf);
    if (v134 <= 4u)
    {
      if (v134 > 2u)
      {
        if (v134 == 3)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_223;
          }

          v3 = *(v8[14] + v29);
          v51 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v51;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v71 = *(v7 + 232);
          if (v71 <= v4)
          {
            goto LABEL_231;
          }

          v72 = v137;
          *re::RigDataValue::getRuntimeValue<float>(*v27 + v28, v52) = v72;
        }

        else if (v134 == 4)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_218;
          }

          v3 = *(v8[14] + v29);
          v45 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v45;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v63 = *(v7 + 232);
          if (v63 <= v4)
          {
            goto LABEL_230;
          }

          v64 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(*v27 + v28, v46);
          v66 = v138;
          v65 = v139;
          *v64 = v137;
          v64[1] = v66;
          v64[2] = v65;
        }
      }

      else
      {
        if (v134 == 1)
        {
          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_217;
          }

          v3 = *(v8[14] + v29);
          v49 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v49;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v69 = *(v7 + 232);
          if (v69 <= v4)
          {
            goto LABEL_228;
          }

          v70 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v70 + v28, v50);
        }

        else
        {
          if (v134 != 2)
          {
            goto LABEL_162;
          }

          v10 = v8[12];
          if (v10 <= v4)
          {
            goto LABEL_221;
          }

          v3 = *(v8[14] + v29);
          v43 = strlen(v3);
          *v129 = v3;
          *&v129[8] = v43;
          re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
          if (LOBYTE(v141[0]) == 1)
          {
            v10 = a2;
          }

          else
          {
            v10 = a2;
            if (v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }
          }

          v59 = *(v7 + 232);
          if (v59 <= v4)
          {
            goto LABEL_226;
          }

          v60 = *v27;
          v61 = v137;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v60 + v28, v44);
        }

        *Runtime = v61;
        v27 = (v7 + 248);
      }
    }

    else if (v134 <= 6u)
    {
      if (v134 != 5)
      {
        if (v134 != 6)
        {
          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_219;
        }

        v3 = *(v8[14] + v29);
        v47 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v47;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v67 = *(v7 + 232);
        if (v67 <= v4)
        {
          goto LABEL_232;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*v27 + v28, v48);
        goto LABEL_161;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_224;
      }

      v3 = *(v8[14] + v29);
      v55 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v55;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v75 = *(v7 + 232);
      if (v75 <= v4)
      {
        goto LABEL_229;
      }

      v76 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(*v27 + v28, v56);
      v77 = v140;
      v79 = v137;
      v78 = v138;
      v76[2] = v139;
      v76[3] = v77;
      *v76 = v79;
      v76[1] = v78;
    }

    else
    {
      if (v134 != 7)
      {
        if (v134 != 8)
        {
          if (v134 == 13 && (*(&v134 + 1) & 0xFFFFFFFFFFFFFFFELL) == 0x283AA && (__s1 == "SRT" || !strcmp(__s1, "SRT")))
          {
            v10 = v8[12];
            if (v10 <= v4)
            {
              goto LABEL_235;
            }

            v30 = strlen(*(v8[14] + v29));
            *v129 = *(v8[14] + v29);
            *&v129[8] = v30;
            re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
            if (LOBYTE(v141[0]) != 1 && v141[3] && (v141[4] & 1) != 0)
            {
              (*(*v141[3] + 40))();
            }

            v118[0] = "scale";
            v118[1] = 5;
            re::RigDataValue::attributeValue(buf, v118, v141);
            v32 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v141[1], v31);
            v33 = *v32;
            v110 = v32[1];
            v117[0] = "rotation";
            v117[1] = 8;
            re::RigDataValue::attributeValue(buf, v117, v129);
            v35 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(*&v129[8], v34);
            v36 = *v35;
            v3 = v35[1];
            v113[0] = "translation";
            v113[1] = 11;
            re::RigDataValue::attributeValue(buf, v113, v114);
            v38 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v114[1], v37);
            v41 = *v38;
            v40 = v38[1];
            *&v119 = v33;
            *(&v119 + 1) = v110;
            v120 = v36;
            v121 = v3;
            v122 = v41;
            v123 = v40;
            if (v114[0] & 1) == 0 && v115 && (v116)
            {
              (*(*v115 + 40))();
            }

            v10 = a2;
            v27 = (v7 + 248);
            if (v129[0] & 1) == 0 && *&v131[4] && (v131[12])
            {
              (*(**&v131[4] + 40))();
            }

            if (v141[0] & 1) == 0 && v141[3] && (v141[4])
            {
              (*(*v141[3] + 40))();
            }

            v42 = *(v7 + 232);
            if (v42 <= v4)
            {
              goto LABEL_236;
            }

            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(*(v7 + 248) + v28, &v119);
          }

          goto LABEL_162;
        }

        v10 = v8[12];
        if (v10 <= v4)
        {
          goto LABEL_220;
        }

        v3 = *(v8[14] + v29);
        v57 = strlen(v3);
        *v129 = v3;
        *&v129[8] = v57;
        re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
        if (LOBYTE(v141[0]) == 1)
        {
          v10 = a2;
        }

        else
        {
          v10 = a2;
          if (v141[3] && (v141[4] & 1) != 0)
          {
            (*(*v141[3] + 40))();
          }
        }

        v80 = *(v7 + 232);
        if (v80 <= v4)
        {
          goto LABEL_227;
        }

        v68 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*v27 + v28, v58);
LABEL_161:
        *v68 = v137;
        goto LABEL_162;
      }

      v10 = v8[12];
      if (v10 <= v4)
      {
        goto LABEL_222;
      }

      v3 = *(v8[14] + v29);
      v53 = strlen(v3);
      *v129 = v3;
      *&v129[8] = v53;
      re::RigDataValue::setRigDataValue(buf, v129, 1, v141);
      if (LOBYTE(v141[0]) == 1)
      {
        v10 = a2;
      }

      else
      {
        v10 = a2;
        if (v141[3] && (v141[4] & 1) != 0)
        {
          (*(*v141[3] + 40))();
        }
      }

      v73 = *(v7 + 232);
      if (v73 <= v4)
      {
        goto LABEL_225;
      }

      v74 = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*v27 + v28, v54);
      *v74 = v137;
    }

LABEL_162:
    re::RigDataValue::~RigDataValue(buf);
    ++v4;
    v81 = v8[54];
    v28 += 288;
    v29 += 40;
  }

  while (v4 < v81);
  *buf = 0;
  v6 = a3;
  if (v81)
  {
    for (i = 0; i < v81; *buf = i)
    {
      v83 = (v8[56] + 16 * i);
      if (*v83 <= 1uLL)
      {
        v84 = v83[1];
        if (v84 == "" || !*v84)
        {
          re::DynamicArray<unsigned long>::add(v7, buf);
          i = *buf;
          v81 = v8[54];
        }
      }

      ++i;
    }
  }

LABEL_172:
  if (v124 & 1) == 0 && v127 && (v128)
  {
    (*(*v127 + 40))();
  }

  if (v132[0] == 1)
  {
    re::RigGraphCompilation::~RigGraphCompilation(&v132[8]);
  }

  else if (*&v132[24] && (v132[32] & 1) != 0)
  {
    (*(**&v132[24] + 40))();
  }

LABEL_181:
  v85 = *(a1 + 80);
  if (*(v85 + 536))
  {
    re::BlendSpace::init(a1 + 88, a2, (v85 + 536), v6);
  }

  if (*v6 | v6[2])
  {
    v86 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 280, a2, *(v86 + 392));
    if (*(v86 + 392))
    {
      v4 = 0;
      v87 = 0;
      v88 = 8;
      v10 = &unk_1EE187000;
      while (1)
      {
        {
          re::introspect<float>(BOOL)::info = re::introspect_float(0, v97);
        }

        v3 = *(v86 + 392);
        if (v3 <= v87)
        {
          break;
        }

        v89 = strlen(*(*(v86 + 408) + v88));
        v124 = *(*(v86 + 408) + v88);
        v125 = v89;
        re::BindNode::bindPointWithOverride(a3, re::introspect<float>(BOOL)::info, &v124, v132);
        v3 = *(a1 + 288);
        if (v3 <= v87)
        {
          goto LABEL_214;
        }

        v90 = &v4[*(a1 + 296)];
        *v90 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v90 + 8), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v91 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v92 = re::animationLogObjects(v91);
        v93 = re::AnimationLogObjects::loggingEnabled(v92);
        if (v93)
        {
          v3 = *re::animationLogObjects(v93);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
          {
            v94 = *(re::DynamicArray<re::StringID>::operator[](*(v86 + 392), *(v86 + 408), v87) + 8);
            v95 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 288), *(a1 + 296), v87);
            v96 = "yes";
            if (!*(v95 + 24))
            {
              v96 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v87;
            *&buf[12] = 2080;
            *&buf[14] = v94;
            *&buf[22] = 2080;
            *&buf[24] = v96;
            _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        ++v87;
        v4 += 48;
        v88 += 16;
        if (v87 >= *(v86 + 392))
        {
          goto LABEL_198;
        }
      }

      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_214:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v87;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_215:
      v124 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 797;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v141[0]) = 136315906;
      *(v141 + 4) = "operator[]";
      WORD2(v141[1]) = 1024;
      *(&v141[1] + 6) = 468;
      WORD1(v141[2]) = 2048;
      *(&v141[2] + 4) = v10;
      WORD2(v141[3]) = 2048;
      *(&v141[3] + 6) = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_218:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_219:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_220:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_221:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_222:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_223:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_224:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_225:
      re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v73);
      _os_crash();
      __break(1u);
LABEL_226:
      re::internal::assertLog(6, v44, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v59);
      _os_crash();
      __break(1u);
LABEL_227:
      re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v80);
      _os_crash();
      __break(1u);
LABEL_228:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v69);
      _os_crash();
      __break(1u);
LABEL_229:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v75);
      _os_crash();
      __break(1u);
LABEL_230:
      re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v63);
      _os_crash();
      __break(1u);
LABEL_231:
      re::internal::assertLog(6, v52, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v71);
      _os_crash();
      __break(1u);
LABEL_232:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v67);
      _os_crash();
      __break(1u);
LABEL_233:
      *v129 = 0;
      __s1 = 0u;
      v136 = 0u;
      v134 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v132 = 136315906;
      *&v132[4] = "operator[]";
      *&v132[12] = 1024;
      *&v132[14] = 789;
      *&v132[18] = 2048;
      *&v132[20] = v3;
      *&v132[28] = 2048;
      *&v132[30] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_234:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
      _os_crash();
      __break(1u);
LABEL_235:
      v114[0] = 0;
      v142 = 0u;
      v143 = 0u;
      memset(v141, 0, sizeof(v141));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v129 = 136315906;
      *&v129[4] = "operator[]";
      *&v129[12] = 1024;
      *&v129[14] = 797;
      v130 = 2048;
      *v131 = v4;
      *&v131[8] = 2048;
      *&v131[10] = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_236:
      re::internal::assertLog(6, v39, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v4, v42);
      _os_crash();
      __break(1u);
    }

LABEL_198:
    v98 = *(a1 + 80);
    re::FixedArray<re::BindPoint>::init<>(a1 + 304, a2, *(v98 + 432));
    if (*(v98 + 432))
    {
      v99 = 0;
      v10 = 0;
      for (j = 8; ; j += 16)
      {
        {
          re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
        }

        v4 = *(v98 + 432);
        if (v4 <= v10)
        {
          break;
        }

        v3 = *(*(v98 + 448) + j);
        v101 = strlen(v3);
        v124 = v3;
        v125 = v101;
        re::BindNode::bindPointWithOverride(a3, re::introspect<re::SkeletalPose>(BOOL)::info, &v124, v132);
        v4 = *(a1 + 312);
        if (v4 <= v10)
        {
          goto LABEL_216;
        }

        v102 = (*(a1 + 320) + v99);
        *v102 = *v132;
        re::DynamicArray<re::RigDataValue>::operator=((v102 + 1), &v132[8]);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v103 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v132[8]);
        v104 = re::animationLogObjects(v103);
        v105 = re::AnimationLogObjects::loggingEnabled(v104);
        if (v105)
        {
          v106 = *re::animationLogObjects(v105);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v3 = *(re::DynamicArray<re::StringID>::operator[](*(v98 + 432), *(v98 + 448), v10) + 8);
            v107 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 312), *(a1 + 320), v10);
            v108 = "yes";
            if (!*(v107 + 24))
            {
              v108 = "no";
            }

            *buf = 134218498;
            *&buf[4] = v10;
            *&buf[12] = 2080;
            *&buf[14] = v3;
            *&buf[22] = 2080;
            *&buf[24] = v108;
            _os_log_impl(&dword_1E1C61000, v106, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
          }
        }

        v10 = (v10 + 1);
        v99 += 48;
        if (v10 >= *(v98 + 432))
        {
          return;
        }
      }

      goto LABEL_215;
    }
  }
}

uint64_t re::AnimationBlendTreeDefinition::findClipIndex(re::AnimationBlendTreeDefinition *this, unint64_t a2)
{
  if (*(this + 2) <= a2)
  {
    return -1;
  }

  v2 = 0;
  v3 = a2;
  if (a2)
  {
    v4 = (*(this + 4) + 16);
    do
    {
      v2 += re::StringID::operator==(v4, re::AnimationBlendTreeNodeDescription::kClip);
      v4 += 11;
      --v3;
    }

    while (v3);
  }

  return v2;
}

re::IntrospectionSharedLock *re::IntrospectionSharedLock::IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v2 = re::IntrospectionSharedLock::m_sharedLockLevel();
  v3 = v2;
  v4 = *v2;
  if (!*v2)
  {
    v5 = re::introspectionSharedMutex(v2);
    std::__shared_mutex_base::lock_shared(v5);
    v4 = *v3;
  }

  *v3 = v4 + 1;
  return this;
}

void re::IntrospectionSharedLock::~IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v1 = re::IntrospectionSharedLock::m_sharedLockLevel();
  if ((*v1)-- == 1)
  {
    v3 = re::introspectionSharedMutex(v1);
    std::__shared_mutex_base::unlock_shared(v3);
  }
}

re::IntrospectionDynamicArrayBase *re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(re::IntrospectionDynamicArrayBase *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CADA48;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  return this;
}

void *re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::IntrospectionDynamicArrayBase::childInfo(re::IntrospectionDynamicArrayBase *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 494, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = 0;
  v12 = 0;
  v14 = 0;
  v16 = 0;
  v18 = 0;
  v11[1] = &str_67;
  v13 = &str_67;
  v15 = &str_67;
  v17 = &str_67;
  v19 = &str_67;
  v20 = 0;
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(this, v11);
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  v16 = 0;
  v17 = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  v14 = 0;
  v15 = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  v12 = 0;
  v13 = &str_67;
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  v9 = (*(this + 4) + 88 * *(this + 2) - 88);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::AnimationBlendTreeNodeDescription>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 88 * a3;
}

void re::IntrospectionDynamicArrayBase::~IntrospectionDynamicArrayBase(re::IntrospectionDynamicArrayBase *this)
{
  *this = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArrayBase::resize(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "resize", 485);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDynamicArrayBase::addElement(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "addElement", 486);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDynamicArrayBase::size(re::IntrospectionDynamicArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "size", 487);
  _os_crash();
  __break(1u);
}

void re::IntrospectionDynamicArrayBase::elementAt(re::IntrospectionDynamicArrayBase *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 488);
  _os_crash();
  __break(1u);
}

{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "elementAt", 489);
  _os_crash();
  __break(1u);
}

uint64_t re::SerializedReference<re::IntrospectionBase const*>::reset(uint64_t result)
{
  *result = 0;
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    v4 = re::DynamicString::deinit(*(result + 8));
    result = (*(*v3 + 40))(v3, v1, v4);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 88 * v4;
        do
        {
          re::StringID::destroyString((v3 + 64));
          re::StringID::destroyString((v3 + 48));
          re::StringID::destroyString((v3 + 32));
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 88;
          v5 -= 88;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v10 = &v8[11 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v12) = v8[4];
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v11[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          LOBYTE(v12) = v8[6];
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v8[6] & 1;
          v11[6] = v8[6] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[7] = v8[7];
          v8[7] = &str_67;
          v8[6] = 0;
          LOBYTE(v12) = v8[8];
          v11[8] = v11[8] & 0xFFFFFFFFFFFFFFFELL | v8[8] & 1;
          v11[8] = v8[8] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[9] = v8[9];
          v8[9] = &str_67;
          v8[8] = 0;
          *(v11 + 20) = *(v8 + 20);
          re::StringID::destroyString((v8 + 8));
          re::StringID::destroyString((v8 + 6));
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 11;
          v8 += 11;
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

void re::DynamicArray<re::AnimationBlendTreeNodeDescription>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 88;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4 + 40;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 - 40) = 0;
        *(v7 - 32) = &str_67;
        *(v7 - 24) = 0;
        *(v7 - 16) = &str_67;
        *(v7 - 8) = 0;
        *v7 = &str_67;
        *(v7 + 8) = 0;
        *(v7 + 16) = &str_67;
        *(v7 + 24) = 0;
        *(v7 + 32) = &str_67;
        *(v7 + 40) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

float re::DynamicArray<re::AnimationBlendTreeNodeDescription>::add(_anonymous_namespace_ *this, float *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 88 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = *(a2 + 1);
  *a2 = 0;
  *(a2 + 1) = &str_67;
  v7 = *(a2 + 2);
  *(v5 + 16) = *(v5 + 16) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 16) = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  *(v5 + 24) = *(a2 + 3);
  *(a2 + 2) = 0;
  *(a2 + 3) = &str_67;
  v8 = *(a2 + 4);
  *(v5 + 32) = *(v5 + 32) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 32) = *(a2 + 4) & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v5 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = &str_67;
  v9 = *(a2 + 6);
  *(v5 + 48) = *(v5 + 48) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v5 + 48) = *(a2 + 6) & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  *(v5 + 56) = *(a2 + 7);
  *(a2 + 6) = 0;
  *(a2 + 7) = &str_67;
  v10 = *(a2 + 8);
  *(v5 + 64) = *(v5 + 64) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 64) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  *(v5 + 72) = *(a2 + 9);
  *(a2 + 8) = 0;
  *(a2 + 9) = &str_67;
  result = a2[20];
  *(v5 + 80) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::AnimationBlendTreeNodeDescription>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 88 * v8;
      do
      {
        re::StringID::destroyString((v9 + 64));
        re::StringID::destroyString((v9 + 48));
        re::StringID::destroyString((v9 + 32));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 88;
        v10 -= 88;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AnimationBlendTreeNodeDescription>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::AnimationBlendTreeNodeDescription>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 88 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 88;
        v14 -= 88;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 88 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AnimationBlendTreeNodeDescription>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginListType(v10, a2, 1, 0x28uLL, 8uLL, &v9);
    re::TypeBuilder::setConstructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
    re::TypeBuilder::setDestructor(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
    re::TypeBuilder::setListUsesContiguousStorage(v10, 1);
    re::TypeBuilder::setListAccessors(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIndexer(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
    re::TypeBuilder::setListIterator(v10, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

void *re::IntrospectionDynamicArray<re::RigGraphConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RigGraphConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RigGraphConnection>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RigGraphConnection>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RigGraphConnection>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigGraphConnection>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RigGraphConnection>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RigGraphConnection>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RigGraphConnection>::addElement(uint64_t a1, re *a2, int a3, void *a4)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  re::StringID::invalid(&v11);
  re::StringID::invalid(&v12);
  re::StringID::invalid(&v13);
  re::StringID::invalid(&v14);
  re::StringID::invalid(&v15);
  re::StringID::invalid(&v16);
  re::StringID::invalid(&v17);
  re::StringID::invalid(&v18);
  re::StringID::invalid(&v19);
  re::StringID::invalid(&v20);
  v8 = re::DynamicArray<re::RigGraphConnection>::add(a4, &v11);
  if (v20)
  {
    if (v20)
    {
    }
  }

  *&v20 = 0;
  *(&v20 + 1) = &str_67;
  if (v19)
  {
    if (v19)
    {
    }
  }

  *&v19 = 0;
  *(&v19 + 1) = &str_67;
  if (v18)
  {
    if (v18)
    {
    }
  }

  *&v18 = 0;
  *(&v18 + 1) = &str_67;
  if (v17)
  {
    if (v17)
    {
    }
  }

  *&v17 = 0;
  *(&v17 + 1) = &str_67;
  if (v16)
  {
    if (v16)
    {
    }
  }

  *&v16 = 0;
  *(&v16 + 1) = &str_67;
  if (v15)
  {
    if (v15)
    {
    }
  }

  *&v15 = 0;
  *(&v15 + 1) = &str_67;
  if (v14)
  {
    if (v14)
    {
    }
  }

  *&v14 = 0;
  *(&v14 + 1) = &str_67;
  if (v13)
  {
    if (v13)
    {
    }
  }

  *&v13 = 0;
  *(&v13 + 1) = &str_67;
  if (v12)
  {
    if (v12)
    {
    }
  }

  *&v12 = 0;
  *(&v12 + 1) = &str_67;
  if (v11)
  {
    if (v11)
    {
    }
  }

  v9 = (a4[4] + 160 * a4[2] - 160);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::RigGraphConnection>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 160 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 160 * a3;
}

void *re::DynamicArray<re::RigGraphConnection>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    result = result[4];
    if (result)
    {
      re::ObjectHelper::destroy<re::RigGraphConnection>(result, &result[20 * v1[2]]);
      result = (*(**v1 + 40))(*v1, v1[4]);
    }

    v1[4] = 0;
    v1[1] = 0;
    v1[2] = 0;
    *v1 = 0;
    ++*(v1 + 6);
  }

  return result;
}

void re::ObjectHelper::destroy<re::RigGraphConnection>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      re::StringID::destroyString((v3 + 144));
      re::StringID::destroyString((v3 + 128));
      re::StringID::destroyString((v3 + 112));
      re::StringID::destroyString((v3 + 96));
      re::StringID::destroyString((v3 + 80));
      re::StringID::destroyString((v3 + 64));
      re::StringID::destroyString((v3 + 48));
      re::StringID::destroyString((v3 + 32));
      re::StringID::destroyString((v3 + 16));
      re::StringID::destroyString(v3);
      v3 += 160;
    }

    while (v3 != a2);
  }
}

void *re::DynamicArray<re::RigGraphConnection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RigGraphConnection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
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
        v10 = 160 * v9;
        v11 = v7;
        do
        {
          re::ObjectHelper::move<re::RigGraphConnection>(v8, v11);
          v8 += 20;
          v11 += 20;
          v10 -= 160;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::ObjectHelper::move<re::RigGraphConnection>(void *a1, unint64_t *a2)
{
  v3 = *a1;
  *a2 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  *a2 = *a1 & 0xFFFFFFFFFFFFFFFELL | v3 & 1;
  a2[1] = a1[1];
  *a1 = 0;
  a1[1] = &str_67;
  v5 = (a1 + 2);
  v4 = a1[2];
  a2[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | a1[2] & 1;
  a2[2] = a1[2] & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
  a2[3] = a1[3];
  a1[3] = &str_67;
  v7 = (a1 + 4);
  v6 = a1[4];
  a1[2] = 0;
  a2[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  a2[4] = a1[4] & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  a2[5] = a1[5];
  a1[5] = &str_67;
  a1[4] = 0;
  v9 = (a1 + 6);
  v8 = a1[6];
  a2[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | a1[6] & 1;
  a2[6] = a1[6] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  a2[7] = a1[7];
  a1[7] = &str_67;
  a1[6] = 0;
  v11 = (a1 + 8);
  v10 = a1[8];
  a2[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | a1[8] & 1;
  a2[8] = a1[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  a2[9] = a1[9];
  a1[9] = &str_67;
  a1[8] = 0;
  v13 = (a1 + 10);
  v12 = a1[10];
  a2[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | a1[10] & 1;
  a2[10] = a1[10] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  a2[11] = a1[11];
  a1[11] = &str_67;
  a1[10] = 0;
  v15 = (a1 + 12);
  v14 = a1[12];
  a2[12] = a2[12] & 0xFFFFFFFFFFFFFFFELL | a1[12] & 1;
  a2[12] = a1[12] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  a2[13] = a1[13];
  a1[13] = &str_67;
  a1[12] = 0;
  v17 = (a1 + 14);
  v16 = a1[14];
  a2[14] = a2[14] & 0xFFFFFFFFFFFFFFFELL | a1[14] & 1;
  a2[14] = a1[14] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
  a2[15] = a1[15];
  a1[15] = &str_67;
  v19 = (a1 + 16);
  v18 = a1[16];
  a1[14] = 0;
  a2[16] = a2[16] & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
  a2[16] = a1[16] & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
  a2[17] = a1[17];
  a1[17] = &str_67;
  a1[16] = 0;
  v21 = a1[18];
  v20 = (a1 + 18);
  a2[18] = a2[18] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
  a2[18] = *v20 & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
  a2[19] = a1[19];
  a1[19] = &str_67;
  *v20 = 0;
  re::StringID::destroyString(v20);
  re::StringID::destroyString(v19);
  re::StringID::destroyString(v17);
  re::StringID::destroyString(v15);
  re::StringID::destroyString(v13);
  re::StringID::destroyString(v11);
  re::StringID::destroyString(v9);
  re::StringID::destroyString(v7);
  re::StringID::destroyString(v5);

  re::StringID::destroyString(a1);
}

void re::DynamicArray<re::RigGraphConnection>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 160 * a2;
    v9 = a2;
    do
    {
      v10 = *(a1 + 32) + v8;
      re::StringID::destroyString((v10 + 144));
      re::StringID::destroyString((v10 + 128));
      re::StringID::destroyString((v10 + 112));
      re::StringID::destroyString((v10 + 96));
      re::StringID::destroyString((v10 + 80));
      re::StringID::destroyString((v10 + 64));
      re::StringID::destroyString((v10 + 48));
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 160;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 160 * v4 + 144;
      do
      {
        v7 = (*(a1 + 32) + v6);
        re::StringID::invalid((v7 - 144));
        re::StringID::invalid((v7 - 128));
        re::StringID::invalid((v7 - 112));
        re::StringID::invalid((v7 - 96));
        re::StringID::invalid((v7 - 80));
        re::StringID::invalid((v7 - 64));
        re::StringID::invalid((v7 - 48));
        re::StringID::invalid((v7 - 32));
        re::StringID::invalid((v7 - 16));
        re::StringID::invalid(v7);
        v6 += 160;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::DynamicArray<re::RigGraphConnection>::add(void *this, uint64_t *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::RigGraphConnection>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 160 * v4);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  v5[1] = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = a2[2];
  v5[2] = v5[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[2] = a2[2] & 0xFFFFFFFFFFFFFFFELL | v7 & 1;
  v5[3] = a2[3];
  a2[2] = 0;
  a2[3] = &str_67;
  v8 = a2[4];
  v5[4] = v5[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[4] = a2[4] & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v5[5] = a2[5];
  a2[4] = 0;
  a2[5] = &str_67;
  v9 = a2[6];
  v5[6] = v5[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[6] = a2[6] & 0xFFFFFFFFFFFFFFFELL | v9 & 1;
  v5[7] = a2[7];
  a2[6] = 0;
  a2[7] = &str_67;
  v10 = a2[8];
  v5[8] = v5[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[8] = a2[8] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
  v5[9] = a2[9];
  a2[8] = 0;
  a2[9] = &str_67;
  v11 = a2[10];
  v5[10] = v5[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[10] = a2[10] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
  v5[11] = a2[11];
  a2[10] = 0;
  a2[11] = &str_67;
  v12 = a2[12];
  v5[12] = v5[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[12] = a2[12] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
  v5[13] = a2[13];
  a2[12] = 0;
  a2[13] = &str_67;
  v13 = a2[14];
  v5[14] = v5[14] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v5[14] = a2[14] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  v5[15] = a2[15];
  a2[14] = 0;
  a2[15] = &str_67;
  v14 = a2[16];
  v5[16] = v5[16] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v5[16] = a2[16] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v5[17] = a2[17];
  a2[16] = 0;
  a2[17] = &str_67;
  v15 = a2[18];
  v5[18] = v5[18] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  v5[18] = a2[18] & 0xFFFFFFFFFFFFFFFELL | v15 & 1;
  v5[19] = a2[19];
  a2[18] = 0;
  a2[19] = &str_67;
  ++v3[2];
  ++*(v3 + 6);
  return this;
}

void *re::DynamicArray<re::RigGraphConnection>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigGraphConnection>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigGraphConnection>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigGraphConnection>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, re::Allocator *a4, unint64_t a5)
{
  if (*a2 == a4)
  {
    v9 = *(a2 + 16);
    *(a2 + 16) = 0;
    re::ObjectHelper::destroy<re::RigGraphConnection>(*(a2 + 32), *(a2 + 32) + 160 * v9);
  }

  else
  {
    re::DynamicArray<re::RigGraphConnection>::deinit(a2);
    *a2 = a4;
    re::DynamicArray<re::RigGraphConnection>::setCapacity(a2, a5);
  }

  ++*(a2 + 24);
  re::DynamicArray<re::RigGraphConnection>::resize(a2, a5);
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 16) + 80), v15);
    re::TypeInfo::TypeInfo(v14, &v16);
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = *(a2 + 32);
      v13 = 160 * v11;
      do
      {
        re::TypeInfo::destruct(v14, v12, a4, 0);
        re::TypeInfo::construct(v14, v12, a4, 0);
        v12 += 160;
        v13 -= 160;
      }

      while (v13);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 160 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 160 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RigGraphConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::DynamicArray<re::BlendSpaceSampleDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 6;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 24);
          re::StringID::destroyString(v3);
          v3 = (v3 + 64);
          v5 -= 64;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 48 * v4;
        do
        {
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 48;
          v5 -= 48;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::AnimationBlendTreeInstance<float>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<float>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<float>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[40];
}

float re::AnimationImpl<float>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<float>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 120, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACC30;
  *(v2 + 108) = 0;
  return result;
}

BOOL re::AnimationImpl<float>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v5);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[40] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Timeline::debugLogTimelineData(re *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v13, a2);
    (*(*a1 + 104))(a1, v13);
    if (*&v13[0])
    {
      if (BYTE8(v13[0]))
      {
        (*(**&v13[0] + 40))();
      }

      memset(v13, 0, sizeof(v13));
    }

    v5 = (*(*a1 + 24))(a1);
    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v10 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v11 = *(a2 + 16);
        }

        else
        {
          v11 = a2 + 9;
        }

        *buf = 136315394;
        v15 = v11;
        v16 = 2048;
        v17 = v5;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "ANIM: %sChildren (%ld)\n", buf, 0x16u);
      }
    }

    if (v5)
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        v9 = (*(*a1 + 32))(a1, i);
        re::DynamicString::operator+(a2, "  ", v12);
        (*(*v9 + 96))(v9, v12);
        if (*&v12[0])
        {
          if (BYTE8(v12[0]))
          {
            (*(**&v12[0] + 40))();
          }

          memset(v12, 0, sizeof(v12));
        }
      }
    }
  }
}

void re::Animation<float>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<float>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<float>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, __n128 a7)
{
  v85 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7.n128_f64[0]);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &v59 + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 4;
    }

    while (v15 != 12);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    a7.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<float>::evaluateBlend(a1, 0, 0, a7);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v51 = a6;
  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v53 = *(a1 + 312);
  v57[0] = a2;
  v57[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v54, (v14 + 44));
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      LODWORD(v59) = 0;
      re::DynamicArray<float>::add((v19 + 40), &v59);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    v23 = 0;
    a3 = 0;
    while (1)
    {
      v7 = v55;
      if (v55 <= a3)
      {
        break;
      }

      v24 = *(v56 + 8 * a3);
      v8 = v14[42];
      if (v8 <= v24)
      {
        goto LABEL_77;
      }

      v7 = v24 + 1;
      if (v8 <= v24 + 1)
      {
        goto LABEL_78;
      }

      if (v21 <= v24)
      {
        goto LABEL_79;
      }

      v25 = *(v14[40] + 8 * v24);
      v26 = re::Slice<re::AnimationClock>::range(v57, *(v14[43] + 8 * v24), *(v14[43] + 8 * v7));
      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_80;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_81;
      }

      v29 = (*(v19 + 72) + v23);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*v29 = *a4, v25[2] == 49))
      {
        (*(*v25 + 120))(v25, v26, v27, a4, a5, v29);
      }

      v7 = *(v19 + 16);
      if (v7 <= a3)
      {
        goto LABEL_82;
      }

      v7 = *(v19 + 56);
      if (v7 <= a3)
      {
        goto LABEL_83;
      }

      re::AnimationBlendTreeRigContext<float>::setRigDataValue<float>(v19, *(*(v19 + 32) + 8 * a3), *(*(v19 + 72) + 4 * a3));
      ++a3;
      v21 = v14[39];
      v23 += 4;
      if (a3 >= v21)
      {
        goto LABEL_34;
      }
    }

    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 476;
    v81 = 2048;
    v82 = a3;
    v83 = 2048;
    v84 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 476;
    v81 = 2048;
    v82 = v24;
    v83 = 2048;
    v84 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 476;
    v81 = 2048;
    v82 = v7;
    v83 = 2048;
    v84 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 476;
    v81 = 2048;
    v82 = v24;
    v83 = 2048;
    v84 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 789;
    v81 = 2048;
    v82 = a3;
    v83 = 2048;
    v84 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_81:
    re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_82:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 789;
    v81 = 2048;
    v82 = a3;
    v83 = 2048;
    v84 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 789;
    v81 = 2048;
    v82 = a3;
    v83 = 2048;
    v84 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_84:
    re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v35);
    _os_crash();
    __break(1u);
LABEL_85:
    re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
LABEL_86:
    v58 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v77 = 136315906;
    v78 = "operator[]";
    v79 = 1024;
    v80 = 789;
    v81 = 2048;
    v82 = v7;
    v83 = 2048;
    v84 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v53)
  {
    v31 = 0;
    v32 = 0;
    v7 = 0;
    do
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_68;
      }

      v33 = re::BindPoint::valueUntyped(v20);
      v35 = *(v19 + 232);
      if (v35 <= v7)
      {
        goto LABEL_84;
      }

      v36 = v33;
      v37 = *(v19 + 248);
      a3 = v37 + v31;
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 != 6)
          {
            if (v38 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v31, v34);
        }

        else
        {
          if (v38 != 8)
          {
            if (v38 == 10)
            {
              a3 = *(v19 + 96);
              if (a3 <= v7)
              {
                goto LABEL_86;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v32), v33);
            }

            else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
            {
              v43 = *(v37 + v31 + 48);
              if (v43 == "SRT" || !strcmp(v43, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v36);
              }
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v31, v34);
        }

        *v46 = *v36;
      }

      else
      {
        if (*(v37 + v31 + 32) > 2u)
        {
          switch(v38)
          {
            case 3u:
              re::AnimationBlendTreeRigContext<float>::setRigDataValue<float>(v19, v7, *v33);
              break;
            case 4u:
              v47 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
              v49 = *(v36 + 1);
              v48 = *(v36 + 2);
              *v47 = *v36;
              v47[1] = v49;
              v47[2] = v48;
              break;
            case 5u:
              v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
              v40 = *(v36 + 3);
              v42 = *v36;
              v41 = *(v36 + 1);
              v39[2] = *(v36 + 2);
              v39[3] = v40;
              *v39 = v42;
              v39[1] = v41;
              break;
          }

          goto LABEL_68;
        }

        if (v38 == 1)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
          goto LABEL_60;
        }

        if (v38 == 2)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
          *Runtime = v44;
        }
      }

LABEL_68:
      ++v7;
      v32 += 24;
      v31 += 288;
      v20 = (v20 + 48);
    }

    while (v53 != v7);
  }

  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  re::EvaluationContextSlices::init(&v59, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &v59);
  if (!*(v19 + 272))
  {
    goto LABEL_85;
  }

  *v51 = *re::RigDataValue::getRuntimeValue<float>(*(v19 + 288), v50);
  if (v54 && v55)
  {
    (*(*v54 + 40))();
  }
}

void re::AnimationImpl<float>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

void re::Timeline::child(re::Timeline *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not implemented.", "!Unreachable code", "child", 184);
  _os_crash();
  __break(1u);
}

void re::Timeline::debugLogData(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  v5 = re::AnimationLogObjects::loggingEnabled(v4);
  if (v5)
  {
    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v20 = *re::animationLogObjects(v7);
      v7 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        v21 = (*(a2 + 8) & 1) != 0 ? *(a2 + 16) : a2 + 9;
        re::Timeline::getTypeName(a1, v36);
        v31 = (v36[8] & 1) != 0 ? *&v38[2] : &v36[9];
        *buf = 136315394;
        v40 = v21;
        v41 = 2080;
        v42 = v31;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "ANIM: %stype: %s\n", buf, 0x16u);
        v7 = *v36;
        if (*v36)
        {
          if (v36[8])
          {
            v7 = (*(**v36 + 40))();
          }
        }
      }
    }

    v8 = re::animationLogObjects(v7);
    v9 = re::AnimationLogObjects::loggingEnabled(v8);
    if (v9)
    {
      v22 = *re::animationLogObjects(v9);
      v9 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (*(a2 + 8))
        {
          v23 = *(a2 + 16);
        }

        else
        {
          v23 = a2 + 9;
        }

        v32 = *(a1 + 32);
        *v36 = 136315394;
        *&v36[4] = v23;
        v37 = 2080;
        *v38 = v32;
        _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "ANIM: %sname: %s\n", v36, 0x16u);
      }
    }

    v10 = re::animationLogObjects(v9);
    v11 = re::AnimationLogObjects::loggingEnabled(v10);
    if (v11)
    {
      v24 = *re::animationLogObjects(v11);
      v11 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (*(a2 + 8))
        {
          v25 = *(a2 + 16);
        }

        else
        {
          v25 = a2 + 9;
        }

        v33 = *(a1 + 12);
        *v36 = 136315394;
        *&v36[4] = v25;
        v37 = 1024;
        *v38 = v33;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "ANIM: %slayer: %d\n", v36, 0x12u);
      }
    }

    v12 = re::animationLogObjects(v11);
    v13 = re::AnimationLogObjects::loggingEnabled(v12);
    if (v13)
    {
      v26 = *re::animationLogObjects(v13);
      v13 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v27 = (*(a2 + 8) & 1) != 0 ? *(a2 + 16) : a2 + 9;
        re::Timeline::getFillModeName(a1, v36);
        v34 = (v36[8] & 1) != 0 ? *&v38[2] : &v36[9];
        *buf = 136315394;
        v40 = v27;
        v41 = 2080;
        v42 = v34;
        _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "ANIM: %sfillMode: %s\n", buf, 0x16u);
        v13 = *v36;
        if (*v36)
        {
          if (v36[8])
          {
            v13 = (*(**v36 + 40))();
          }
        }
      }
    }

    v14 = re::animationLogObjects(v13);
    v15 = re::AnimationLogObjects::loggingEnabled(v14);
    if (v15)
    {
      v28 = *re::animationLogObjects(v15);
      v15 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (*(a2 + 8))
        {
          v29 = *(a2 + 16);
        }

        else
        {
          v29 = a2 + 9;
        }

        if (*(a1 + 48))
        {
          v35 = *(a1 + 56);
        }

        else
        {
          v35 = a1 + 49;
        }

        *v36 = 136315394;
        *&v36[4] = v29;
        v37 = 2080;
        *v38 = v35;
        _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "ANIM: %stargetPath: %s\n", v36, 0x16u);
      }
    }

    v16 = re::animationLogObjects(v15);
    v17 = re::AnimationLogObjects::loggingEnabled(v16);
    if (v17)
    {
      v18 = *re::animationLogObjects(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v19 = *(a2 + 16);
        }

        else
        {
          v19 = a2 + 9;
        }

        v30 = (*(*a1 + 40))(a1);
        *v36 = 136315394;
        *&v36[4] = v19;
        v37 = 2048;
        *v38 = v30;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "ANIM: %sduration: %f\n", v36, 0x16u);
      }
    }
  }
}

uint64_t re::Timeline::getTypeName@<X0>(re::Timeline *this@<X0>, re::DynamicString *a2@<X8>)
{
  v2 = *(this + 2);
  if (v2 > 0x3E)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = (&off_1E8717B78)[v2];
  }

  return re::DynamicString::format(v3, a2);
}

uint64_t re::Timeline::getFillModeName@<X0>(re::Timeline *this@<X0>, re::DynamicString *a2@<X8>)
{
  v2 = *(this + 16);
  if (v2 > 3)
  {
    v3 = "Unknown";
  }

  else
  {
    v3 = (&off_1E8717D70)[v2];
  }

  return re::DynamicString::format(v3, a2);
}

uint64_t re::AnimationBlendTreeInstance<float>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD2B8;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::EvaluationModelSingleThread::~EvaluationModelSingleThread(re::EvaluationModelSingleThread *this)
{
  *this = &unk_1F5CB2E90;
  v2 = (this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 95);
  re::FixedArray<CoreIKTransform>::deinit(this + 92);
  re::FixedArray<CoreIKTransform>::deinit(this + 89);
  re::FixedArray<CoreIKTransform>::deinit(this + 86);
  re::FixedArray<CoreIKTransform>::deinit(this + 83);
  re::FixedArray<CoreIKTransform>::deinit(this + 80);
  re::FixedArray<CoreIKTransform>::deinit(this + 77);
  re::FixedArray<CoreIKTransform>::deinit(this + 74);
  re::FixedArray<CoreIKTransform>::deinit(this + 71);
  re::FixedArray<CoreIKTransform>::deinit(this + 68);
  re::FixedArray<CoreIKTransform>::deinit(this + 65);
  re::FixedArray<CoreIKTransform>::deinit(this + 62);
  re::FixedArray<CoreIKTransform>::deinit(this + 59);
  re::FixedArray<CoreIKTransform>::deinit(this + 56);
  re::FixedArray<CoreIKTransform>::deinit(this + 53);
  re::FixedArray<CoreIKTransform>::deinit(this + 50);
  re::FixedArray<CoreIKTransform>::deinit(this + 47);
  re::FixedArray<CoreIKTransform>::deinit(this + 44);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<re::EvaluationModelSingleThread::BranchGroupExecutionData>::deinit(this + 32);
  re::FixedArray<re::EvaluationContext>::deinit(this + 29);
  re::FixedArray<re::EvaluationCallbackData>::deinit(this + 26);
  re::FixedArray<CoreIKTransform>::deinit(this + 23);
  re::FixedArray<CoreIKTransform>::deinit(this + 20);
  re::FixedArray<CoreIKTransform>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<CoreIKTransform>::deinit(this + 11);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  re::FixedArray<CoreIKTransform>::deinit(this + 2);
}

{
  re::EvaluationModelSingleThread::~EvaluationModelSingleThread(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::EvaluationModelSingleThread::BranchGroupExecutionData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 456 * v2;
      do
      {
        re::EvaluationModelSingleThread::BranchGroupExecutionData::~BranchGroupExecutionData(v4);
        v4 = (v6 + 456);
        v5 -= 456;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::EvaluationModelSingleThread::BranchGroupExecutionData::~BranchGroupExecutionData(re::EvaluationModelSingleThread::BranchGroupExecutionData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 54);
  re::FixedArray<CoreIKTransform>::deinit(this + 51);
  re::FixedArray<CoreIKTransform>::deinit(this + 48);
  re::FixedArray<CoreIKTransform>::deinit(this + 45);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::FixedArray<CoreIKTransform>::deinit(this + 36);
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::FixedArray<CoreIKTransform>::deinit(this + 30);
  re::FixedArray<CoreIKTransform>::deinit(this + 27);
  re::FixedArray<CoreIKTransform>::deinit(this + 24);
  re::FixedArray<CoreIKTransform>::deinit(this + 21);
  re::FixedArray<CoreIKTransform>::deinit(this + 18);
  re::FixedArray<CoreIKTransform>::deinit(this + 15);
  re::FixedArray<CoreIKTransform>::deinit(this + 12);
  re::FixedArray<CoreIKTransform>::deinit(this + 9);
  re::FixedArray<re::EvaluationModelSingleThread>::deinit(this + 6);
  re::FixedArray<re::FixedRegisterIdTable>::deinit(this + 3);
  re::FixedArray<CoreIKTransform>::deinit(this);
}

void *re::FixedArray<re::EvaluationModelSingleThread>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 784 * v2;
      v6 = v4;
      do
      {
        (**v6)(v6);
        v6 += 98;
        v4 += 98;
        v5 -= 784;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::FixedRegisterIdTable>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 192 * v2;
      do
      {
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 168));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 144));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 120));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 96));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 72));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 48));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4 + 24));
        re::FixedArray<CoreIKTransform>::deinit((v5 + v4));
        v4 += 192;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::EvaluationContext>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 432 * v2;
      do
      {
        re::EvaluationContext::~EvaluationContext(v4);
        v4 = (v6 + 432);
        v5 -= 432;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::EvaluationCallbackData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 448 * v2;
      do
      {
        re::EvaluationCallbackData::~EvaluationCallbackData(v4);
        v4 = (v6 + 448);
        v5 -= 448;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::EvaluationCallbackData::~EvaluationCallbackData(re::EvaluationCallbackData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 52);
  re::FixedArray<CoreIKTransform>::deinit(this + 49);
  re::FixedArray<CoreIKTransform>::deinit(this + 46);
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  re::FixedArray<CoreIKTransform>::deinit(this + 40);
  re::FixedArray<CoreIKTransform>::deinit(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::FixedArray<CoreIKTransform>::deinit(this + 31);
  re::FixedArray<CoreIKTransform>::deinit(this + 28);
  re::FixedArray<CoreIKTransform>::deinit(this + 25);
  re::FixedArray<CoreIKTransform>::deinit(this + 22);
  re::FixedArray<CoreIKTransform>::deinit(this + 19);
  re::FixedArray<CoreIKTransform>::deinit(this + 16);
  re::FixedArray<CoreIKTransform>::deinit(this + 13);
  re::FixedArray<CoreIKTransform>::deinit(this + 10);
  re::FixedArray<CoreIKTransform>::deinit(this + 7);
  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

uint64_t re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](a1, i);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 28);
      re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 22);
      re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v4 + 16);
      re::DataArray<re::RigGraphOperatorDefinition>::deinit((v4 + 8));
      re::DynamicArray<unsigned long>::deinit((v4 + 8));
      re::DataArray<re::RigGraphNode>::deinit(v4);
      re::DynamicArray<unsigned long>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 272 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 272 * (a2 & 7);
}

double re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 8);
        }

        v4 += 32;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

double re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 88;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v3 = (a1 + 8);
    re::StringID::destroyString((a1 + 2));
    re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((a1 + 12));

    re::StringID::destroyString(v3);
  }
}

uint64_t re::DataArray<re::RigGraphOperatorDefinition>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::RigGraphOperatorDefinition>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::RigGraphOperatorDefinition>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::RigGraphOperatorDefinition>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::RigGraphOperatorDefinition>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  v5 = re::DataArray<re::RigGraphOperatorDefinition>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit((v5 + 40));
    re::FixedArray<re::RigGraphOperatorParameterDefinition>::deinit(v6 + 2);
    re::StringID::destroyString(v6);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

unint64_t re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(unsigned __int16 *a1)
{
  v1 = a1[5];
  if (*(*a1 + 16) <= v1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return (v1 << 16) | ((*(*(*(*a1 + 32) + 16 * v1 + 8) + 4 * a1[4]) & 0xFFFFFF) << 32) | a1[4];
}

uint64_t re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(uint64_t result, unint64_t a2)
{
  v2 = *(result + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = v2 - 1;
  if (v2 - 1 > a2)
  {
    *(*(result + 32) + 16 * a2) = *(*(result + 32) + 16 * v2 - 16);
    v3 = *(result + 16) - 1;
  }

  *(result + 16) = v3;
  ++*(result + 24);
  return result;
}

uint64_t re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a2;
  if ((a3 & 1) != 0 || !*(a2 + 40))
  {
    *(a1 + 8) = -1;
  }

  else
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(a1);
    }
  }

  return a1;
}

_WORD *re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(_WORD *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  v3 = v2 - 1;
  v4 = result[4];
  v5 = result[5];
  while (1)
  {
    ++v4;
    if (v5 < v3 && *(v1 + 44) <= v4)
    {
      v4 = 0;
      result[5] = ++v5;
    }

    if (v5 == v3 && *(v1 + 48) <= v4)
    {
      break;
    }

    if (v2 <= v5)
    {
      result[4] = v4;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(*(v1 + 32) + 16 * v5 + 8) + 4 * v4))
    {
      result[4] = v4;
      return result;
    }
  }

  *(result + 2) = -1;
  return result;
}

uint64_t re::DataArray<re::RigGraphOperatorDefinition>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 72 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DataArray<re::RigGraphNode>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::RigGraphNode>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::RigGraphNode>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::RigGraphNode>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t re::DataArray<re::RigGraphNode>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::RigGraphNode>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(result + 160);
    re::DynamicArray<re::StringID>::deinit((v6 + 30));
    re::DynamicArray<re::RigGraphNodeChild>::deinit((v6 + 20));
    re::DynamicArray<re::RigGraphNodeInputParameter>::deinit((v6 + 10));
    result = re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v6);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::RigGraphNode>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 200 * a2;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::Pair<unsigned long,re::StringID,true>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 24);
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphNodeChild>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 96 * v4;
        do
        {
          re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(v3 + 56);
          re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(v3 + 16);
          re::StringID::destroyString(v3);
          v3 = (v3 + 96);
          v5 -= 96;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphNodeOutputParameter>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 6;
        do
        {
          re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(v3 + 24);
          re::StringID::destroyString(v3);
          v3 = (v3 + 64);
          v5 -= 64;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 56 * v4;
        do
        {
          re::StringID::destroyString((v3 + 40));
          re::StringID::destroyString((v3 + 16));
          re::StringID::destroyString(v3);
          v3 += 56;
          v5 -= 56;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RigGraphNodeInputParameter>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        do
        {
          re::StringID::destroyString((v3 + 24));
          re::StringID::destroyString(v3);
          v3 += 40;
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void re::EvaluationTree::~EvaluationTree(re::EvaluationTree *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 2024);
  re::DynamicArray<re::EvaluationCallbackData>::deinit(this + 1984);
  for (i = 1944; i != 1624; i -= 40)
  {
    re::DynamicArray<unsigned long>::deinit(this + i);
  }

  re::BucketArray<re::EvaluationBranchGroupData,8ul>::deinit(this + 1608);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 1608);
  re::DynamicArray<unsigned long>::deinit(this + 1568);
  re::DynamicArray<unsigned long>::deinit(this + 1528);
  re::DynamicArray<unsigned long>::deinit(this + 1488);
  re::DynamicArray<unsigned long>::deinit(this + 1448);
  re::DynamicArray<unsigned long>::deinit(this + 1408);
  re::DynamicArray<unsigned long>::deinit(this + 1368);
  re::DynamicArray<unsigned long>::deinit(this + 1328);
  re::DynamicArray<unsigned long>::deinit(this + 1288);
  re::DynamicArray<unsigned long>::deinit(this + 1248);
  re::DynamicArray<unsigned long>::deinit(this + 1208);
  re::DynamicArray<unsigned long>::deinit(this + 1168);
  re::DynamicArray<unsigned long>::deinit(this + 1128);
  re::DynamicArray<unsigned long>::deinit(this + 1088);
  re::DynamicArray<unsigned long>::deinit(this + 1048);
  re::DynamicArray<unsigned long>::deinit(this + 1008);
  re::DynamicArray<unsigned long>::deinit(this + 968);
  re::DynamicArray<unsigned long>::deinit(this + 928);
  re::DynamicArray<unsigned long>::deinit(this + 888);
  re::DynamicArray<unsigned long>::deinit(this + 848);
  re::DynamicArray<unsigned long>::deinit(this + 808);
  re::DynamicArray<unsigned long>::deinit(this + 768);
  re::DynamicArray<unsigned long>::deinit(this + 728);
  re::DynamicArray<unsigned long>::deinit(this + 688);
  re::DynamicArray<unsigned long>::deinit(this + 648);
  re::DynamicArray<unsigned long>::deinit(this + 608);
  re::DynamicArray<unsigned long>::deinit(this + 568);
  re::DynamicArray<unsigned long>::deinit(this + 528);
  re::DynamicArray<unsigned long>::deinit(this + 488);
  re::DynamicArray<unsigned long>::deinit(this + 448);
  re::DynamicArray<unsigned long>::deinit(this + 408);
  re::DynamicArray<unsigned long>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 328);
  re::DynamicArray<unsigned long>::deinit(this + 288);
  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

uint64_t re::DynamicArray<re::EvaluationCallbackData>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 448 * v4;
        do
        {
          re::EvaluationCallbackData::~EvaluationCallbackData(v3);
          v3 = (v3 + 448);
          v5 -= 448;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::BucketArray<re::EvaluationBranchGroupData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](a1, i);
      re::EvaluationBranchGroupData::~EvaluationBranchGroupData(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::EvaluationBranchGroupData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 696 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 696 * (a2 & 7);
}

void re::EvaluationBranchGroupData::~EvaluationBranchGroupData(re::EvaluationBranchGroupData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 656);
  re::DynamicArray<unsigned long>::deinit(this + 616);
  re::DynamicArray<unsigned long>::deinit(this + 576);
  re::DynamicArray<unsigned long>::deinit(this + 536);
  re::DynamicArray<unsigned long>::deinit(this + 496);
  re::DynamicArray<unsigned long>::deinit(this + 456);
  re::DynamicArray<unsigned long>::deinit(this + 416);
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<unsigned long>::deinit(this + 336);
  re::DynamicArray<unsigned long>::deinit(this + 296);
  re::DynamicArray<unsigned long>::deinit(this + 256);
  re::DynamicArray<unsigned long>::deinit(this + 216);
  re::DynamicArray<unsigned long>::deinit(this + 176);
  re::DynamicArray<unsigned long>::deinit(this + 136);
  re::DynamicArray<unsigned long>::deinit(this + 96);
  re::DynamicArray<unsigned long>::deinit(this + 56);
  re::BucketArray<re::EvaluationBranchData,8ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

uint64_t re::BucketArray<re::EvaluationBranchData,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::EvaluationBranchData,8ul>::operator[](a1, i);
      re::DynamicArray<unsigned long>::deinit((v4 + 41));
      re::DynamicArray<unsigned long>::deinit((v4 + 36));
      re::DynamicArray<unsigned long>::deinit((v4 + 31));
      re::DynamicArray<unsigned long>::deinit((v4 + 26));
      re::DynamicArray<unsigned long>::deinit((v4 + 21));
      re::DynamicArray<unsigned long>::deinit((v4 + 16));
      re::DynamicArray<unsigned long>::deinit((v4 + 11));
      re::DynamicArray<unsigned long>::deinit((v4 + 6));
      std::unique_ptr<re::EvaluationTree,std::function<void ()(re::EvaluationTree*)>>::~unique_ptr[abi:nn200100](v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::EvaluationBranchData,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 368 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 368 * (a2 & 7);
}

uint64_t *std::unique_ptr<re::EvaluationTree,std::function<void ()(re::EvaluationTree*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EvaluationTree *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EvaluationTree *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::EvaluationTree *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(re::EvaluationTree *)>::~__value_func[abi:nn200100](v4);
}

uint64_t std::__function::__value_func<void ()(re::EvaluationTree *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void re::RigGraphCompilation::~RigGraphCompilation(re::RigGraphCompilation *this)
{
  re::DynamicArray<re::RigDataValue>::deinit(this + 96);
  re::DynamicArray<re::RigDataValue>::deinit(this + 56);
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator[](a1, i);
      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 6)) + 40 * (a2 & 0x3F);
}

uint64_t re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v3);
          v3 += 3;
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

void *re::FixedArray<re::BindPoint>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2] + 8;
      v5 = 48 * v2;
      do
      {
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v4);
        re::DynamicArray<re::BindPoint::BindPointData>::deinit(v4);
        v4 += 48;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::BlendSpaceAxisDefinition>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 48 * v2;
      do
      {
        re::StringID::destroyString((v4 + 16));
        re::StringID::destroyString(v4);
        v4 += 48;
        v5 -= 48;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

float re::AnimationBlendTreeInstance<float>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_55:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v44 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v6;
    v59 = 2048;
    v60 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<float>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v49, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v50;
    if (v50 > v6)
    {
      v6 = *(v51 + 8 * v6);
      if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              v29 = v25[16] != 1 || *v25 == 2;
              if (!v29 || (*v4 = *v27, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v61.n128_u64[0] = v4;
              v61.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v49 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v48 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 476;
          v57 = 2048;
          v58 = v6;
          v59 = 2048;
          v60 = v48;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v46 = v19;
        v47 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 476;
        v57 = 2048;
        v58 = v47;
        v59 = 2048;
        v60 = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v49 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v45 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v6;
      v59 = 2048;
      v60 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_57:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v30 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v61.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v61.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  }

LABEL_37:
  v8 = v11 + v8;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v8;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if ((v32 & 1) == 0)
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
LABEL_44:
    if (v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v37 = 0;
  v38 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v39 = *(a1 + 400);
  v38 = *(*(a1 + 416) + 8 * v39 - 8);
  *(a1 + 400) = v39 - 1;
  ++*(a1 + 408);
LABEL_46:
  v40 = *v36;
  if (*(v10 + 7))
  {
    v41 = v40 + *v33;
  }

  else
  {
    v41 = ((v11 / v8) * *v33) + (v40 * (1.0 - (v11 / v8)));
  }

  *v38 = v41;
  v61.n128_u64[0] = v38;
  v61.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  if (v37)
  {
    v42 = *(a1 + 400);
    if (v42 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v42 + 1);
      v42 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v42) = v37;
    *(a1 + 400) = v42 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

void *re::DynamicArray<float *>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<float *>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<float *>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<float *>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<float *>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::FixedArray<re::BindPoint>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a2 + 48 * a3;
}

uint64_t re::Slice<re::AnimationClock>::range(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. fromInclusive = %zu, size = %zu", "fromInclusive <= size()", "range", 248, a2, v3);
    _os_crash();
    __break(1u);
  }

  else if (v3 >= a3)
  {
    return *a1 + 72 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. toExclusive = %zu, size = %zu", "toExclusive <= size()", "range", 249, a2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

__n128 re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = *a2;
  *(*(a1 + 32) + 16 * v5) = *a2;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t *re::FixedArray<unsigned long>::FixedArray(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<unsigned long>::init<>(a1, v4, *(a2 + 8));
    re::FixedArray<unsigned long>::copy(a1, a2);
  }

  return a1;
}

void re::FixedArray<unsigned long>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 61)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 8 * a3;
  v6 = (*(*a2 + 32))(a2, 8 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 8);
    v8 = (v8 + v5 - 8);
  }

  *v8 = 0;
}

void *re::FixedArray<unsigned long>::copy(void *result, uint64_t a2)
{
  v4 = result[1];
  if (v4 == *(a2 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      v6 = result[2];

      return memmove(v6, v5, 8 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

float *re::AnimationBlendTreeRigContext<float>::setRigDataValue<float>(uint64_t a1, unint64_t a2, float a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<float>(*(a1 + 248) + 288 * a2, a2);
    *result = a3;
  }

  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<unsigned int>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 248) > v5)
    {
      v6 = *(v7 + 256);
      return v6 + 4 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 32) > v5)
    {
      v6 = *(v4 + 40);
      return v6 + 4 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Vector2<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 368) > v5)
    {
      v6 = *(v7 + 376);
      return v6 + 8 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 152) > v5)
    {
      v6 = *(v4 + 160);
      return v6 + 8 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 296) > v5)
    {
      v6 = *(v7 + 304);
      return v6 + 48 * v5;
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 80) > v5)
    {
      v6 = *(v4 + 88);
      return v6 + 48 * v5;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 == 4)
  {
    v7 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v7 + 320) > v5)
    {
      v6 = *(v7 + 328);
      return v6 + (v5 << 6);
    }

LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 == 3)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 176);
    if (*(v4 + 104) > v5)
    {
      v6 = *(v4 + 112);
      return v6 + (v5 << 6);
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  if (v2 == 1)
  {
    return a1 + 112;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unexpected runtime value type: %u", "!Unreachable code", "getRuntimeValue", 259, *(a1 + 96));
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::EvaluationContextSlices::init(re::EvaluationContextSlices *this, re::EvaluationContext *a2)
{
  re::SliceRegisterTable::operator=<re::FixedRegisterTable>(this, a2);
  v4 = *(a2 + 25);
  *(this + 16) = *(a2 + 26);
  *(this + 17) = v4;
  result = re::SliceRegisterTable::operator=<re::FixedRegisterTable>(this + 18, a2 + 27);
  v6 = *(a2 + 52);
  *(this + 34) = *(a2 + 53);
  *(this + 35) = v6;
  return result;
}

void *re::SliceRegisterTable::operator=<re::FixedRegisterTable>(void *result, void *a2)
{
  v2 = a2[1];
  *result = a2[2];
  result[1] = v2;
  v3 = a2[4];
  result[2] = a2[5];
  result[3] = v3;
  v4 = a2[7];
  result[4] = a2[8];
  result[5] = v4;
  v5 = a2[10];
  result[6] = a2[11];
  result[7] = v5;
  v6 = a2[13];
  result[8] = a2[14];
  result[9] = v6;
  v7 = a2[16];
  result[10] = a2[17];
  result[11] = v7;
  v8 = a2[19];
  result[12] = a2[20];
  result[13] = v8;
  v9 = a2[22];
  result[14] = a2[23];
  result[15] = v9;
  return result;
}

void re::AnimationBlendTreeInstance<float>::initBindPoints<float>(uint64_t a1, uint64_t a2, uint64_t a3, re::BindNode **a4)
{
  v36 = *MEMORY[0x1E69E9840];
  re::FixedArray<re::BindPoint>::init<>(a1, a2, *(a3 + 16));
  if (*(a3 + 16))
  {
    v7 = 0;
    v8 = 0;
    v9 = 8;
    do
    {
      {
        re::introspect<float>(BOOL)::info = re::introspect_float(0, v20);
      }

      v10 = *(a3 + 16);
      if (v10 <= v8)
      {
        v21[0] = 0;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 797;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_17:
        v23[5] = 0;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        memset(buf, 0, sizeof(buf));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 468;
        v28 = 2048;
        v29 = v8;
        v30 = 2048;
        v31 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = strlen(*(*(a3 + 32) + v9));
      v21[0] = *(*(a3 + 32) + v9);
      v21[1] = v11;
      re::BindNode::bindPointWithOverride(a4, re::introspect<float>(BOOL)::info, v21, &v22);
      v10 = *(a1 + 8);
      if (v10 <= v8)
      {
        goto LABEL_17;
      }

      v12 = (*(a1 + 16) + v7);
      *v12 = v22;
      re::DynamicArray<re::RigDataValue>::operator=((v12 + 1), v23);
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(v23);
      v13 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(v23);
      v14 = re::animationLogObjects(v13);
      v15 = re::AnimationLogObjects::loggingEnabled(v14);
      if (v15)
      {
        v16 = *re::animationLogObjects(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(re::DynamicArray<re::StringID>::operator[](*(a3 + 16), *(a3 + 32), v8) + 8);
          v18 = re::FixedArray<re::BindPoint>::operator[](*(a1 + 8), *(a1 + 16), v8);
          v19 = "yes";
          if (!*(v18 + 24))
          {
            v19 = "no";
          }

          *buf = 134218498;
          *&buf[4] = v8;
          *&buf[12] = 2080;
          *&buf[14] = v17;
          *&buf[22] = 2080;
          *&buf[24] = v19;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "ANIM: %zu - %s - valid: %s\n", buf, 0x20u);
        }
      }

      ++v8;
      v9 += 16;
      v7 += 48;
    }

    while (v8 < *(a3 + 16));
  }
}

double re::EvaluationTree::EvaluationTree(re::EvaluationTree *this)
{
  v1 = 0;
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 58) = 0;
  *(this + 68) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 78) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 0;
  *(this + 108) = 0;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 118) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 128) = 0;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 138) = 0;
  *(this + 148) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 158) = 0;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  *(this + 188) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 198) = 0;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 208) = 0;
  *(this + 50) = 0u;
  *(this + 51) = 0u;
  *(this + 218) = 0;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 228) = 0;
  *(this + 55) = 0u;
  *(this + 56) = 0u;
  *(this + 238) = 0;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 258) = 0;
  *(this + 268) = 0;
  *(this + 66) = 0u;
  *(this + 65) = 0u;
  *(this + 278) = 0;
  *(this + 1080) = 0u;
  *(this + 1096) = 0u;
  *(this + 288) = 0;
  *(this + 71) = 0u;
  *(this + 70) = 0u;
  *(this + 298) = 0;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 308) = 0;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 318) = 0;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 1320) = 0u;
  *(this + 1336) = 0u;
  *(this + 338) = 0;
  *(this + 348) = 0;
  *(this + 86) = 0u;
  *(this + 85) = 0u;
  *(this + 358) = 0;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 368) = 0;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 378) = 0;
  *(this + 1480) = 0u;
  *(this + 1496) = 0u;
  *(this + 388) = 0;
  *(this + 96) = 0u;
  *(this + 95) = 0u;
  *(this + 398) = 0;
  *(this + 1560) = 0u;
  *(this + 1576) = 0u;
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 88) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 168) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 248) = 0;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 328) = 0;
  *(this + 81) = 0u;
  *(this + 80) = 0u;
  *(this + 202) = 0;
  *(this + 100) = 0u;
  *(this + 406) = 1;
  *(this + 414) = 0;
  *(this + 206) = 0;
  *(this + 102) = 0u;
  do
  {
    v2 = this + v1;
    *(v2 + 212) = 0;
    *(v2 + 208) = 0;
    *(v2 + 210) = 0;
    *(v2 + 209) = 0;
    v1 += 40;
    *(v2 + 422) = 0;
  }

  while (v1 != 320);
  *(this + 502) = 0;
  *(this + 250) = 0;
  result = 0.0;
  *(this + 124) = 0u;
  *(this + 257) = 0;
  *(this + 126) = 0u;
  *(this + 127) = 0u;
  *(this + 512) = 0;
  return result;
}

void *re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 24 * a2;
    v9 = a2;
    do
    {
      result = re::FixedArray<CoreIKTransform>::deinit((v3[4] + v8));
      ++v9;
      v8 += 24;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 24 * v4;
      do
      {
        v7 = (v3[4] + v6);
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        v6 += 24;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

re::RigDataValue *re::DynamicArray<re::RigDataValue>::add(uint64_t a1, const re::RigDataValue *a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicArray<re::RigDataValue>::growCapacity(a1, v4 + 1);
    v4 = *(a1 + 16);
  }

  result = re::RigDataValue::RigDataValue((*(a1 + 32) + 288 * v4), a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::RigGraphCompilation::operator=(void *a1, void *a2)
{
  re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator=(a1, a2);
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 7), (a2 + 7));
  re::DynamicArray<re::RigDataValue>::operator=((a1 + 12), (a2 + 12));
  return a1;
}

void *re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>@<X0>(re::EvaluationContextManager *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 2528) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext(this);
  }

  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 144) = 0u;
  re::SliceRegisterIdTable::operator=<re::DynamicRegisterIdTable>(a2, this + 1);
  v4 = *(this + 43);
  *(a2 + 128) = *(this + 45);
  *(a2 + 136) = v4;
  result = re::SliceRegisterIdTable::operator=<re::DynamicRegisterIdTable>((a2 + 144), this + 181);
  v6 = *(this + 223);
  *(a2 + 272) = *(this + 225);
  *(a2 + 280) = v6;
  return result;
}

uint64_t re::DynamicArray<re::StringID>::operator[](unint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          re::FixedArray<CoreIKTransform>::deinit(v8);
          v8 += 3;
          v11 += 3;
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

void *re::DynamicArray<re::RigDataValue>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RigDataValue>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RigDataValue>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::DynamicArray<re::EvaluationRegister>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::EvaluationRegister>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  result = *a2;
  v7 = *(a2 + 16);
  *v5 = *a2;
  v5[1] = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::EvaluationRegister>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationRegister>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationRegister>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::EvaluationRegister>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
            memcpy(v7, v5[4], 32 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationRegister>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<int>::add(void *this, _DWORD *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<float>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 4 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

__n128 re::DynamicArray<re::Vector3<float>>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Vector3<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 16 * v4) = *a2;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Vector3<float>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Quaternion<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Quaternion<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::DynamicArray<re::Matrix3x3<float>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Matrix3x3<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Matrix3x3<float>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Matrix3x3<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Matrix3x3<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 re::DynamicArray<re::Matrix4x4<float>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Matrix4x4<float>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  result = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v8;
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::Matrix4x4<float>>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Matrix4x4<float>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t *re::FixedArray<re::EvaluationInputHandle<re::GenericSRT<float>>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::operator=(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::swap(a1, a2);
  }

  return a1;
}

uint64_t re::DynamicArray<re::RigDataValue>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::BucketArray<std::unique_ptr<void,std::function<void ()(void *)>>,64ul>::swap(uint64_t a1, uint64_t a2)
{
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v6, a1);
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::operator=(a1, a2);
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::operator=(a2, v6);
  result = v6[0];
  if (v6[0] && (v7 & 1) == 0)
  {
    result = (*(*v6[0] + 40))();
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  ++*(a1 + 48);
  ++*(a2 + 48);
  return result;
}

uint64_t re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

uint64_t *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  *a2 = v2;
  a2[1] = v3;
  v5 = result[4];
  result[4] = a2[4];
  a2[4] = v5;
  *(a2 + 4) = a2[2] & 0xFFFFFFFE | result[2] & 1;
  *(result + 4) &= ~1u;
  v6 = result[3];
  result[3] = a2[3];
  a2[3] = v6;
  *(a2 + 4) += 2;
  *(result + 4) += 2;
  return result;
}

void *re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 2 || (v7 & 1) == 0))
    {
      if (a2 < 3)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::FixedArray<re::BindPoint>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x555555555555556)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 48 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 40) = 0;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 32) = 0;
      result += 48;
      --v6;
    }

    while (v6);
  }

  *(result + 40) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0;
  return result;
}

void re::AnimationBlendTreeInstance<double>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<double>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<double>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v3);
      v0 = &unk_1EE187000;
    }
  }

  return v0[41];
}

float re::AnimationImpl<double>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<double>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 136, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACC88;
  *(v2 + 112) = 0;
  return result;
}

BOOL re::AnimationImpl<double>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v5);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[41] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<double>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<double>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<double>::evaluateCore(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, __n128 a7)
{
  v83 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7.n128_f64[0]);
  }

  v15 = *(a1 + 80);
  if (v15[36])
  {
    v16 = 0;
    v17 = *(a1 + 400);
    do
    {
      if (v17 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v17 + 1);
        v17 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v17++) = &v57 + v16;
      *(a1 + 400) = v17;
      ++*(a1 + 408);
      v16 += 8;
    }

    while (v16 != 24);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    a7.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<double>::evaluateBlend(a1, 0, 0, a7);
    v18 = *(a1 + 360);
    if (v18)
    {
      v19 = *(*(a1 + 376) + 16 * v18 - 16);
      if (v19 != a6)
      {
        *a6 = *v19;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v20 = *(a1 + 440);
  v21 = *(a1 + 320);
  v51 = *(a1 + 312);
  v55[0] = a2;
  v55[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v52, (v15 + 44));
  v22 = v15[39];
  if (v22 != *(v20 + 56))
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v22; ++i)
    {
      *&v57 = 0;
      re::DynamicArray<double>::add((v20 + 40), &v57);
      v22 = v15[39];
    }
  }

  if (v22)
  {
    for (j = 0; j < v22; ++j)
    {
      v25 = v53;
      if (v53 <= j)
      {
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 476;
        v79 = 2048;
        v80 = j;
        v81 = 2048;
        v82 = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_76:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 476;
        v79 = 2048;
        v80 = v25;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 476;
        v79 = 2048;
        v80 = v7;
        v81 = 2048;
        v82 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_78:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 476;
        v79 = 2048;
        v80 = v25;
        v81 = 2048;
        v82 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 789;
        v79 = 2048;
        v80 = j;
        v81 = 2048;
        v82 = v25;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_80:
        re::internal::assertLog(6, v27, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
        _os_crash();
        __break(1u);
LABEL_81:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 789;
        v79 = 2048;
        v80 = j;
        v81 = 2048;
        v82 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 789;
        v79 = 2048;
        v80 = j;
        v81 = 2048;
        v82 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_83:
        re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, j, v35);
        _os_crash();
        __break(1u);
LABEL_84:
        v56 = 0;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v75 = 136315906;
        v76 = "operator[]";
        v77 = 1024;
        v78 = 789;
        v79 = 2048;
        v80 = j;
        v81 = 2048;
        v82 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v25 = *(v54 + 8 * j);
      v8 = v15[42];
      if (v8 <= v25)
      {
        goto LABEL_76;
      }

      v7 = v25 + 1;
      if (v8 <= v25 + 1)
      {
        goto LABEL_77;
      }

      if (v22 <= v25)
      {
        goto LABEL_78;
      }

      v22 = *(v15[40] + 8 * v25);
      v26 = re::Slice<re::AnimationClock>::range(v55, *(v15[43] + 8 * v25), *(v15[43] + 8 * v7));
      v25 = *(v20 + 56);
      if (v25 <= j)
      {
        goto LABEL_79;
      }

      v28 = v27;
      if (!v27)
      {
        goto LABEL_80;
      }

      v29 = (*(v20 + 72) + 8 * j);
      v30 = v26[16] != 1 || *v26 == 2;
      if (!v30 || (*v29 = *a4, v22[2] == 49))
      {
        (*(*v22 + 120))(v22, v26, v27, a4, a5, v29);
      }

      v22 = *(v20 + 16);
      if (v22 <= j)
      {
        goto LABEL_81;
      }

      v22 = *(v20 + 56);
      if (v22 <= j)
      {
        goto LABEL_82;
      }

      v22 = v15[39];
    }
  }

LABEL_34:
  if (v51)
  {
    v31 = 0;
    v32 = 0;
    j = 0;
    do
    {
      if (!*(v21 + 3) || !re::BindPoint::isAlive(v21))
      {
        goto LABEL_68;
      }

      v33 = re::BindPoint::valueUntyped(v21);
      v35 = *(v20 + 232);
      if (v35 <= j)
      {
        goto LABEL_83;
      }

      v36 = v33;
      v37 = *(v20 + 248);
      v22 = (v37 + v31);
      v38 = *(v37 + v31 + 32);
      if (v38 > 5)
      {
        if (*(v37 + v31 + 32) <= 7u)
        {
          if (v38 != 6)
          {
            if (v38 == 7)
            {
              *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v37 + v31, v34) = *v33;
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v37 + v31, v34);
        }

        else
        {
          if (v38 != 8)
          {
            if (v38 == 10)
            {
              v22 = *(v20 + 96);
              if (v22 <= j)
              {
                goto LABEL_84;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v20 + 112) + v32), v33);
            }

            else if (v38 == 13 && *(v37 + v31 + 40) >> 1 == 82389)
            {
              v43 = *(v37 + v31 + 48);
              if (v43 == "SRT" || !strcmp(v43, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(v22, v36);
              }
            }

            goto LABEL_68;
          }

          v46 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v37 + v31, v34);
        }

        *v46 = *v36;
      }

      else
      {
        if (*(v37 + v31 + 32) > 2u)
        {
          switch(v38)
          {
            case 3u:
              v47 = *v33;
              *re::RigDataValue::getRuntimeValue<float>(v37 + v31, v34) = v47;
              break;
            case 4u:
              v48 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v37 + v31, v34);
              v50 = *(v36 + 1);
              v49 = *(v36 + 2);
              *v48 = *v36;
              v48[1] = v50;
              v48[2] = v49;
              break;
            case 5u:
              v39 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v37 + v31, v34);
              v40 = *(v36 + 3);
              v42 = *v36;
              v41 = *(v36 + 1);
              v39[2] = *(v36 + 2);
              v39[3] = v40;
              *v39 = v42;
              v39[1] = v41;
              break;
          }

          goto LABEL_68;
        }

        if (v38 == 1)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v37 + v31, v34);
          goto LABEL_60;
        }

        if (v38 == 2)
        {
          v44 = *v33;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v37 + v31, v34);
LABEL_60:
          *Runtime = v44;
        }
      }

LABEL_68:
      ++j;
      v32 += 24;
      v31 += 288;
      v21 = (v21 + 48);
    }

    while (v51 != j);
  }

  if ((*(v20 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v20 + 2360));
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  re::EvaluationContextSlices::init(&v57, (v20 + 4896));
  (*(*(v20 + 5600) + 16))(v20 + 5600, &v57);
  if (v52 && v53)
  {
    (*(*v52 + 40))();
  }
}

void re::AnimationImpl<double>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<double>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD428;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<double>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_55:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v44 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v6;
    v59 = 2048;
    v60 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<double>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v49, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v50;
    if (v50 > v6)
    {
      v6 = *(v51 + 8 * v6);
      if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              v29 = v25[16] != 1 || *v25 == 2;
              if (!v29 || (*v4 = *v27, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v61.n128_u64[0] = v4;
              v61.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v49 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v48 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 476;
          v57 = 2048;
          v58 = v6;
          v59 = 2048;
          v60 = v48;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v46 = v19;
        v47 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 476;
        v57 = 2048;
        v58 = v47;
        v59 = 2048;
        v60 = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v49 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v45 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v6;
      v59 = 2048;
      v60 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_57:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v30 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v61.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v61.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  }

LABEL_37:
  v8 = v11 + v8;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v8;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if ((v32 & 1) == 0)
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
LABEL_44:
    if (v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v37 = 0;
  v38 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v39 = *(a1 + 400);
  v38 = *(*(a1 + 416) + 8 * v39 - 8);
  *(a1 + 400) = v39 - 1;
  ++*(a1 + 408);
LABEL_46:
  v40 = *v36;
  if (*(v10 + 7))
  {
    v41 = v40 + *v33;
  }

  else
  {
    v41 = *v33 * (v11 / v8) + v40 * (1.0 - (v11 / v8));
  }

  *v38 = v41;
  v61.n128_u64[0] = v38;
  v61.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  if (v37)
  {
    v42 = *(a1 + 400);
    if (v42 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v42 + 1);
      v42 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v42) = v37;
    *(a1 + 400) = v42 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

double re::DynamicArray<double>::add(_anonymous_namespace_ *this, double *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<float *>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = *a2;
  *(*(this + 4) + 8 * v4) = *a2;
  *(this + 2) = v4 + 1;
  ++*(this + 6);
  return result;
}

void re::AnimationBlendTreeInstance<re::Vector2<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Vector2<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Vector2<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[48];
}

float re::AnimationImpl<re::Vector2<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::Vector2<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 136, 8);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACCE0;
  *(v2 + 112) = 0;
  *(v2 + 128) = 0;
  return result;
}

BOOL re::AnimationImpl<re::Vector2<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[48] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Vector2<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::Vector2<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, void *a6, __n128 a7)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7.n128_f64[0]);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v58 = 0uLL;
    *&v59 = 0;
    v16 = *(a1 + 400);
    do
    {
      if (v16 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v16 + 1);
        v16 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v16++) = &v58 + v15;
      *(a1 + 400) = v16;
      ++*(a1 + 408);
      v15 += 8;
    }

    while (v15 != 24);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    a7.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateBlend(a1, 0, 0, a7);
    v17 = *(a1 + 360);
    if (v17)
    {
      v18 = *(*(a1 + 376) + 16 * v17 - 16);
      if (v18 != a6)
      {
        *a6 = *v18;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v51 = a6;
  v19 = *(a1 + 440);
  v20 = *(a1 + 320);
  v52 = *(a1 + 312);
  v56[0] = a2;
  v56[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v53, (v14 + 44));
  v21 = v14[39];
  if (v21 != *(v19 + 56))
  {
    if (!v21)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v21; ++i)
    {
      *&v58 = 0;
      re::DynamicArray<unsigned long>::add((v19 + 40), &v58);
      v21 = v14[39];
    }
  }

  if (v21)
  {
    a3 = 0;
    while (1)
    {
      v23 = v54;
      if (v54 <= a3)
      {
        break;
      }

      v23 = *(v55 + 8 * a3);
      v24 = v14[42];
      if (v24 <= v23)
      {
        goto LABEL_77;
      }

      v7 = v23 + 1;
      if (v24 <= v23 + 1)
      {
        goto LABEL_78;
      }

      if (v21 <= v23)
      {
        goto LABEL_79;
      }

      v21 = *(v14[40] + 8 * v23);
      v25 = re::Slice<re::AnimationClock>::range(v56, *(v14[43] + 8 * v23), *(v14[43] + 8 * v7));
      v23 = *(v19 + 56);
      if (v23 <= a3)
      {
        goto LABEL_80;
      }

      v27 = v26;
      if (!v26)
      {
        goto LABEL_81;
      }

      v28 = (*(v19 + 72) + 8 * a3);
      v29 = v25[16] != 1 || *v25 == 2;
      if (!v29 || (*v28 = *a4, v21[2] == 49))
      {
        (*(*v21 + 120))(v21, v25, v26, a4, a5, v28);
      }

      v21 = *(v19 + 16);
      if (v21 <= a3)
      {
        goto LABEL_82;
      }

      v21 = *(v19 + 56);
      if (v21 <= a3)
      {
        goto LABEL_83;
      }

      re::AnimationBlendTreeRigContext<re::Vector2<float>>::setRigDataValue<re::Vector2<float>>(v19, *(*(v19 + 32) + 8 * a3), (*(v19 + 72) + 8 * a3));
      ++a3;
      v21 = v14[39];
      if (a3 >= v21)
      {
        goto LABEL_34;
      }
    }

    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 476;
    v80 = 2048;
    v81 = a3;
    v82 = 2048;
    v83 = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 476;
    v80 = 2048;
    v81 = v23;
    v82 = 2048;
    v83 = v24;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 476;
    v80 = 2048;
    v81 = v7;
    v82 = 2048;
    v83 = v24;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 476;
    v80 = 2048;
    v81 = v23;
    v82 = 2048;
    v83 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 789;
    v80 = 2048;
    v81 = a3;
    v82 = 2048;
    v83 = v23;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_81:
    re::internal::assertLog(6, v26, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_82:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 789;
    v80 = 2048;
    v81 = a3;
    v82 = 2048;
    v83 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 789;
    v80 = 2048;
    v81 = a3;
    v82 = 2048;
    v83 = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_84:
    re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a5, v34);
    _os_crash();
    __break(1u);
LABEL_85:
    re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
LABEL_86:
    v57 = 0;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v76 = 136315906;
    v77 = "operator[]";
    v78 = 1024;
    v79 = 789;
    v80 = 2048;
    v81 = a5;
    v82 = 2048;
    v83 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v52)
  {
    v30 = 0;
    v31 = 0;
    a5 = 0;
    do
    {
      if (!*(v20 + 3) || !re::BindPoint::isAlive(v20))
      {
        goto LABEL_68;
      }

      v32 = re::BindPoint::valueUntyped(v20);
      v34 = *(v19 + 232);
      if (v34 <= a5)
      {
        goto LABEL_84;
      }

      v35 = v32;
      v36 = *(v19 + 248);
      a3 = v36 + v30;
      v37 = *(v36 + v30 + 32);
      if (v37 > 5)
      {
        if (*(v36 + v30 + 32) <= 7u)
        {
          if (v37 != 6)
          {
            if (v37 == 7)
            {
              re::AnimationBlendTreeRigContext<re::Vector2<float>>::setRigDataValue<re::Vector2<float>>(v19, a5, v32);
            }

            goto LABEL_68;
          }

          v45 = re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v36 + v30, v33);
        }

        else
        {
          if (v37 != 8)
          {
            if (v37 == 10)
            {
              a3 = *(v19 + 96);
              if (a3 <= a5)
              {
                goto LABEL_86;
              }

              re::EvaluationSkeletalPoseInputHandle::set((*(v19 + 112) + v31), v32);
            }

            else if (v37 == 13 && *(v36 + v30 + 40) >> 1 == 82389)
            {
              v42 = *(v36 + v30 + 48);
              if (v42 == "SRT" || !strcmp(v42, "SRT"))
              {
                re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v35);
              }
            }

            goto LABEL_68;
          }

          v45 = re::RigDataValue::getRuntimeValue<re::Vector3<float>>(v36 + v30, v33);
        }

        *v45 = *v35;
      }

      else
      {
        if (*(v36 + v30 + 32) > 2u)
        {
          switch(v37)
          {
            case 3u:
              v46 = *v32;
              *re::RigDataValue::getRuntimeValue<float>(v36 + v30, v33) = v46;
              break;
            case 4u:
              v47 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v36 + v30, v33);
              v49 = v35[1];
              v48 = v35[2];
              *v47 = *v35;
              v47[1] = v49;
              v47[2] = v48;
              break;
            case 5u:
              v38 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v36 + v30, v33);
              v39 = v35[3];
              v41 = *v35;
              v40 = v35[1];
              v38[2] = v35[2];
              v38[3] = v39;
              *v38 = v41;
              v38[1] = v40;
              break;
          }

          goto LABEL_68;
        }

        if (v37 == 1)
        {
          v43 = *v32;
          Runtime = re::RigDataValue::getRuntimeValue<int>(v36 + v30, v33);
          goto LABEL_60;
        }

        if (v37 == 2)
        {
          v43 = *v32;
          Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v36 + v30, v33);
LABEL_60:
          *Runtime = v43;
        }
      }

LABEL_68:
      ++a5;
      v31 += 24;
      v30 += 288;
      v20 = (v20 + 48);
    }

    while (v52 != a5);
  }

  if ((*(v19 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v19 + 2360));
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  re::EvaluationContextSlices::init(&v58, (v19 + 4896));
  (*(*(v19 + 5600) + 16))(v19 + 5600, &v58);
  if (!*(v19 + 272))
  {
    goto LABEL_85;
  }

  *v51 = *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*(v19 + 288), v50);
  if (v53 && v54)
  {
    (*(*v53 + 40))();
  }
}

void re::AnimationImpl<re::Vector2<float>>::evaluateCore(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) At least one overloaded version of evaluteCore must be overridden.", "!Unreachable code", "evaluateCore", 91);
  _os_crash();
  __break(1u);
}

uint64_t re::AnimationBlendTreeInstance<re::Vector2<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  *a1 = &unk_1F5CAD508;
  v2 = *(a1 + 440);
  if (v2)
  {
    v3 = *(a1 + 448);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 798);
    re::EvaluationModelSingleThread::~EvaluationModelSingleThread((v2 + 700));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 683));
    re::BindNode::deinit((v2 + 674));
    re::BucketArray<re::RigEnvironment::RigEnvironmentScope,8ul>::deinit((v2 + 666));
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v2 + 666));
    re::EvaluationContextManager::~EvaluationContextManager((v2 + 295));
    re::EvaluationTree::~EvaluationTree((v2 + 37));
    re::RigGraphCompilation::~RigGraphCompilation((v2 + 20));
    re::DynamicArray<re::RigDataValue>::deinit((v2 + 15));
    re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::deinit((v2 + 10));
    re::DynamicArray<unsigned long>::deinit((v2 + 5));
    re::DynamicArray<unsigned long>::deinit(v2);
    (*(*v3 + 40))(v3, v2);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    if (*(a1 + 416))
    {
      (*(*v4 + 40))(v4);
    }

    *(a1 + 416) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
    ++*(a1 + 408);
  }

  v5 = *(a1 + 344);
  if (v5)
  {
    if (*(a1 + 376))
    {
      (*(*v5 + 40))(v5);
    }

    *(a1 + 376) = 0;
    *(a1 + 352) = 0;
    *(a1 + 360) = 0;
    *(a1 + 344) = 0;
    ++*(a1 + 368);
  }

  re::FixedArray<re::BindPoint>::deinit((a1 + 304));
  re::FixedArray<re::BindPoint>::deinit((a1 + 280));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 256));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 232));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 208));
  re::FixedArray<re::BindPoint>::deinit((a1 + 184));
  re::FixedArray<re::BlendSpaceAxisDefinition>::deinit((a1 + 160));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 136));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 112));
  *a1 = &unk_1F5CAD3A8;
  re::DynamicString::deinit((a1 + 40));
  re::StringID::destroyString((a1 + 24));
  return a1;
}

float re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateBlend(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = a2;
  v66 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 80);
  v6 = *(v5 + 288);
  if (v6 <= a2)
  {
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_55;
  }

  v8 = a4.n128_f32[0];
  v10 = *(v5 + 296) + 8 * a2;
  v11 = *v10;
  if (a2 && *(a1 + 96))
  {
    v4 = a2 - 1;
    v6 = *(a1 + 264);
    if (v6 > a2 - 1)
    {
      v12 = (*(a1 + 272) + 4 * v4);
LABEL_6:
      v11 = *v12;
      goto LABEL_11;
    }

LABEL_55:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v52 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v44 = v17;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 476;
    v57 = 2048;
    v58 = v6;
    v59 = 2048;
    v60 = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

  if (*(a1 + 288) > a2)
  {
    v13 = (*(a1 + 296) + 48 * a2);
    if (*(v13 + 3))
    {
      if (re::BindPoint::isAlive(v13))
      {
        v12 = re::BindPoint::valueUntyped(v13);
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  if (v11 <= 0.001)
  {
    return v8;
  }

  if (*(v10 + 6))
  {
    v14 = 0;
    v15 = *(a1 + 360);
    a4.n128_u64[0] = 0;
    do
    {
      re::AnimationBlendTreeInstance<re::Vector2<float>>::evaluateBlend(a1, v14 + *(v10 + 4), v15, a4);
      ++v14;
    }

    while (v14 < *(v10 + 6));
    goto LABEL_37;
  }

  if ((*(v10 + 7) & 2) == 0)
  {
    v16 = *(a1 + 400);
    v4 = *(*(a1 + 416) + 8 * v16 - 8);
    *(a1 + 400) = v16 - 1;
    ++*(a1 + 408);
    re::FixedArray<unsigned long>::FixedArray(&v49, *(a1 + 80) + 352);
    v6 = *(v10 + 4);
    v17 = v50;
    if (v50 > v6)
    {
      v6 = *(v51 + 8 * v6);
      if (v49)
      {
        (*(*v49 + 40))(v49);
      }

      v18 = *(a1 + 80);
      v19 = v18[42];
      if (v19 > v6)
      {
        v20 = v6 + 1;
        if (v19 > v6 + 1)
        {
          v21 = v18[39];
          if (v21 > v6)
          {
            v22 = v18[43];
            v23 = *(v22 + 8 * v6);
            v24 = *(v18[40] + 8 * v6);
            v25 = re::Slice<re::AnimationClock>::range((a1 + 328), v23, *(v22 + 8 * v20));
            if (v26)
            {
              v27 = *(a1 + 424);
              v28 = *(a1 + 432);
              v29 = v25[16] != 1 || *v25 == 2;
              if (!v29 || (*v4 = *v27, v24[2] == 49))
              {
                (*(*v24 + 120))(v24, v25, v26, v27, v28, v4);
              }

              v61.n128_u64[0] = v4;
              v61.n128_u32[2] = 0;
              goto LABEL_36;
            }

LABEL_61:
            re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
            _os_crash();
            __break(1u);
          }

LABEL_60:
          v49 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v48 = v21;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = 136315906;
          v54 = "operator[]";
          v55 = 1024;
          v56 = 476;
          v57 = 2048;
          v58 = v6;
          v59 = 2048;
          v60 = v48;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_61;
        }

LABEL_59:
        v49 = 0;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        v46 = v19;
        v47 = v20;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v53 = 136315906;
        v54 = "operator[]";
        v55 = 1024;
        v56 = 476;
        v57 = 2048;
        v58 = v47;
        v59 = 2048;
        v60 = v46;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_60;
      }

LABEL_58:
      v49 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
      v45 = v19;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v53 = 136315906;
      v54 = "operator[]";
      v55 = 1024;
      v56 = 476;
      v57 = 2048;
      v58 = v6;
      v59 = 2048;
      v60 = v45;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v4 = *(v10 + 4);
  v6 = *(a1 + 312);
  if (v6 <= v4)
  {
LABEL_57:
    v49 = 0;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v53 = 136315906;
    v54 = "operator[]";
    v55 = 1024;
    v56 = 468;
    v57 = 2048;
    v58 = v4;
    v59 = 2048;
    v60 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  v30 = (*(a1 + 320) + 48 * *(v10 + 4));
  if (*(v30 + 3) && re::BindPoint::isAlive(v30))
  {
    v61.n128_u64[0] = re::BindPoint::valueUntyped(v30);
    v61.n128_u32[2] = 1;
LABEL_36:
    re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  }

LABEL_37:
  v8 = v11 + v8;
  v31 = *(a1 + 360);
  if (v31 != a3 + 2)
  {
    return v8;
  }

  v32 = *(a1 + 376) + 16 * v31;
  v33 = *(v32 - 16);
  v34 = *(v32 - 8);
  v35 = *(a1 + 368);
  v36 = *(v32 - 32);
  LODWORD(v32) = *(v32 - 24);
  *(a1 + 360) = v31 - 2;
  *(a1 + 368) = v35 + 2;
  if ((v32 & 1) == 0)
  {
    if (v34)
    {
      v37 = 0;
    }

    else
    {
      v37 = v33;
    }

    v38 = v36;
LABEL_44:
    if (v38)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v37 = 0;
  v38 = v33;
  if ((v34 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_45:
  v39 = *(a1 + 400);
  v38 = *(*(a1 + 416) + 8 * v39 - 8);
  *(a1 + 400) = v39 - 1;
  ++*(a1 + 408);
LABEL_46:
  v40 = *v36;
  if (*(v10 + 7))
  {
    v41 = *v33;
  }

  else
  {
    v40 = vmul_n_f32(v40, 1.0 - (v11 / v8));
    v41 = vmul_n_f32(*v33, v11 / v8);
  }

  *v38 = vadd_f32(v40, v41);
  v61.n128_u64[0] = v38;
  v61.n128_u32[2] = 0;
  re::DynamicArray<re::Pair<float *,re::AnimationBlendTreeInstance<float>::SampleFlags,true>>::add(a1 + 344, &v61);
  if (v37)
  {
    v42 = *(a1 + 400);
    if (v42 >= *(a1 + 392))
    {
      re::DynamicArray<float *>::growCapacity((a1 + 384), v42 + 1);
      v42 = *(a1 + 400);
    }

    *(*(a1 + 416) + 8 * v42) = v37;
    *(a1 + 400) = v42 + 1;
    ++*(a1 + 408);
  }

  return v8;
}

void *re::AnimationBlendTreeRigContext<re::Vector2<float>>::setRigDataValue<re::Vector2<float>>(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 232);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = re::RigDataValue::getRuntimeValue<re::Vector2<float>>(*(a1 + 248) + 288 * a2, a2);
    *result = *a3;
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector3<float>>::~AnimationBlendTreeInstance(uint64_t a1)
{
  re::AnimationBlendTreeInstance<re::Vector3<float>>::~AnimationBlendTreeInstance(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Animation<re::Vector3<float>>::animationValueType()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[47];
}

float re::AnimationImpl<re::Vector3<float>>::timelineDesc@<S0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 40))(a1);
  *a2 = 0;
  result = v4;
  *(a2 + 4) = result;
  *(a2 + 8) = 1065353216;
  *(a2 + 16) = result;
  *(a2 + 20) = 0;
  *(a2 + 24) = 0;
  *(a2 + 25) = a1[16];
  return result;
}

double re::AnimationImpl<re::Vector3<float>>::makeCompositionChain(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 32))(a2, 160, 16);
  result = 0.0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *v2 = &unk_1F5CACD38;
  *(v2 + 112) = 0;
  *(v2 + 144) = 0u;
  return result;
}

BOOL re::AnimationImpl<re::Vector3<float>>::isValidBindPoint(int a1, re::BindPoint *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v2 = &unk_1EE187000;
  {
    v5 = this;
    v2 = &unk_1EE187000;
    this = v5;
    if (v4)
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
      v2 = &unk_1EE187000;
      this = v5;
    }
  }

  return v2[47] == *this && re::BindPoint::valueUntyped(this) != 0;
}

void re::Animation<re::Vector3<float>>::debugLogData(re *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = re::animationLogObjects(a1);
  if (re::AnimationLogObjects::loggingEnabled(v4))
  {
    re::DynamicString::DynamicString(v11, a2);
    re::Timeline::debugLogData(a1, v11);
    v5 = *&v11[0];
    if (*&v11[0])
    {
      if (BYTE8(v11[0]))
      {
        v5 = (*(**&v11[0] + 40))();
      }

      memset(v11, 0, sizeof(v11));
    }

    v6 = re::animationLogObjects(v5);
    v7 = re::AnimationLogObjects::loggingEnabled(v6);
    if (v7)
    {
      v8 = *re::animationLogObjects(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 8))
        {
          v9 = *(a2 + 16);
        }

        else
        {
          v9 = a2 + 9;
        }

        v10 = "false";
        if (*(a1 + 72))
        {
          v10 = "true";
        }

        *buf = 136315394;
        v13 = v9;
        v14 = 2080;
        v15 = v10;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ANIM: %sisAdditive: %s\n", buf, 0x16u);
      }
    }
  }
}

_DWORD *re::AnimationImpl<re::Vector3<float>>::evaluate(_DWORD *result, _BYTE *a2, uint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6)
{
  if (a3)
  {
    v8 = a2[16] != 1 || *a2 == 2;
    if (!v8 || (*a6 = *a4, result[2] == 49))
    {
      v9 = *(*result + 120);

      return v9();
    }
  }

  else
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0, v6, v7);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateCore(uint64_t a1, uint64_t a2, unint64_t a3, _OWORD *a4, uint64_t a5, _OWORD *a6, double a7)
{
  v86 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96))
  {
    re::BlendSpace::computeWeights((a1 + 88), a7);
  }

  v14 = *(a1 + 80);
  if (v14[36])
  {
    v15 = 0;
    v16.n128_u64[1] = 0;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v17 = *(a1 + 400);
    do
    {
      if (v17 >= *(a1 + 392))
      {
        re::DynamicArray<float *>::growCapacity((a1 + 384), v17 + 1);
        v17 = *(a1 + 400);
      }

      *(*(a1 + 416) + 8 * v17++) = &v60 + v15;
      *(a1 + 400) = v17;
      ++*(a1 + 408);
      v15 += 16;
    }

    while (v15 != 48);
    *(a1 + 328) = a2;
    *(a1 + 336) = a3;
    *(a1 + 424) = a4;
    *(a1 + 432) = a5;
    v16.n128_u64[0] = 0;
    re::AnimationBlendTreeInstance<re::Vector3<float>>::evaluateBlend(a1, 0, 0, v16);
    v18 = *(a1 + 360);
    if (v18)
    {
      v19 = *(*(a1 + 376) + 16 * v18 - 16);
      if (v19 != a6)
      {
        *a6 = *v19;
      }
    }

    *(a1 + 400) = 0;
    ++*(a1 + 408);
    *(a1 + 360) = 0;
    ++*(a1 + 368);
    return;
  }

  v52 = a6;
  v20 = *(a1 + 440);
  v21 = *(a1 + 320);
  v54 = *(a1 + 312);
  v58[0] = a2;
  v58[1] = a3;
  re::FixedArray<unsigned long>::FixedArray(&v55, (v14 + 44));
  v22 = v14[39];
  if (v22 != *(v20 + 56))
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    for (i = 0; i < v22; ++i)
    {
      v60 = 0u;
      re::DynamicArray<re::Vector3<float>>::add((v20 + 40), &v60);
      v22 = v14[39];
    }
  }

  if (v22)
  {
    v24 = 0;
    a3 = 0;
    while (1)
    {
      v7 = v56;
      if (v56 <= a3)
      {
        break;
      }

      v25 = *(v57 + 8 * a3);
      v8 = v14[42];
      if (v8 <= v25)
      {
        goto LABEL_76;
      }

      v7 = v25 + 1;
      if (v8 <= v25 + 1)
      {
        goto LABEL_77;
      }

      if (v22 <= v25)
      {
        goto LABEL_78;
      }

      v26 = *(v14[40] + 8 * v25);
      v27 = re::Slice<re::AnimationClock>::range(v58, *(v14[43] + 8 * v25), *(v14[43] + 8 * v7));
      v7 = *(v20 + 56);
      if (v7 <= a3)
      {
        goto LABEL_79;
      }

      v29 = v28;
      if (!v28)
      {
        goto LABEL_80;
      }

      v30 = *(v20 + 72);
      v31 = v27[16] != 1 || *v27 == 2;
      if (!v31 || (*(v30 + v24) = *a4, v26[2] == 49))
      {
        (*(*v26 + 120))(v26, v27, v28, a4, a5, v30 + v24);
      }

      v7 = *(v20 + 16);
      if (v7 <= a3)
      {
        goto LABEL_81;
      }

      v7 = *(v20 + 56);
      if (v7 <= a3)
      {
        goto LABEL_82;
      }

      re::AnimationBlendTreeRigContext<re::Vector3<float>>::setRigDataValue<re::Vector3<float>>(v20, *(*(v20 + 32) + 8 * a3++), (*(v20 + 72) + v24));
      v22 = v14[39];
      v24 += 16;
      if (a3 >= v22)
      {
        goto LABEL_34;
      }
    }

    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_76:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = v25;
    v84 = 2048;
    v85 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_77:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v25 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = v7;
    v84 = 2048;
    v85 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_78:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 476;
    v82 = 2048;
    v83 = v25;
    v84 = 2048;
    v85 = v22;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_79:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_80:
    re::internal::assertLog(6, v28, v29, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
    _os_crash();
    __break(1u);
LABEL_81:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = a3;
    v84 = 2048;
    v85 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v36);
    _os_crash();
    __break(1u);
LABEL_84:
    re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
LABEL_85:
    v59 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v78 = 136315906;
    v79 = "operator[]";
    v80 = 1024;
    v81 = 789;
    v82 = 2048;
    v83 = v7;
    v84 = 2048;
    v85 = a3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_34:
  if (v54)
  {
    v32 = 0;
    v33 = 0;
    v7 = 0;
    while (1)
    {
      if (!*(v21 + 3) || !re::BindPoint::isAlive(v21))
      {
        goto LABEL_67;
      }

      v34 = re::BindPoint::valueUntyped(v21);
      v36 = *(v20 + 232);
      if (v36 <= v7)
      {
        goto LABEL_83;
      }

      v37 = v34;
      v38 = *(v20 + 248);
      a3 = v38 + v32;
      v39 = *(v38 + v32 + 32);
      if (v39 > 5)
      {
        if (*(v38 + v32 + 32) <= 7u)
        {
          if (v39 == 6)
          {
            *re::RigDataValue::getRuntimeValue<re::Quaternion<float>>(v38 + v32, v35) = *v34;
          }

          else if (v39 == 7)
          {
            *re::RigDataValue::getRuntimeValue<re::Vector2<float>>(v38 + v32, v35) = *v34;
          }
        }

        else if (v39 == 8)
        {
          re::AnimationBlendTreeRigContext<re::Vector3<float>>::setRigDataValue<re::Vector3<float>>(v20, v7, v34);
        }

        else if (v39 == 10)
        {
          a3 = *(v20 + 96);
          if (a3 <= v7)
          {
            goto LABEL_85;
          }

          re::EvaluationSkeletalPoseInputHandle::set((*(v20 + 112) + v33), v34);
        }

        else if (v39 == 13 && *(v38 + v32 + 40) >> 1 == 82389)
        {
          v44 = *(v38 + v32 + 48);
          if (v44 == "SRT" || !strcmp(v44, "SRT"))
          {
            re::RigDataValue::setRuntimeValue<re::GenericSRT<float>>(a3, v37);
          }
        }

        goto LABEL_67;
      }

      if (*(v38 + v32 + 32) > 2u)
      {
        switch(v39)
        {
          case 3u:
            v47 = *v34;
            *re::RigDataValue::getRuntimeValue<float>(v38 + v32, v35) = v47;
            break;
          case 4u:
            v48 = re::RigDataValue::getRuntimeValue<re::Matrix3x3<float>>(v38 + v32, v35);
            v50 = v37[1];
            v49 = v37[2];
            *v48 = *v37;
            v48[1] = v50;
            v48[2] = v49;
            break;
          case 5u:
            v40 = re::RigDataValue::getRuntimeValue<re::Matrix4x4<float>>(v38 + v32, v35);
            v41 = v37[3];
            v43 = *v37;
            v42 = v37[1];
            v40[2] = v37[2];
            v40[3] = v41;
            *v40 = v43;
            v40[1] = v42;
            break;
        }

        goto LABEL_67;
      }

      if (v39 == 1)
      {
        break;
      }

      if (v39 == 2)
      {
        v45 = *v34;
        Runtime = re::RigDataValue::getRuntimeValue<unsigned int>(v38 + v32, v35);
LABEL_60:
        *Runtime = v45;
      }

LABEL_67:
      ++v7;
      v33 += 24;
      v32 += 288;
      v21 = (v21 + 48);
      if (v54 == v7)
      {
        goto LABEL_68;
      }
    }

    v45 = *v34;
    Runtime = re::RigDataValue::getRuntimeValue<int>(v38 + v32, v35);
    goto LABEL_60;
  }

LABEL_68:
  if ((*(v20 + 4888) & 1) == 0)
  {
    re::EvaluationContextManager::buildEvaluationContext((v20 + 2360));
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  re::EvaluationContextSlices::init(&v60, (v20 + 4896));
  (*(*(v20 + 5600) + 16))(v20 + 5600, &v60);
  if (!*(v20 + 272))
  {
    goto LABEL_84;
  }

  *v52 = *re::RigDataValue::getRuntimeValue<re::Vector3<float>>(*(v20 + 288), v51);
  if (v55 && v56)
  {
    (*(*v55 + 40))();
  }
}