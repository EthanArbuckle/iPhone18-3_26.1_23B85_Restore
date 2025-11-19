char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_ResponseGroup>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = protobuf::Intelligence_ResponseGroup::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_InputGroup>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = protobuf::Intelligence_InputGroup::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

unsigned __int8 *protobuf::Intelligence::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 68);
    *v4 = 9;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(this + 8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(this + 24, i);
      *v4 = 18;
      v11 = *(v10 + 5);
      if (v11 > 0x7F)
      {
        v4[1] = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v12 = v4 + 3;
          do
          {
            *(v12 - 1) = v13 | 0x80;
            v14 = v13 >> 7;
            ++v12;
            v15 = v13 >> 14;
            v13 >>= 7;
          }

          while (v15);
          *(v12 - 1) = v14;
        }

        else
        {
          v4[2] = v13;
          v12 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v11;
        v12 = v4 + 2;
      }

      v4 = protobuf::Intelligence_Meta::InternalSerializeWithCachedSizesToArray(v10, v12, a3);
    }
  }

  v16 = *(this + 14);
  if (v16)
  {
    for (j = 0; j != v16; ++j)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 48, j);
      *v4 = 34;
      v19 = *(v18 + 5);
      if (v19 > 0x7F)
      {
        v4[1] = v19 | 0x80;
        v21 = v19 >> 7;
        if (v19 >> 14)
        {
          v20 = v4 + 3;
          do
          {
            *(v20 - 1) = v21 | 0x80;
            v22 = v21 >> 7;
            ++v20;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
          *(v20 - 1) = v22;
        }

        else
        {
          v4[2] = v21;
          v20 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v19;
        v20 = v4 + 2;
      }

      v4 = protobuf::Intelligence_DialogResponse::InternalSerializeWithCachedSizesToArray(v18, v20, a3);
    }
  }

  v24 = *(this + 20);
  if (v24)
  {
    for (k = 0; k != v24; ++k)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v26 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, k);
      *v4 = 42;
      v27 = *(v26 + 5);
      if (v27 > 0x7F)
      {
        v4[1] = v27 | 0x80;
        v29 = v27 >> 7;
        if (v27 >> 14)
        {
          v28 = v4 + 3;
          do
          {
            *(v28 - 1) = v29 | 0x80;
            v30 = v29 >> 7;
            ++v28;
            v31 = v29 >> 14;
            v29 >>= 7;
          }

          while (v31);
          *(v28 - 1) = v30;
        }

        else
        {
          v4[2] = v29;
          v28 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v27;
        v28 = v4 + 2;
      }

      v4 = protobuf::Intelligence_BehaviorResponse::InternalSerializeWithCachedSizesToArray(v26, v28, a3);
    }
  }

  v32 = *(this + 26);
  if (v32)
  {
    for (m = 0; m != v32; ++m)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v34 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(this + 96, m);
      *v4 = 50;
      v35 = *(v34 + 5);
      if (v35 > 0x7F)
      {
        v4[1] = v35 | 0x80;
        v37 = v35 >> 7;
        if (v35 >> 14)
        {
          v36 = v4 + 3;
          do
          {
            *(v36 - 1) = v37 | 0x80;
            v38 = v37 >> 7;
            ++v36;
            v39 = v37 >> 14;
            v37 >>= 7;
          }

          while (v39);
          *(v36 - 1) = v38;
        }

        else
        {
          v4[2] = v37;
          v36 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v35;
        v36 = v4 + 2;
      }

      v4 = protobuf::Intelligence_ReferenceResponse::InternalSerializeWithCachedSizesToArray(v34, v36, a3);
    }
  }

  v40 = *(this + 32);
  if (v40)
  {
    for (n = 0; n != v40; ++n)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v42 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 120, n);
      *v4 = 58;
      v43 = *(v42 + 5);
      if (v43 > 0x7F)
      {
        v4[1] = v43 | 0x80;
        v45 = v43 >> 7;
        if (v43 >> 14)
        {
          v44 = v4 + 3;
          do
          {
            *(v44 - 1) = v45 | 0x80;
            v46 = v45 >> 7;
            ++v44;
            v47 = v45 >> 14;
            v45 >>= 7;
          }

          while (v47);
          *(v44 - 1) = v46;
        }

        else
        {
          v4[2] = v45;
          v44 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v43;
        v44 = v4 + 2;
      }

      v4 = protobuf::Intelligence_ResponseGroup::InternalSerializeWithCachedSizesToArray(v42, v44, a3);
    }
  }

  v48 = *(this + 38);
  if (v48)
  {
    for (ii = 0; ii != v48; ++ii)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v50 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 144, ii);
      *v4 = 66;
      v51 = *(v50 + 5);
      if (v51 > 0x7F)
      {
        v4[1] = v51 | 0x80;
        v53 = v51 >> 7;
        if (v51 >> 14)
        {
          v52 = v4 + 3;
          do
          {
            *(v52 - 1) = v53 | 0x80;
            v54 = v53 >> 7;
            ++v52;
            v55 = v53 >> 14;
            v53 >>= 7;
          }

          while (v55);
          *(v52 - 1) = v54;
        }

        else
        {
          v4[2] = v53;
          v52 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v51;
        v52 = v4 + 2;
      }

      v4 = protobuf::Intelligence_InputGroup::InternalSerializeWithCachedSizesToArray(v50, v52, a3);
    }
  }

  v56 = *(this + 44);
  if (v56)
  {
    for (jj = 0; jj != v56; ++jj)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v58 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, jj);
      *v4 = 74;
      v59 = *(v58 + 5);
      if (v59 > 0x7F)
      {
        v4[1] = v59 | 0x80;
        v61 = v59 >> 7;
        if (v59 >> 14)
        {
          v60 = v4 + 3;
          do
          {
            *(v60 - 1) = v61 | 0x80;
            v62 = v61 >> 7;
            ++v60;
            v63 = v61 >> 14;
            v61 >>= 7;
          }

          while (v63);
          *(v60 - 1) = v62;
        }

        else
        {
          v4[2] = v61;
          v60 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v59;
        v60 = v4 + 2;
      }

      v4 = protobuf::Intelligence_Activity::InternalSerializeWithCachedSizesToArray(v58, v60, a3);
    }
  }

  v64 = *(this + 50);
  if (v64)
  {
    for (kk = 0; kk != v64; ++kk)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v66 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::TypeHandler>(this + 192, kk);
      *v4 = 82;
      v67 = *(v66 + 5);
      if (v67 > 0x7F)
      {
        v4[1] = v67 | 0x80;
        v69 = v67 >> 7;
        if (v67 >> 14)
        {
          v68 = v4 + 3;
          do
          {
            *(v68 - 1) = v69 | 0x80;
            v70 = v69 >> 7;
            ++v68;
            v71 = v69 >> 14;
            v69 >>= 7;
          }

          while (v71);
          *(v68 - 1) = v70;
        }

        else
        {
          v4[2] = v69;
          v68 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v67;
        v68 = v4 + 2;
      }

      v4 = protobuf::Intelligence_Utterance::InternalSerializeWithCachedSizesToArray(v66, v68, a3);
    }
  }

  v72 = *(this + 56);
  if (v72)
  {
    for (mm = 0; mm != v72; ++mm)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v74 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::TypeHandler>(this + 216, mm);
      *v4 = 90;
      v75 = *(v74 + 5);
      if (v75 > 0x7F)
      {
        v4[1] = v75 | 0x80;
        v77 = v75 >> 7;
        if (v75 >> 14)
        {
          v76 = v4 + 3;
          do
          {
            *(v76 - 1) = v77 | 0x80;
            v78 = v77 >> 7;
            ++v76;
            v79 = v77 >> 14;
            v77 >>= 7;
          }

          while (v79);
          *(v76 - 1) = v78;
        }

        else
        {
          v4[2] = v77;
          v76 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v75;
        v76 = v4 + 2;
      }

      v4 = protobuf::Intelligence_Character::InternalSerializeWithCachedSizesToArray(v74, v76, a3);
    }
  }

  v80 = *(this + 62);
  if (v80)
  {
    for (nn = 0; nn != v80; ++nn)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v82 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(this + 240, nn);
      *v4 = 106;
      v83 = *(v82 + 5);
      if (v83 > 0x7F)
      {
        v4[1] = v83 | 0x80;
        v85 = v83 >> 7;
        if (v83 >> 14)
        {
          v84 = v4 + 3;
          do
          {
            *(v84 - 1) = v85 | 0x80;
            v86 = v85 >> 7;
            ++v84;
            v87 = v85 >> 14;
            v85 >>= 7;
          }

          while (v87);
          *(v84 - 1) = v86;
        }

        else
        {
          v4[2] = v85;
          v84 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v83;
        v84 = v4 + 2;
      }

      v4 = protobuf::Intelligence_Intent::InternalSerializeWithCachedSizesToArray(v82, v84, a3);
    }
  }

  v88 = *(this + 68);
  if (v88)
  {
    for (i1 = 0; i1 != v88; ++i1)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v90 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(this + 264, i1);
      *v4 = 386;
      v91 = *(v90 + 5);
      if (v91 > 0x7F)
      {
        v4[2] = v91 | 0x80;
        v93 = v91 >> 7;
        if (v91 >> 14)
        {
          v92 = v4 + 4;
          do
          {
            *(v92 - 1) = v93 | 0x80;
            v94 = v93 >> 7;
            ++v92;
            v95 = v93 >> 14;
            v93 >>= 7;
          }

          while (v95);
          *(v92 - 1) = v94;
        }

        else
        {
          v4[3] = v93;
          v92 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v91;
        v92 = v4 + 3;
      }

      v4 = protobuf::Intelligence_Condition::InternalSerializeWithCachedSizesToArray(v90, v92, a3);
    }
  }

  v96 = *(this + 74);
  if (v96)
  {
    for (i2 = 0; i2 != v96; ++i2)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v98 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 288, i2);
      *v4 = 394;
      v99 = *(v98 + 5);
      if (v99 > 0x7F)
      {
        v4[2] = v99 | 0x80;
        v101 = v99 >> 7;
        if (v99 >> 14)
        {
          v100 = v4 + 4;
          do
          {
            *(v100 - 1) = v101 | 0x80;
            v102 = v101 >> 7;
            ++v100;
            v103 = v101 >> 14;
            v101 >>= 7;
          }

          while (v103);
          *(v100 - 1) = v102;
        }

        else
        {
          v4[3] = v101;
          v100 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v99;
        v100 = v4 + 3;
      }

      v4 = protobuf::Intelligence_Counter::InternalSerializeWithCachedSizesToArray(v98, v100, a3);
    }
  }

  v104 = *(this + 80);
  if (v104)
  {
    for (i3 = 0; i3 != v104; ++i3)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v106 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 312, i3);
      *v4 = 402;
      v107 = *(v106 + 5);
      if (v107 > 0x7F)
      {
        v4[2] = v107 | 0x80;
        v109 = v107 >> 7;
        if (v107 >> 14)
        {
          v108 = v4 + 4;
          do
          {
            *(v108 - 1) = v109 | 0x80;
            v110 = v109 >> 7;
            ++v108;
            v111 = v109 >> 14;
            v109 >>= 7;
          }

          while (v111);
          *(v108 - 1) = v110;
        }

        else
        {
          v4[3] = v109;
          v108 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v107;
        v108 = v4 + 3;
      }

      v4 = protobuf::Intelligence_Flag::InternalSerializeWithCachedSizesToArray(v106, v108, a3);
    }
  }

  v112 = *(this + 86);
  if (v112)
  {
    for (i4 = 0; i4 != v112; ++i4)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v114 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 336, i4);
      *v4 = 410;
      v115 = *(v114 + 5);
      if (v115 > 0x7F)
      {
        v4[2] = v115 | 0x80;
        v117 = v115 >> 7;
        if (v115 >> 14)
        {
          v116 = v4 + 4;
          do
          {
            *(v116 - 1) = v117 | 0x80;
            v118 = v117 >> 7;
            ++v116;
            v119 = v117 >> 14;
            v117 >>= 7;
          }

          while (v119);
          *(v116 - 1) = v118;
        }

        else
        {
          v4[3] = v117;
          v116 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v115;
        v116 = v4 + 3;
      }

      v4 = protobuf::Intelligence_Label::InternalSerializeWithCachedSizesToArray(v114, v116, a3);
    }
  }

  v120 = *(this + 92);
  if (v120)
  {
    for (i5 = 0; i5 != v120; ++i5)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v122 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 360, i5);
      *v4 = 418;
      v123 = *(v122 + 20);
      if (v123 > 0x7F)
      {
        v4[2] = v123 | 0x80;
        v125 = v123 >> 7;
        if (v123 >> 14)
        {
          v124 = v4 + 4;
          do
          {
            *(v124 - 1) = v125 | 0x80;
            v126 = v125 >> 7;
            ++v124;
            v127 = v125 >> 14;
            v125 >>= 7;
          }

          while (v127);
          *(v124 - 1) = v126;
        }

        else
        {
          v4[3] = v125;
          v124 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v123;
        v124 = v4 + 3;
      }

      v4 = protobuf::Intelligence_List::InternalSerializeWithCachedSizesToArray(v122, v124, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v128 = *(this + 552);
    *v4 = 432;
    v4[2] = v128;
    v4 += 3;
  }

  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 26, *(this + 66), v4);
  }

  v129 = *(this + 98);
  if (v129)
  {
    for (i6 = 0; i6 != v129; ++i6)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v131 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 384, i6);
      *v4 = 474;
      v132 = *(v131 + 5);
      if (v132 > 0x7F)
      {
        v4[2] = v132 | 0x80;
        v134 = v132 >> 7;
        if (v132 >> 14)
        {
          v133 = v4 + 4;
          do
          {
            *(v133 - 1) = v134 | 0x80;
            v135 = v134 >> 7;
            ++v133;
            v136 = v134 >> 14;
            v134 >>= 7;
          }

          while (v136);
          *(v133 - 1) = v135;
        }

        else
        {
          v4[3] = v134;
          v133 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v132;
        v133 = v4 + 3;
      }

      v4 = protobuf::Intelligence_Variable::InternalSerializeWithCachedSizesToArray(v131, v133, a3);
    }
  }

  v137 = *(this + 104);
  if (v137)
  {
    for (i7 = 0; i7 != v137; ++i7)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v139 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 408, i7);
      *v4 = 482;
      v140 = *(v139 + 5);
      if (v140 > 0x7F)
      {
        v4[2] = v140 | 0x80;
        v142 = v140 >> 7;
        if (v140 >> 14)
        {
          v141 = v4 + 4;
          do
          {
            *(v141 - 1) = v142 | 0x80;
            v143 = v142 >> 7;
            ++v141;
            v144 = v142 >> 14;
            v142 >>= 7;
          }

          while (v144);
          *(v141 - 1) = v143;
        }

        else
        {
          v4[3] = v142;
          v141 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v140;
        v141 = v4 + 3;
      }

      v4 = protobuf::Intelligence_ResponseGroup::InternalSerializeWithCachedSizesToArray(v139, v141, a3);
    }
  }

  v145 = *(this + 110);
  if (v145)
  {
    for (i8 = 0; i8 != v145; ++i8)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v147 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 432, i8);
      *v4 = 490;
      v148 = *(v147 + 5);
      if (v148 > 0x7F)
      {
        v4[2] = v148 | 0x80;
        v150 = v148 >> 7;
        if (v148 >> 14)
        {
          v149 = v4 + 4;
          do
          {
            *(v149 - 1) = v150 | 0x80;
            v151 = v150 >> 7;
            ++v149;
            v152 = v150 >> 14;
            v150 >>= 7;
          }

          while (v152);
          *(v149 - 1) = v151;
        }

        else
        {
          v4[3] = v150;
          v149 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v148;
        v149 = v4 + 3;
      }

      v4 = protobuf::Intelligence_InputGroup::InternalSerializeWithCachedSizesToArray(v147, v149, a3);
    }
  }

  v153 = *(this + 116);
  if (v153 >= 1)
  {
    for (i9 = 0; i9 != v153; ++i9)
    {
      v155 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 456, i9);
      v156 = *(v155 + 23);
      if (v156 < 0 && (v156 = *(v155 + 8), v156 > 127) || *a3 - v4 + 13 < v156)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 30, v155, v4);
      }

      else
      {
        *v4 = 498;
        v4[2] = v156;
        if (*(v155 + 23) >= 0)
        {
          v157 = v155;
        }

        else
        {
          v157 = *v155;
        }

        memcpy(v4 + 3, v157, v156);
        v4 += v156 + 3;
      }
    }
  }

  v158 = *(this + 122);
  if (v158 >= 1)
  {
    for (i10 = 0; i10 != v158; ++i10)
    {
      v160 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 480, i10);
      v161 = *(v160 + 23);
      if (v161 < 0 && (v161 = *(v160 + 8), v161 > 127) || *a3 - v4 + 13 < v161)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 31, v160, v4);
      }

      else
      {
        *v4 = 506;
        v4[2] = v161;
        if (*(v160 + 23) >= 0)
        {
          v162 = v160;
        }

        else
        {
          v162 = *v160;
        }

        memcpy(v4 + 3, v162, v161);
        v4 += v161 + 3;
      }
    }
  }

  if ((v6 & 2) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v163 = *(this + 67);
    *v4 = 642;
    v164 = *(v163 + 5);
    if (v164 > 0x7F)
    {
      v4[2] = v164 | 0x80;
      v166 = v164 >> 7;
      if (v164 >> 14)
      {
        v165 = v4 + 4;
        do
        {
          *(v165 - 1) = v166 | 0x80;
          v167 = v166 >> 7;
          ++v165;
          v168 = v166 >> 14;
          v166 >>= 7;
        }

        while (v168);
        *(v165 - 1) = v167;
      }

      else
      {
        v4[3] = v166;
        v165 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v164;
      v165 = v4 + 3;
    }

    v4 = protobuf::Intelligence_Start::InternalSerializeWithCachedSizesToArray(v163, v165, a3);
  }

  v169 = *(this + 128);
  if (v169)
  {
    for (i11 = 0; i11 != v169; ++i11)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v171 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(this + 504, i11);
      *v4 = 650;
      v172 = *(v171 + 5);
      if (v172 > 0x7F)
      {
        v4[2] = v172 | 0x80;
        v174 = v172 >> 7;
        if (v172 >> 14)
        {
          v173 = v4 + 4;
          do
          {
            *(v173 - 1) = v174 | 0x80;
            v175 = v174 >> 7;
            ++v173;
            v176 = v174 >> 14;
            v174 >>= 7;
          }

          while (v176);
          *(v173 - 1) = v175;
        }

        else
        {
          v4[3] = v174;
          v173 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v172;
        v173 = v4 + 3;
      }

      v4 = protobuf::Intelligence_Event::InternalSerializeWithCachedSizesToArray(v171, v173, a3);
    }
  }

  v177 = *(this + 1);
  if ((v177 & 1) == 0)
  {
    return v4;
  }

  v179 = v177 & 0xFFFFFFFFFFFFFFFELL;
  v180 = *(v179 + 23);
  if (v180 < 0)
  {
    v181 = *v179;
    v180 = *(v179 + 8);
  }

  else
  {
    v181 = v179;
  }

  if (*a3 - v4 >= v180)
  {
    v182 = v180;
    memcpy(v4, v181, v180);
    v4 += v182;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v181, v180, v4);
}

uint64_t protobuf::Intelligence::ByteSizeLong(protobuf::Intelligence *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = protobuf::Intelligence_Meta::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = protobuf::Intelligence_DialogResponse::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = protobuf::Intelligence_BehaviorResponse::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = protobuf::Intelligence_ReferenceResponse::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = v23 + v29;
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = protobuf::Intelligence_ResponseGroup::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 38);
  v37 = v30 + v36;
  v38 = *(this + 20);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = protobuf::Intelligence_InputGroup::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(this + 44);
  v44 = v37 + v43;
  v45 = *(this + 23);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = protobuf::Intelligence_Activity::ByteSizeLong(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(this + 50);
  v51 = v44 + v50;
  v52 = *(this + 26);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = protobuf::Intelligence_Utterance::ByteSizeLong(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(this + 56);
  v58 = v51 + v57;
  v59 = *(this + 29);
  if (v59)
  {
    v60 = (v59 + 8);
  }

  else
  {
    v60 = 0;
  }

  if (v57)
  {
    v61 = 8 * v57;
    do
    {
      v62 = *v60++;
      v63 = protobuf::Intelligence_Character::ByteSizeLong(v62);
      v58 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      v61 -= 8;
    }

    while (v61);
  }

  v64 = *(this + 62);
  v65 = v58 + v64;
  v66 = *(this + 32);
  if (v66)
  {
    v67 = (v66 + 8);
  }

  else
  {
    v67 = 0;
  }

  if (v64)
  {
    v68 = 8 * v64;
    do
    {
      v69 = *v67++;
      v70 = protobuf::Intelligence_Intent::ByteSizeLong(v69);
      v65 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6);
      v68 -= 8;
    }

    while (v68);
  }

  v71 = *(this + 68);
  v72 = v65 + 2 * v71;
  v73 = *(this + 35);
  if (v73)
  {
    v74 = (v73 + 8);
  }

  else
  {
    v74 = 0;
  }

  if (v71)
  {
    v75 = 8 * v71;
    do
    {
      v76 = *v74++;
      v77 = protobuf::Intelligence_Condition::ByteSizeLong(v76);
      v72 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6);
      v75 -= 8;
    }

    while (v75);
  }

  v78 = *(this + 74);
  v79 = v72 + 2 * v78;
  v80 = *(this + 38);
  if (v80)
  {
    v81 = (v80 + 8);
  }

  else
  {
    v81 = 0;
  }

  if (v78)
  {
    v82 = 8 * v78;
    do
    {
      v83 = *v81++;
      v84 = protobuf::Intelligence_Counter::ByteSizeLong(v83);
      v79 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6);
      v82 -= 8;
    }

    while (v82);
  }

  v85 = *(this + 80);
  v86 = v79 + 2 * v85;
  v87 = *(this + 41);
  if (v87)
  {
    v88 = (v87 + 8);
  }

  else
  {
    v88 = 0;
  }

  if (v85)
  {
    v89 = 8 * v85;
    do
    {
      v90 = *v88++;
      v91 = protobuf::Intelligence_Flag::ByteSizeLong(v90);
      v86 += v91 + ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6);
      v89 -= 8;
    }

    while (v89);
  }

  v92 = *(this + 86);
  v93 = v86 + 2 * v92;
  v94 = *(this + 44);
  if (v94)
  {
    v95 = (v94 + 8);
  }

  else
  {
    v95 = 0;
  }

  if (v92)
  {
    v96 = 8 * v92;
    do
    {
      v97 = *v95++;
      v98 = protobuf::Intelligence_Label::ByteSizeLong(v97);
      v93 += v98 + ((9 * (__clz(v98 | 1) ^ 0x1F) + 73) >> 6);
      v96 -= 8;
    }

    while (v96);
  }

  v99 = *(this + 92);
  v100 = v93 + 2 * v99;
  v101 = *(this + 47);
  if (v101)
  {
    v102 = (v101 + 8);
  }

  else
  {
    v102 = 0;
  }

  if (v99)
  {
    v103 = 8 * v99;
    do
    {
      v104 = *v102++;
      v105 = protobuf::Intelligence_List::ByteSizeLong(v104);
      v100 += v105 + ((9 * (__clz(v105 | 1) ^ 0x1F) + 73) >> 6);
      v103 -= 8;
    }

    while (v103);
  }

  v106 = *(this + 98);
  v107 = v100 + 2 * v106;
  v108 = *(this + 50);
  if (v108)
  {
    v109 = (v108 + 8);
  }

  else
  {
    v109 = 0;
  }

  if (v106)
  {
    v110 = 8 * v106;
    do
    {
      v111 = *v109++;
      v112 = protobuf::Intelligence_Variable::ByteSizeLong(v111);
      v107 += v112 + ((9 * (__clz(v112 | 1) ^ 0x1F) + 73) >> 6);
      v110 -= 8;
    }

    while (v110);
  }

  v113 = *(this + 104);
  v114 = v107 + 2 * v113;
  v115 = *(this + 53);
  if (v115)
  {
    v116 = (v115 + 8);
  }

  else
  {
    v116 = 0;
  }

  if (v113)
  {
    v117 = 8 * v113;
    do
    {
      v118 = *v116++;
      v119 = protobuf::Intelligence_ResponseGroup::ByteSizeLong(v118);
      v114 += v119 + ((9 * (__clz(v119 | 1) ^ 0x1F) + 73) >> 6);
      v117 -= 8;
    }

    while (v117);
  }

  v120 = *(this + 110);
  v121 = v114 + 2 * v120;
  v122 = *(this + 56);
  if (v122)
  {
    v123 = (v122 + 8);
  }

  else
  {
    v123 = 0;
  }

  if (v120)
  {
    v124 = 8 * v120;
    do
    {
      v125 = *v123++;
      v126 = protobuf::Intelligence_InputGroup::ByteSizeLong(v125);
      v121 += v126 + ((9 * (__clz(v126 | 1) ^ 0x1F) + 73) >> 6);
      v124 -= 8;
    }

    while (v124);
  }

  v127 = *(this + 116);
  v128 = v121 + 2 * v127;
  if (v127 >= 1)
  {
    v129 = 0;
    do
    {
      v130 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 456, v129);
      v131 = *(v130 + 23);
      if ((v131 & 0x80u) != 0)
      {
        v131 = *(v130 + 8);
      }

      v128 += v131 + ((9 * (__clz(v131 | 1) ^ 0x1F) + 73) >> 6);
      ++v129;
    }

    while (v127 != v129);
  }

  v132 = *(this + 122);
  v133 = v128 + 2 * v132;
  if (v132 >= 1)
  {
    v134 = 0;
    do
    {
      v135 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 480, v134);
      v136 = *(v135 + 23);
      if ((v136 & 0x80u) != 0)
      {
        v136 = *(v135 + 8);
      }

      v133 += v136 + ((9 * (__clz(v136 | 1) ^ 0x1F) + 73) >> 6);
      ++v134;
    }

    while (v132 != v134);
  }

  v137 = *(this + 128);
  v138 = v133 + 2 * v137;
  v139 = *(this + 65);
  if (v139)
  {
    v140 = (v139 + 8);
  }

  else
  {
    v140 = 0;
  }

  if (v137)
  {
    v141 = 8 * v137;
    do
    {
      v142 = *v140++;
      v143 = protobuf::Intelligence_Event::ByteSizeLong(v142);
      v138 += v143 + ((9 * (__clz(v143 | 1) ^ 0x1F) + 73) >> 6);
      v141 -= 8;
    }

    while (v141);
  }

  v144 = *(this + 4);
  if ((v144 & 0xF) != 0)
  {
    if (v144)
    {
      v145 = *(this + 66);
      v146 = *(v145 + 23);
      v147 = *(v145 + 8);
      if ((v146 & 0x80u) == 0)
      {
        v147 = v146;
      }

      v138 += v147 + ((9 * (__clz(v147 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v144 & 2) != 0)
    {
      v148 = protobuf::Intelligence_Start::ByteSizeLong(*(this + 67));
      v138 += v148 + ((9 * (__clz(v148 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v149 = v138 + 9;
    if ((v144 & 4) == 0)
    {
      v149 = v138;
    }

    if ((v144 & 8) != 0)
    {
      v138 = v149 + 3;
    }

    else
    {
      v138 = v149;
    }
  }

  v150 = *(this + 1);
  if (v150)
  {
    v152 = v150 & 0xFFFFFFFFFFFFFFFELL;
    v153 = *((v150 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v153 < 0)
    {
      v153 = *(v152 + 8);
    }

    v138 += v153;
  }

  *(this + 5) = v138;
  return v138;
}

void protobuf::Intelligence::CheckTypeAndMergeFrom(protobuf::Intelligence *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence::MergeFrom(protobuf::Intelligence *this, const protobuf::Intelligence *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 15033);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 6, a2 + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 9, a2 + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(this + 12, a2 + 96);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 15, a2 + 120);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 18, a2 + 144);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 21, a2 + 168);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::TypeHandler>(this + 24, a2 + 192);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::TypeHandler>(this + 27, a2 + 216);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(this + 30, a2 + 240);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(this + 33, a2 + 264);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 36, a2 + 288);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 39, a2 + 312);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 42, a2 + 336);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 45, a2 + 360);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 48, a2 + 384);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 51, a2 + 408);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 54, a2 + 432);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 456, a2 + 456);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 480, a2 + 480);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(this + 63, a2 + 504);
  v6 = *(a2 + 4);
  if ((v6 & 0xF) != 0)
  {
    if (v6)
    {
      *(this + 4) |= 1u;
      v7 = *(a2 + 66);
      v8 = *(this + 66);
      if (v8 != v7)
      {
        if (v8 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 528, v7);
        }

        std::string::operator=(v8, v7);
      }
    }

    if ((v6 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v9 = *(this + 67);
      if (!v9)
      {
        v9 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(0);
        *(this + 67) = v9;
      }

      if (*(a2 + 67))
      {
        v10 = *(a2 + 67);
      }

      else
      {
        v10 = &protobuf::_Intelligence_Start_default_instance_;
      }

      protobuf::Intelligence_Start::MergeFrom(v9, v10);
      if ((v6 & 4) == 0)
      {
LABEL_12:
        if ((v6 & 8) == 0)
        {
LABEL_14:
          *(this + 4) |= v6;
          return;
        }

LABEL_13:
        *(this + 552) = *(a2 + 552);
        goto LABEL_14;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_12;
    }

    *(this + 68) = *(a2 + 68);
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

void sub_254CF8198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence::CopyFrom(protobuf::Intelligence *this, const protobuf::Intelligence *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence::Clear(this);

    protobuf::Intelligence::MergeFrom(this, a2);
  }
}

double protobuf::Intelligence::InternalSwap(protobuf::Intelligence *this, protobuf::Intelligence *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v21;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_5:
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (v4)
    {
LABEL_6:
      v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
LABEL_7:
      v9 = *(v8 + 16);
      v10 = *v8;
      v11 = *(v7 + 16);
      *v8 = *v7;
      *(v8 + 16) = v11;
      *v7 = v10;
      *(v7 + 16) = v9;
      goto LABEL_8;
    }

LABEL_16:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 24), (a2 + 24));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 48), (a2 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 72), (a2 + 72));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 96), (a2 + 96));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 120), (a2 + 120));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 144), (a2 + 144));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 168), (a2 + 168));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 192), (a2 + 192));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 216), (a2 + 216));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 240), (a2 + 240));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 264), (a2 + 264));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 288), (a2 + 288));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 312), (a2 + 312));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 336), (a2 + 336));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 360), (a2 + 360));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 384), (a2 + 384));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 408), (a2 + 408));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 432), (a2 + 432));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 456), (a2 + 456));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 480), (a2 + 480));
  google::protobuf::internal::RepeatedPtrFieldBase::InternalSwap((this + 504), (a2 + 504));
  v13 = (a2 + 528);
  v14 = *(this + 66);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*v13 == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 66, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(this + 66);
  }

  v15 = *v13;
  if (*v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 66, 0, &google::protobuf::internal::fixed_address_empty_string);
    v15 = *v13;
  }

  v16 = v14[2];
  v17 = *v14;
  v18 = v15[2];
  *v14 = *v15;
  v14[2] = v18;
  *v15 = v17;
  v15[2] = v16;
LABEL_14:
  v19 = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v19;
  result = *(this + 68);
  *(this + 68) = *(a2 + 68);
  *(a2 + 68) = result;
  LOBYTE(v19) = *(this + 552);
  *(this + 552) = *(a2 + 552);
  *(a2 + 552) = v19;
  return result;
}

protobuf::Intelligence_Meta *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Meta>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Meta>);
  protobuf::Intelligence_Meta::Intelligence_Meta(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_KeyValueParameter *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xC0uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_KeyValueParameter>);
  protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Undo *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Undo>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Undo>);
  protobuf::Intelligence_Undo::Intelligence_Undo(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_DialogResponse *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_DialogResponse>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xF0uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_DialogResponse>);
  protobuf::Intelligence_DialogResponse::Intelligence_DialogResponse(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_BehaviorResponse *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_BehaviorResponse>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA8uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_BehaviorResponse>);
  protobuf::Intelligence_BehaviorResponse::Intelligence_BehaviorResponse(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_ReferenceResponse *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ReferenceResponse>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x90uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_ReferenceResponse>);
  protobuf::Intelligence_ReferenceResponse::Intelligence_ReferenceResponse(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_ResponseGroup *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x80uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_ResponseGroup>);
  protobuf::Intelligence_ResponseGroup::Intelligence_ResponseGroup(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_InputGroup_Interjection *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Interjection>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_InputGroup_Interjection>);
  protobuf::Intelligence_InputGroup_Interjection::Intelligence_InputGroup_Interjection(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_InputGroup_Intent *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Intent>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x68uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_InputGroup_Intent>);
  protobuf::Intelligence_InputGroup_Intent::Intelligence_InputGroup_Intent(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_InputGroup_Event *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Event>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_InputGroup_Event>);
  protobuf::Intelligence_InputGroup_Event::Intelligence_InputGroup_Event(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_InputGroup_Fallback *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Fallback>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_InputGroup_Fallback>);
  protobuf::Intelligence_InputGroup_Fallback::Intelligence_InputGroup_Fallback(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_InputGroup_LegacyEvent *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_LegacyEvent>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_InputGroup_LegacyEvent>);
  protobuf::Intelligence_InputGroup_LegacyEvent::Intelligence_InputGroup_LegacyEvent(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_InputGroup *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xB0uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_InputGroup>);
  protobuf::Intelligence_InputGroup::Intelligence_InputGroup(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Activity *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Activity>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x58uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Activity>);
  protobuf::Intelligence_Activity::Intelligence_Activity(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Utterance *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Utterance>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Utterance>);
  protobuf::Intelligence_Utterance::Intelligence_Utterance(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Character *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Character>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Character>);
  protobuf::Intelligence_Character::Intelligence_Character(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Counter *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Counter>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Counter>);
  protobuf::Intelligence_Counter::Intelligence_Counter(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Flag *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Flag>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Flag>);
  protobuf::Intelligence_Flag::Intelligence_Flag(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Label *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Label>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Label>);
  protobuf::Intelligence_Label::Intelligence_Label(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_List *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_List>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_List>);
  protobuf::Intelligence_List::Intelligence_List(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Variable *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x80uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Variable>);
  protobuf::Intelligence_Variable::Intelligence_Variable(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Start *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Start>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Start>);
  protobuf::Intelligence_Start::Intelligence_Start(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_NLParameters *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_NLParameters>);
  protobuf::Intelligence_NLParameters::Intelligence_NLParameters(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Event *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA8uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Event>);
  protobuf::Intelligence_Event::Intelligence_Event(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Intent *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Intent>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x48uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Intent>);
  protobuf::Intelligence_Intent::Intelligence_Intent(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_Memory_Value *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory_Value>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_Memory_Value>);
  protobuf::Intelligence_State_Memory_Value::Intelligence_State_Memory_Value(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_Memory *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_Memory>);
  protobuf::Intelligence_State_Memory::Intelligence_State_Memory(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_InputGroup *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_InputGroup>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_InputGroup>);
  protobuf::Intelligence_State_InputGroup::Intelligence_State_InputGroup(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_Event *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Event>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_Event>);
  protobuf::Intelligence_State_Event::Intelligence_State_Event(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_Response *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Response>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_Response>);
  protobuf::Intelligence_State_Response::Intelligence_State_Response(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_Timer *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Timer>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_Timer>);
  protobuf::Intelligence_State_Timer::Intelligence_State_Timer(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_ExecutionState_Frame_ResponseState *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>);
  protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Intelligence_State_ExecutionState_Frame_ResponseState(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_ExecutionState_Frame *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_ExecutionState_Frame>);
  protobuf::Intelligence_State_ExecutionState_Frame::Intelligence_State_ExecutionState_Frame(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State_ExecutionState *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x68uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State_ExecutionState>);
  protobuf::Intelligence_State_ExecutionState::Intelligence_State_ExecutionState(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_State *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xF0uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_State>);
  protobuf::Intelligence_State::Intelligence_State(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Condition_ConditionEntry *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x78uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Condition_ConditionEntry>);
  protobuf::Intelligence_Condition_ConditionEntry::Intelligence_Condition_ConditionEntry(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence_Condition *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence_Condition>);
  protobuf::Intelligence_Condition::Intelligence_Condition(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

protobuf::Intelligence *google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence>(google::protobuf::internal::ArenaImpl *this)
{
  if (!this)
  {
    operator new();
  }

  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x230uLL, google::protobuf::internal::arena_destruct_object<protobuf::Intelligence>);
  protobuf::Intelligence::Intelligence(AlignedAndAddCleanup);
  return AlignedAndAddCleanup;
}

uint64_t *google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFFFELL;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 24);
    if (v3 && v4 == 0)
    {
      if (*(v3 + 23) < 0)
      {
        operator delete(*v3);
      }

      MEMORY[0x259C29D90](v3, 0x1032C402ED93987);
    }
  }

  *a1 = 0;
  return a1;
}

void google::protobuf::internal::ArenaStringPtr::CreateInstance(std::string **a1, google::protobuf::internal::ArenaImpl *this, __int128 *a3)
{
  if (a3)
  {
    if (this)
    {
      goto LABEL_3;
    }

LABEL_8:
    operator new();
  }

  google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arenastring.h", 370);
  v9 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: initial_value != NULL: ");
  google::protobuf::internal::LogFinisher::operator=(&v10, &v9->__r_.__value_.__l.__data_);
  google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  if (!this)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(this + 14))
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
  v7 = AlignedAndAddCleanup;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(AlignedAndAddCleanup, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&AlignedAndAddCleanup->__r_.__value_.__l.__data_ = v8;
  }

  *a1 = v7;
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFA550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFA630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFA710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFA7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFA8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFA9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Response>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_InputGroup>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Event>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFAFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CFB6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_InputGroup_Event::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CFB788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_InputGroup_Fallback::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CFB838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_InputGroup_LegacyEvent::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CFB8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_NLParameters::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CFB998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_State_Memory::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CFBA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      protobuf::Intelligence_Condition_ConditionEntry::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CFBAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(atomic_ullong **a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = (*a1 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a1);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  return std::string::append(v3, v5, v6);
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::Container>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(atomic_ullong **this)
{
  if (*this)
  {
    v1 = *this & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(this);
  }

  if (*(v1 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  v2 = *(this + 2);
  if (v2 && !*this)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = *(this + 2);
    }

    operator delete(v2);
  }

  *(this + 2) = 0;

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(this);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_Intent>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Intent>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_Intent>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFBDC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_Fallback>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Fallback>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_Fallback>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFBF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_LegacyEvent>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_LegacyEvent>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_LegacyEvent>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_Event>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Event>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup_Event>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_NLParameters>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_NLParameters>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_ExecutionState_Frame_ResponseState>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState_Frame>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_ExecutionState_Frame>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState_Frame>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_ExecutionState_Frame>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Memory>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Memory>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Memory>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Memory>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Response>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Response>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Response>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Response>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFC9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_ExecutionState>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_ExecutionState>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_ExecutionState>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_ExecutionState>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFCB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_InputGroup>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_InputGroup>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_InputGroup>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_InputGroup>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFCCA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Timer>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Timer>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Timer>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Timer>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFCE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_State_Event>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Event>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_State_Event>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_State_Event>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFCFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Condition_ConditionEntry>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition_ConditionEntry>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Condition_ConditionEntry>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFD120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Meta>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Meta>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Meta>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFD69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_DialogResponse>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_DialogResponse>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_DialogResponse>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFD81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_BehaviorResponse>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_BehaviorResponse>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_BehaviorResponse>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFD99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_ReferenceResponse>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ReferenceResponse>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_ReferenceResponse>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFDB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_ResponseGroup>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_ResponseGroup>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_ResponseGroup>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFDC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_InputGroup>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFDE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Activity>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Activity>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Activity>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFDF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Utterance>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Utterance>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Utterance>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFE10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Character>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Character>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Character>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFE28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Intent>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Intent>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Intent>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFE40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Condition>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Condition>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Condition>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFE58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Counter>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Counter>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Counter>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFE70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Flag>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Flag>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Flag>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFE88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Label>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Label>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Label>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFEA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_List>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_List>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_List>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFEB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Variable>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Variable>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Variable>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFED0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v28, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v27, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v28[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, *(a2 + 8));
    v8 = v7;
    v9 = *this[2];
    v10 = *(this + 2);
    v11 = v9 - v10;
    if (v9 - v10 >= v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = v11;
    }

    if (v12 >= 1)
    {
      v13 = (v6 + 8);
      v14 = v7;
      do
      {
        v16 = *v13++;
        v15 = v16;
        v17 = *v14++;
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Event>::Merge(v15, v17);
        --v12;
      }

      while (v12);
    }

    if (v11 < v5)
    {
      v18 = *this;
      v19 = v10 + v5 - v9;
      v20 = 8 * v9 - 8 * v10;
      v21 = (v8 + v20);
      v22 = (v20 + v6 + 8);
      do
      {
        v23 = *v22++;
        v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(v18);
        google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_Event>::Merge(v23, v24);
        *v21++ = v24;
        --v19;
      }

      while (v19);
    }

    v25 = *(this + 2) + v5;
    *(this + 2) = v25;
    v26 = this[2];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }
}

void sub_254CFEE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::FunctionHandler::GetAllDescriptions(uint64_t a1@<X8>)
{
  siri::intelligence::GetFunctionDefinitions(&v36);
  v3 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 4));
  if (v37 == v36)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,siri::intelligence::FunctionHandler::GetAllDescriptions(void)::$_0 &,siri::intelligence::FunctionDefinition *,false>(v36, v37, v4, 1);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = v36;
  v6 = v37;
  if (v36 != v37)
  {
    v7 = 0x6DB6DB6DB6DB6DB7;
    v8 = "";
    v30 = v37;
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v31, v8);
      v9 = v8;
      std::string::basic_string[abi:ne200100]<0>(&__p, v8);
      v33 = 0;
      v34 = 0;
      v35 = 0;
      std::string::operator=(&v31, v5);
      std::string::operator=(&__p, (v5 + 4));
      if (&v33 != (v5 + 7))
      {
        std::vector<siri::intelligence::FunctionArgument>::__assign_with_size[abi:ne200100]<siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(&v33, v5[7], v5[8], ((v5[8] - v5[7]) >> 3) * v7);
      }

      v11 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v11 >= v10)
      {
        v13 = 0x8E38E38E38E38E39 * ((v11 - *a1) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0x38E38E38E38E38ELL)
        {
          std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
        }

        v15 = 0x8E38E38E38E38E39 * ((v10 - *a1) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x1C71C71C71C71C7)
        {
          v16 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v16 = v14;
        }

        v42 = a1;
        if (v16)
        {
          if (v16 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = 72 * v13;
        v38 = 0;
        v39 = 72 * v13;
        v40 = 72 * v13;
        v41 = 0;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((72 * v13), v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
        }

        else
        {
          *v19 = *&v31.__r_.__value_.__l.__data_;
          *(72 * v13 + 0x10) = *(&v31.__r_.__value_.__l + 2);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v19 + 24), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          *(72 * v13 + 0x18) = *&__p.__r_.__value_.__l.__data_;
          *(72 * v13 + 0x28) = *(&__p.__r_.__value_.__l + 2);
        }

        *(72 * v13 + 0x30) = 0;
        *(72 * v13 + 0x38) = 0;
        *(72 * v13 + 0x40) = 0;
        v20 = v7;
        std::vector<siri::intelligence::FunctionArgument>::__init_with_size[abi:ne200100]<siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(v19 + 48, v33, v34, ((v34 - v33) >> 3) * v7);
        v21 = v40;
        v22 = *a1;
        v23 = *(a1 + 8);
        v24 = v39 + *a1 - v23;
        if (v23 != *a1)
        {
          v25 = *a1;
          v26 = v39 + *a1 - v23;
          do
          {
            v27 = *v25;
            *(v26 + 16) = v25[2];
            *v26 = v27;
            v25[1] = 0;
            v25[2] = 0;
            *v25 = 0;
            v28 = *(v25 + 3);
            *(v26 + 40) = v25[5];
            *(v26 + 24) = v28;
            v25[4] = 0;
            v25[5] = 0;
            v25[3] = 0;
            *(v26 + 48) = 0;
            *(v26 + 56) = 0;
            *(v26 + 64) = 0;
            *(v26 + 48) = *(v25 + 3);
            *(v26 + 64) = v25[8];
            v25[6] = 0;
            v25[7] = 0;
            v25[8] = 0;
            v25 += 9;
            v26 += 72;
          }

          while (v25 != v23);
          do
          {
            std::allocator_traits<std::allocator<siri::intelligence::FunctionDescription>>::destroy[abi:ne200100]<siri::intelligence::FunctionDescription,0>(v22);
            v22 += 9;
          }

          while (v22 != v23);
          v22 = *a1;
        }

        v18 = v21 + 72;
        *a1 = v24;
        *(a1 + 8) = v18;
        v29 = *(a1 + 16);
        *(a1 + 16) = v41;
        v40 = v22;
        v41 = v29;
        v38 = v22;
        v39 = v22;
        std::__split_buffer<siri::intelligence::FunctionDescription>::~__split_buffer(&v38);
        v7 = v20;
        v6 = v30;
      }

      else
      {
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(*(a1 + 8), v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
        }

        else
        {
          v12 = *&v31.__r_.__value_.__l.__data_;
          *(v11 + 16) = *(&v31.__r_.__value_.__l + 2);
          *v11 = v12;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external((v11 + 24), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v17 = *&__p.__r_.__value_.__l.__data_;
          *(v11 + 40) = *(&__p.__r_.__value_.__l + 2);
          *(v11 + 24) = v17;
        }

        *(v11 + 48) = 0;
        *(v11 + 56) = 0;
        *(v11 + 64) = 0;
        std::vector<siri::intelligence::FunctionArgument>::__init_with_size[abi:ne200100]<siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(v11 + 48, v33, v34, ((v34 - v33) >> 3) * v7);
        v18 = v11 + 72;
      }

      *(a1 + 8) = v18;
      v38 = &v33;
      std::vector<siri::intelligence::FunctionArgument>::__destroy_vector::operator()[abi:ne200100](&v38);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 = v9;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v5 += 10;
    }

    while (v5 != v6);
  }

  v31.__r_.__value_.__r.__words[0] = &v36;
  std::vector<siri::intelligence::FunctionDefinition>::__destroy_vector::operator()[abi:ne200100](&v31);
}

void sub_254CFF808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  if (*(v25 + 23) < 0)
  {
    operator delete(*v25);
  }

  std::__split_buffer<siri::intelligence::FunctionDescription>::~__split_buffer(&a25);
  siri::intelligence::FunctionDescription::~FunctionDescription(&__p);
  std::vector<siri::intelligence::FunctionDescription>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a22;
  std::vector<siri::intelligence::FunctionDefinition>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::GetFunctionDefinitions(uint64_t this)
{
  v1 = this;
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_8, memory_order_acquire) & 1) == 0)
  {
    this = __cxa_guard_acquire(&_MergedGlobals_8);
    if (this)
    {
      std::string::basic_string[abi:ne200100]<0>(v7, "abs");
      v7[3] = siri::intelligence::FunctionAbs;
      std::string::basic_string[abi:ne200100]<0>(v8, siri::intelligence::TYPE_NUMBER[0]);
      std::string::basic_string[abi:ne200100]<0>(v5, "value");
      std::string::basic_string[abi:ne200100]<0>(v6, siri::intelligence::TYPE_NUMBER[0]);
      v6[24] = 1;
      memset(v9, 0, 24);
      std::vector<siri::intelligence::FunctionArgument>::__init_with_size[abi:ne200100]<siri::intelligence::FunctionArgument const*,siri::intelligence::FunctionArgument const*>(v9, v5, v7, 1uLL);
    }
  }

  *v1 = 0;
  v1[1] = 0;
  v1[2] = 0;
  v3 = v1;
  v4 = 0;
  if (qword_280AF4378 != qword_280AF4370)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((qword_280AF4378 - qword_280AF4370) >> 4) < 0x333333333333334)
    {
      operator new();
    }

    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  v2 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_254D00B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = -1920;
  v75 = v72;
  do
  {
    siri::intelligence::FunctionDefinition::~FunctionDefinition(v75);
    v75 = (v76 - 80);
    v74 += 80;
  }

  while (v74);
  siri::intelligence::TestParseError::~TestParseError(&a9);
  for (i = 56; i != -56; i -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&a16 + i));
  }

  siri::intelligence::TestParseError::~TestParseError(&a30);
  siri::intelligence::TestParseError::~TestParseError(&a37);
  siri::intelligence::TestParseError::~TestParseError(&a44);
  siri::intelligence::TestParseError::~TestParseError(&a51);
  for (j = 56; j != -56; j -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&a58 + j));
  }

  siri::intelligence::TestParseError::~TestParseError(&a72);
  for (k = 56; k != -56; k -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x230] + k));
  }

  for (m = 56; m != -56; m -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x2A0] + m));
  }

  for (n = 56; n != -56; n -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x310] + n));
  }

  siri::intelligence::TestParseError::~TestParseError(&STACK[0x380]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x3B8]);
  for (ii = 56; ii != -56; ii -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x3F0] + ii));
  }

  for (jj = 56; jj != -56; jj -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x460] + jj));
  }

  for (kk = 56; kk != -56; kk -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x4D0] + kk));
  }

  for (mm = 56; mm != -56; mm -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x540] + mm));
  }

  for (nn = 56; nn != -56; nn -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x5B0] + nn));
  }

  for (i1 = 56; i1 != -56; i1 -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x620] + i1));
  }

  for (i2 = 56; i2 != -56; i2 -= 56)
  {
    siri::intelligence::TestParseError::~TestParseError((&STACK[0x690] + i2));
  }

  siri::intelligence::TestParseError::~TestParseError(&STACK[0x700]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x738]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x770]);
  siri::intelligence::TestParseError::~TestParseError(&STACK[0x7A8]);
  __cxa_guard_abort(&_MergedGlobals_8);
  _Unwind_Resume(a1);
}

void **std::vector<siri::intelligence::FunctionDefinition>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<siri::intelligence::FunctionDefinition>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void siri::intelligence::FunctionHandler::Validate(uint64_t a1, const void **a2, siri::intelligence::ValidationResults *a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7)
{
  siri::intelligence::GetFunctionDefinitionsMap(v142);
  v10 = std::__tree<std::string>::find<std::string>(v142, a4);
  if (&v143 == v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v113 = *(a2 + 23);
    }

    else
    {
      v113 = a2[1];
    }

    std::string::basic_string[abi:ne200100](&v141, v113 + 25);
    if ((v141.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = &v141;
    }

    else
    {
      v114 = v141.__r_.__value_.__r.__words[0];
    }

    if (v113)
    {
      if (*(a2 + 23) >= 0)
      {
        v115 = a2;
      }

      else
      {
        v115 = *a2;
      }

      memmove(v114, v115, v113);
    }

    strcpy(v114 + v113, "undefined function name: ");
    v116 = *(a4 + 23);
    if (v116 >= 0)
    {
      v117 = a4;
    }

    else
    {
      v117 = *a4;
    }

    if (v116 >= 0)
    {
      v118 = *(a4 + 23);
    }

    else
    {
      v118 = *(a4 + 8);
    }

    v119 = std::string::append(&v141, v117, v118);
    v137 = *v119;
    v119->__r_.__value_.__l.__size_ = 0;
    v119->__r_.__value_.__r.__words[2] = 0;
    v119->__r_.__value_.__r.__words[0] = 0;
    siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_UNDEF_FUNC, &v137, a7);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = v10;
    v122 = a5;
    if (*a5)
    {
      v12 = a6 + 312;
      if (!a6)
      {
        v12 = 0;
      }

      v120 = v12;
      std::map<std::string,std::shared_ptr<siri::intelligence::Variable>>::map[abi:ne200100](&v141, (*a5 + 72));
      v13 = v141.__r_.__value_.__r.__words[0];
      if (v141.__r_.__value_.__l.__data_ != &v141.__r_.__value_.__r.__words[1])
      {
        do
        {
          if (*(v13 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(&v140, *(v13 + 32), *(v13 + 40));
          }

          else
          {
            v140 = *(v13 + 32);
          }

          std::string::basic_string[abi:ne200100]<0>(&v137, "");
          std::string::basic_string[abi:ne200100]<0>(&v138, "");
          v139 = 1;
          v15 = v11[14];
          v14 = v11[15];
          if (v15 != v14)
          {
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v140.__r_.__value_.__l.__size_;
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v140;
            }

            else
            {
              v17 = v140.__r_.__value_.__r.__words[0];
            }

            while (1)
            {
              v18 = v15[23];
              v19 = v18;
              if ((v18 & 0x80u) != 0)
              {
                v18 = *(v15 + 1);
              }

              if (v18 == size)
              {
                v20 = v19 >= 0 ? v15 : *v15;
                if (!memcmp(v20, v17, size))
                {
                  break;
                }
              }

              v15 += 56;
              if (v15 == v14)
              {
                goto LABEL_26;
              }
            }

            std::string::operator=(&v137, v15);
            std::string::operator=(&v138, v15 + 1);
            v139 = v15[48];
          }

LABEL_26:
          v21 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v21 = v137.__r_.__value_.__l.__size_;
          }

          if (!v21)
          {
            v24 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v24 = v140.__r_.__value_.__l.__size_;
            }

            if (v24)
            {
              std::operator+<char>();
            }

            else
            {
              std::string::basic_string[abi:ne200100]<0>(&v136, "");
            }

            if (*(a2 + 23) >= 0)
            {
              v30 = *(a2 + 23);
            }

            else
            {
              v30 = a2[1];
            }

            std::string::basic_string[abi:ne200100](&v134, v30 + 41);
            if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v134;
            }

            else
            {
              v31 = v134.__r_.__value_.__r.__words[0];
            }

            if (v30)
            {
              if (*(a2 + 23) >= 0)
              {
                v32 = a2;
              }

              else
              {
                v32 = *a2;
              }

              memmove(v31, v32, v30);
            }

            strcpy(v31 + v30, "defines an unsupported function parameter");
            if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = &v136;
            }

            else
            {
              v33 = v136.__r_.__value_.__r.__words[0];
            }

            if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v34 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v34 = v136.__r_.__value_.__l.__size_;
            }

            v35 = std::string::append(&v134, v33, v34);
            __p = *v35;
            v35->__r_.__value_.__l.__size_ = 0;
            v35->__r_.__value_.__r.__words[2] = 0;
            v35->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::ValidationResults::AddWarning(a3, siri::intelligence::CODE_UNDEF_PARAM, &__p, a7);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v134.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v136.__r_.__value_.__l.__data_);
            }

            goto LABEL_206;
          }

          v23 = *(v13 + 56);
          v22 = *(v13 + 64);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v136, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
          }

          else
          {
            v136 = v138;
          }

          v25 = strlen(siri::intelligence::TYPE_UNKNOWN);
          v26 = v25;
          v27 = SHIBYTE(v136.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            if (v25 != v136.__r_.__value_.__l.__size_)
            {
LABEL_51:
              if (v23)
              {
                goto LABEL_52;
              }

              goto LABEL_49;
            }

            if (v25 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v28 = v136.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (v25 != SHIBYTE(v136.__r_.__value_.__r.__words[2]))
            {
              goto LABEL_51;
            }

            v28 = &v136;
          }

          v29 = !memcmp(v28, siri::intelligence::TYPE_UNKNOWN, v26) || v23 == 0;
          if (!v29)
          {
LABEL_52:
            if (*(v23 + 55) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(v23 + 32), *(v23 + 40));
            }

            else
            {
              __p = *(v23 + 32);
            }

            if (siri::intelligence::IsEquivalentType(&__p, &v136.__r_.__value_.__l.__data_))
            {
              v36 = 0;
            }

            else
            {
              (*(*v23 + 96))(&v134, v23, v120);
              IsEquivalentType = siri::intelligence::IsEquivalentType(&v134, &v136.__r_.__value_.__l.__data_);
              if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v134.__r_.__value_.__l.__data_);
              }

              v36 = !IsEquivalentType;
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
              if (!v36)
              {
                goto LABEL_141;
              }
            }

            else if (!v36)
            {
              goto LABEL_141;
            }

            if (*(a2 + 23) >= 0)
            {
              v38 = *(a2 + 23);
            }

            else
            {
              v38 = a2[1];
            }

            std::string::basic_string[abi:ne200100](&v128, v38 + 28);
            if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v39 = &v128;
            }

            else
            {
              v39 = v128.__r_.__value_.__r.__words[0];
            }

            if (v38)
            {
              if (*(a2 + 23) >= 0)
              {
                v40 = a2;
              }

              else
              {
                v40 = *a2;
              }

              memmove(v39, v40, v38);
            }

            strcpy(v39 + v38, "type mismatch for function '");
            v41 = *(a4 + 23);
            if (v41 >= 0)
            {
              v42 = a4;
            }

            else
            {
              v42 = *a4;
            }

            if (v41 >= 0)
            {
              v43 = *(a4 + 23);
            }

            else
            {
              v43 = *(a4 + 8);
            }

            v44 = std::string::append(&v128, v42, v43);
            v45 = *&v44->__r_.__value_.__l.__data_;
            v129.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
            *&v129.__r_.__value_.__l.__data_ = v45;
            v44->__r_.__value_.__l.__size_ = 0;
            v44->__r_.__value_.__r.__words[2] = 0;
            v44->__r_.__value_.__r.__words[0] = 0;
            v46 = std::string::append(&v129, "': parameter '");
            v47 = *&v46->__r_.__value_.__l.__data_;
            v130.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
            *&v130.__r_.__value_.__l.__data_ = v47;
            v46->__r_.__value_.__l.__size_ = 0;
            v46->__r_.__value_.__r.__words[2] = 0;
            v46->__r_.__value_.__r.__words[0] = 0;
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = &v140;
            }

            else
            {
              v48 = v140.__r_.__value_.__r.__words[0];
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v49 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v49 = v140.__r_.__value_.__l.__size_;
            }

            v50 = std::string::append(&v130, v48, v49);
            v51 = *&v50->__r_.__value_.__l.__data_;
            v131.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
            *&v131.__r_.__value_.__l.__data_ = v51;
            v50->__r_.__value_.__l.__size_ = 0;
            v50->__r_.__value_.__r.__words[2] = 0;
            v50->__r_.__value_.__r.__words[0] = 0;
            v52 = std::string::append(&v131, "' should be type ");
            v53 = *&v52->__r_.__value_.__l.__data_;
            v132.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
            *&v132.__r_.__value_.__l.__data_ = v53;
            v52->__r_.__value_.__l.__size_ = 0;
            v52->__r_.__value_.__r.__words[2] = 0;
            v52->__r_.__value_.__r.__words[0] = 0;
            if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v54 = &v136;
            }

            else
            {
              v54 = v136.__r_.__value_.__r.__words[0];
            }

            if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v55 = v136.__r_.__value_.__l.__size_;
            }

            v56 = std::string::append(&v132, v54, v55);
            v57 = *&v56->__r_.__value_.__l.__data_;
            v133.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
            *&v133.__r_.__value_.__l.__data_ = v57;
            v56->__r_.__value_.__l.__size_ = 0;
            v56->__r_.__value_.__r.__words[2] = 0;
            v56->__r_.__value_.__r.__words[0] = 0;
            v58 = std::string::append(&v133, " but it's type is ");
            v59 = *&v58->__r_.__value_.__l.__data_;
            v134.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
            *&v134.__r_.__value_.__l.__data_ = v59;
            v58->__r_.__value_.__l.__size_ = 0;
            v58->__r_.__value_.__r.__words[2] = 0;
            v58->__r_.__value_.__r.__words[0] = 0;
            (*(*v23 + 96))(&v125, v23, v120);
            if ((v127 & 0x80u) == 0)
            {
              v60 = &v125;
            }

            else
            {
              v60 = v125;
            }

            if ((v127 & 0x80u) == 0)
            {
              v61 = v127;
            }

            else
            {
              v61 = v126;
            }

            v62 = std::string::append(&v134, v60, v61);
            __p = *v62;
            v62->__r_.__value_.__l.__size_ = 0;
            v62->__r_.__value_.__r.__words[2] = 0;
            v62->__r_.__value_.__r.__words[0] = 0;
            siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_TYPE_MISMATCH, &__p, a7);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v127 < 0)
            {
              operator delete(v125);
            }

            if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v134.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v133.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v131.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v130.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v129.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v128.__r_.__value_.__l.__data_);
            }

LABEL_141:
            if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
            {
              if (v137.__r_.__value_.__l.__size_ == 10)
              {
                v63 = v137.__r_.__value_.__r.__words[0];
                goto LABEL_146;
              }
            }

            else if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) == 10)
            {
              v63 = &v137;
LABEL_146:
              v64 = v63->__r_.__value_.__r.__words[0];
              v65 = LOWORD(v63->__r_.__value_.__r.__words[1]);
              v67 = v64 != 0x65736E6F70736572 || v65 != 25673;
              if (a6 && !v67)
              {
                (*(*v23 + 56))(&__p, v23);
                if (a6 + 80 == std::__tree<std::string>::find<std::string>(a6 + 72, &__p.__r_.__value_.__l.__data_))
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v68 = *(a2 + 23);
                  }

                  else
                  {
                    v68 = a2[1];
                  }

                  std::string::basic_string[abi:ne200100](&v128, v68 + 21);
                  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v69 = &v128;
                  }

                  else
                  {
                    v69 = v128.__r_.__value_.__r.__words[0];
                  }

                  if (v68)
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v70 = a2;
                    }

                    else
                    {
                      v70 = *a2;
                    }

                    memmove(v69, v70, v68);
                  }

                  strcpy(v69 + v68, "invalid response ID '");
                  (*(*v23 + 56))(&v125, v23);
                  if ((v127 & 0x80u) == 0)
                  {
                    v71 = &v125;
                  }

                  else
                  {
                    v71 = v125;
                  }

                  if ((v127 & 0x80u) == 0)
                  {
                    v72 = v127;
                  }

                  else
                  {
                    v72 = v126;
                  }

                  v73 = std::string::append(&v128, v71, v72);
                  v74 = *&v73->__r_.__value_.__l.__data_;
                  v129.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
                  *&v129.__r_.__value_.__l.__data_ = v74;
                  v73->__r_.__value_.__l.__size_ = 0;
                  v73->__r_.__value_.__r.__words[2] = 0;
                  v73->__r_.__value_.__r.__words[0] = 0;
                  v75 = std::string::append(&v129, "' for function '");
                  v76 = *&v75->__r_.__value_.__l.__data_;
                  v130.__r_.__value_.__r.__words[2] = v75->__r_.__value_.__r.__words[2];
                  *&v130.__r_.__value_.__l.__data_ = v76;
                  v75->__r_.__value_.__l.__size_ = 0;
                  v75->__r_.__value_.__r.__words[2] = 0;
                  v75->__r_.__value_.__r.__words[0] = 0;
                  v77 = *(a4 + 23);
                  if (v77 >= 0)
                  {
                    v78 = a4;
                  }

                  else
                  {
                    v78 = *a4;
                  }

                  if (v77 >= 0)
                  {
                    v79 = *(a4 + 23);
                  }

                  else
                  {
                    v79 = *(a4 + 8);
                  }

                  v80 = std::string::append(&v130, v78, v79);
                  v81 = *&v80->__r_.__value_.__l.__data_;
                  v131.__r_.__value_.__r.__words[2] = v80->__r_.__value_.__r.__words[2];
                  *&v131.__r_.__value_.__l.__data_ = v81;
                  v80->__r_.__value_.__l.__size_ = 0;
                  v80->__r_.__value_.__r.__words[2] = 0;
                  v80->__r_.__value_.__r.__words[0] = 0;
                  v82 = std::string::append(&v131, "' parameter '");
                  v83 = *&v82->__r_.__value_.__l.__data_;
                  v132.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
                  *&v132.__r_.__value_.__l.__data_ = v83;
                  v82->__r_.__value_.__l.__size_ = 0;
                  v82->__r_.__value_.__r.__words[2] = 0;
                  v82->__r_.__value_.__r.__words[0] = 0;
                  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v84 = &v140;
                  }

                  else
                  {
                    v84 = v140.__r_.__value_.__r.__words[0];
                  }

                  if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v85 = HIBYTE(v140.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v85 = v140.__r_.__value_.__l.__size_;
                  }

                  v86 = std::string::append(&v132, v84, v85);
                  v87 = *&v86->__r_.__value_.__l.__data_;
                  v133.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
                  *&v133.__r_.__value_.__l.__data_ = v87;
                  v86->__r_.__value_.__l.__size_ = 0;
                  v86->__r_.__value_.__r.__words[2] = 0;
                  v86->__r_.__value_.__r.__words[0] = 0;
                  v88 = std::string::append(&v133, "'");
                  v134 = *v88;
                  v88->__r_.__value_.__l.__size_ = 0;
                  v88->__r_.__value_.__r.__words[2] = 0;
                  v88->__r_.__value_.__r.__words[0] = 0;
                  siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_INVALID_ID, &v134, a7);
                  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v134.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v133.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v132.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v131.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v130.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v129.__r_.__value_.__l.__data_);
                  }

                  if (v127 < 0)
                  {
                    operator delete(v125);
                  }

                  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v128.__r_.__value_.__l.__data_);
                  }
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }

            if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }

LABEL_49:
          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_204;
          }

LABEL_203:
          operator delete(v136.__r_.__value_.__l.__data_);
LABEL_204:
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

LABEL_206:
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          v89 = *(v13 + 8);
          if (v89)
          {
            do
            {
              v90 = v89;
              v89 = v89->__r_.__value_.__r.__words[0];
            }

            while (v89);
          }

          else
          {
            do
            {
              v90 = *(v13 + 16);
              v29 = v90->__r_.__value_.__r.__words[0] == v13;
              v13 = v90;
            }

            while (!v29);
          }

          v13 = v90;
        }

        while (v90 != &v141.__r_.__value_.__r.__words[1]);
      }

      std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(&v141, v141.__r_.__value_.__l.__size_);
    }

    v92 = v11[14];
    for (i = v11[15]; v92 != i; v92 += 56)
    {
      if (v92[48] == 1)
      {
        v93 = *a5;
        if (!*a5)
        {
          goto LABEL_226;
        }

        v94 = std::__tree<std::string>::find<std::string>(v93 + 72, v92);
        if (v93 + 80 == v94)
        {
          goto LABEL_226;
        }

        v96 = *(v94 + 56);
        v95 = *(v94 + 64);
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v95);
        }

        if (!v96)
        {
LABEL_226:
          if (*(a2 + 23) >= 0)
          {
            v97 = *(a2 + 23);
          }

          else
          {
            v97 = a2[1];
          }

          std::string::basic_string[abi:ne200100](&__p, v97 + 9);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (v97)
          {
            if (*(a2 + 23) >= 0)
            {
              v99 = a2;
            }

            else
            {
              v99 = *a2;
            }

            memmove(p_p, v99, v97);
          }

          strcpy(p_p + v97, "function ");
          v100 = *(v11 + 79);
          if (v100 >= 0)
          {
            v101 = (v11 + 7);
          }

          else
          {
            v101 = v11[7];
          }

          if (v100 >= 0)
          {
            v102 = *(v11 + 79);
          }

          else
          {
            v102 = v11[8];
          }

          v103 = std::string::append(&__p, v101, v102);
          v104 = *&v103->__r_.__value_.__l.__data_;
          v136.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
          *&v136.__r_.__value_.__l.__data_ = v104;
          v103->__r_.__value_.__l.__size_ = 0;
          v103->__r_.__value_.__r.__words[2] = 0;
          v103->__r_.__value_.__r.__words[0] = 0;
          v105 = std::string::append(&v136, " does not define the required function parameter: '");
          a5 = v122;
          v106 = *&v105->__r_.__value_.__l.__data_;
          v140.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
          *&v140.__r_.__value_.__l.__data_ = v106;
          v105->__r_.__value_.__l.__size_ = 0;
          v105->__r_.__value_.__r.__words[2] = 0;
          v105->__r_.__value_.__r.__words[0] = 0;
          v107 = v92[23];
          if (v107 >= 0)
          {
            v108 = v92;
          }

          else
          {
            v108 = *v92;
          }

          if (v107 >= 0)
          {
            v109 = v92[23];
          }

          else
          {
            v109 = *(v92 + 1);
          }

          v110 = std::string::append(&v140, v108, v109);
          v111 = *&v110->__r_.__value_.__l.__data_;
          v141.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v141.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          v112 = std::string::append(&v141, "'");
          v137 = *v112;
          v112->__r_.__value_.__l.__size_ = 0;
          v112->__r_.__value_.__r.__words[2] = 0;
          v112->__r_.__value_.__r.__words[0] = 0;
          siri::intelligence::ValidationResults::AddError(a3, siri::intelligence::CODE_NO_PARAM, &v137, a7);
          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v141.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v140.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v136.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(v143);
}

void sub_254D02718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a69 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (v74)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v74);
  }

  siri::intelligence::TestParseError::~TestParseError((v75 - 240));
  if (*(v75 - 153) < 0)
  {
    operator delete(*(v75 - 176));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<siri::intelligence::Variable>>>>::destroy(v75 - 144, *(v75 - 136));
  std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(*(v75 - 104));
  _Unwind_Resume(a1);
}

void sub_254D029E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 121) < 0)
  {
    operator delete(*(v59 - 144));
  }

  if (*(v59 - 153) < 0)
  {
    operator delete(*(v59 - 176));
  }

  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    JUMPOUT(0x254D02A58);
  }

  JUMPOUT(0x254D029CCLL);
}

void sub_254D02A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 217) < 0)
  {
    operator delete(*(v56 - 240));
  }

  if (*(v56 - 121) < 0)
  {
    operator delete(*(v56 - 144));
  }

  if (*(v56 - 153) < 0)
  {
    operator delete(*(v56 - 176));
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  JUMPOUT(0x254D02A4CLL);
}

void sub_254D02A68()
{
  if (*(v0 - 217) < 0)
  {
    operator delete(*(v0 - 240));
  }

  JUMPOUT(0x254D029B0);
}

void *siri::intelligence::GetFunctionDefinitionsMap(siri::intelligence *this)
{
  if ((atomic_load_explicit(&qword_280AF4368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4368))
  {
    qword_280AF4398 = 0;
    qword_280AF4390 = 0;
    qword_280AF4388 = &qword_280AF4390;
    __cxa_atexit(std::map<std::string,siri::intelligence::FunctionDefinition>::~map[abi:ne200100], &qword_280AF4388, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4368);
  }

  if (qword_280AF4398)
  {

    return std::map<std::string,siri::intelligence::FunctionDefinition>::map[abi:ne200100](this);
  }

  else
  {
    siri::intelligence::GetFunctionDefinitions(&v6);
    v3 = v6;
    for (i = v7; v3 != i; v3 += 80)
    {
      v5 = *std::__tree<std::string>::__find_equal<std::string>(&qword_280AF4388, &v8, v3);
      if (!v5)
      {
        operator new();
      }

      std::string::operator=((v5 + 56), v3);
      *(v5 + 80) = *(v3 + 24);
      std::string::operator=((v5 + 88), (v3 + 32));
      if (v3 != v5 + 56)
      {
        std::vector<siri::intelligence::FunctionArgument>::__assign_with_size[abi:ne200100]<siri::intelligence::FunctionArgument*,siri::intelligence::FunctionArgument*>(v5 + 112, *(v3 + 56), *(v3 + 64), 0x6DB6DB6DB6DB6DB7 * ((*(v3 + 64) - *(v3 + 56)) >> 3));
      }
    }

    v8 = &v6;
    std::vector<siri::intelligence::FunctionDefinition>::__destroy_vector::operator()[abi:ne200100](&v8);
    return std::map<std::string,siri::intelligence::FunctionDefinition>::map[abi:ne200100](this);
  }
}

void sub_254D02CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13)
{
  operator delete(v13);
  a13 = &a10;
  std::vector<siri::intelligence::FunctionDefinition>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void siri::intelligence::FunctionHandler::GetReturnType(const void **a1@<X1>, uint64_t *a2@<X2>, std::string *a3@<X8>)
{
  siri::intelligence::GetFunctionDefinitionsMap(v32);
  v6 = std::__tree<std::string>::find<std::string>(v32, a1);
  if (&v33 == v6)
  {
    std::string::basic_string[abi:ne200100]<0>(a3, siri::intelligence::TYPE_UNKNOWN);
    goto LABEL_15;
  }

  v7 = v6;
  v8 = v6 + 56;
  v9 = *(v6 + 79);
  if (v9 < 0)
  {
    if (*(v6 + 64) != 10)
    {
      goto LABEL_12;
    }

    v8 = *v8;
  }

  else if (v9 != 10)
  {
LABEL_12:
    if (*(v7 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *(v7 + 88), *(v7 + 96));
    }

    else
    {
      v13 = *(v7 + 88);
      a3->__r_.__value_.__r.__words[2] = *(v7 + 104);
      *&a3->__r_.__value_.__l.__data_ = v13;
    }

    goto LABEL_15;
  }

  v10 = *v8;
  v11 = *(v8 + 8);
  if (v10 != 0x646E497961727261 || v11 != 30821)
  {
    goto LABEL_12;
  }

  v14 = *a2;
  if (!v14)
  {
    goto LABEL_12;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "variable");
  v15 = std::__tree<std::string>::find<std::string>(v14 + 72, __p);
  v16 = v15;
  if (v14 + 80 == v15)
  {
    v23 = 0;
    v21 = 0;
  }

  else
  {
    v17 = *(v15 + 56);
    v18 = *(v16 + 64);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    {
      v22 = 0;
      v21 = 0;
      v23 = 0;
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    v21 = v20;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = v18;
LABEL_25:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      v23 = v22;
      goto LABEL_27;
    }

    v23 = 0;
  }

LABEL_27:
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v21)
  {
    goto LABEL_42;
  }

  if ((*(*v21 + 40))(v21))
  {
    goto LABEL_42;
  }

  v24 = v21[9];
  if (((v21[10] - v24) >> 4) < 1)
  {
    goto LABEL_42;
  }

  v26 = *v24;
  v25 = v24[1];
  if (!v25)
  {
    if (v26)
    {
LABEL_38:
      v27 = *v24;
      v28 = v24[1];
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      goto LABEL_40;
    }

LABEL_42:
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  if (!v26)
  {
    goto LABEL_42;
  }

  v24 = v21[9];
  if (((v21[10] - v24) >> 4) >= 1)
  {
    goto LABEL_38;
  }

  v27 = 0;
  v28 = 0;
LABEL_40:
  if (*(v27 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v27 + 32), *(v27 + 40));
  }

  else
  {
    v29 = *(v27 + 32);
    a3->__r_.__value_.__r.__words[2] = *(v27 + 48);
    *&a3->__r_.__value_.__l.__data_ = v29;
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

LABEL_15:
  std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(v33);
}

void sub_254D03020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(a16);
  _Unwind_Resume(a1);
}

void siri::intelligence::FunctionHandler::Execute(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  siri::intelligence::GetFunctionDefinitionsMap(v34);
  v8 = std::__tree<std::string>::find<std::string>(v34, a1);
  if (&v35 == v8)
  {
    goto LABEL_33;
  }

  v9 = v8;
  v10 = *(v8 + 112);
  v11 = *(v8 + 120);
  if (v10 == v11)
  {
    goto LABEL_20;
  }

  v12 = 1;
  do
  {
    while (*(v10 + 48) == 1)
    {
      v13 = *a2;
      if (!*a2)
      {
        break;
      }

      v14 = std::__tree<std::string>::find<std::string>(v13 + 72, v10);
      if (v13 + 80 != v14)
      {
        v17 = *(v14 + 56);
        v16 = *(v14 + 64);
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        if (v17)
        {
          break;
        }
      }

      v18 = v10;
      if (*(v10 + 23) < 0)
      {
        v18 = *v10;
      }

      if (*(a1 + 23) >= 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = *a1;
      }

      siri::intelligence::Log::Error("Required parameter '%s' not provided for function '%s'. Function will have no effect.", v15, v18, v19);
      v12 = 0;
      v10 += 56;
      if (v10 == v11)
      {
        goto LABEL_33;
      }
    }

    v10 += 56;
  }

  while (v10 != v11);
  if (v12)
  {
LABEL_20:
    v20 = *(v9 + 80);
    v21 = a2[1];
    v32 = *a2;
    v33 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20(&v32, a3);
    if (v33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    if (*(a1 + 23) >= 0)
    {
      v22 = a1;
    }

    else
    {
      v22 = *a1;
    }

    v23 = *(**a2 + 56);
    v24 = v30;
    v23(v30);
    if (v31 < 0)
    {
      v24 = v30[0];
    }

    v26 = *a4;
    if (*a4)
    {
      (*(*v26 + 56))(__p, *a4);
      if (v29 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }
    }

    else
    {
      v27 = "nullptr";
    }

    siri::intelligence::Log::Debug("Executing function %s(%s) -> %s", v25, v22, v24, v27);
    if (v26 && v29 < 0)
    {
      operator delete(__p[0]);
    }

    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  else
  {
LABEL_33:
    *a4 = 0;
    a4[1] = 0;
  }

  std::__tree<std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::__map_value_compare<std::string,std::__value_type<std::string,siri::intelligence::FunctionDefinition>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,siri::intelligence::FunctionDefinition>>>::destroy(v35);
}

void siri::intelligence::FunctionAbs(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      fabs((*(*v7 + 72))(v7));
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "value", "abs");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D03450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionSqrt(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_7;
    }

LABEL_10:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "value", "sqrt");
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((*(*v7 + 72))(v7) != 0.0)
  {
    std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
  }

  siri::intelligence::Log::Error("Function '%s' was passed an illegal value of 0", v8, "sqrt");
LABEL_11:
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D035C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionOdd(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      (*(*v7 + 72))(v7);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL &,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "value", "odd");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D03714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionEven(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "value");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, __p);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
LABEL_7:
      (*(*v7 + 72))(v7);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL &,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "value", "even");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D0386C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionAdd(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "firstValue", "add");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_15:
      v14 = (*(*v8 + 72))(v8);
      v15 = v14 + (*(*v13 + 72))(v13);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "secondValue", "add");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D03A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionSubtract(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "firstValue", "subtract");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_15:
      v14 = (*(*v8 + 72))(v8);
      v15 = v14 - (*(*v13 + 72))(v13);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "secondValue", "subtract");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D03CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionMultiply(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "firstValue", "multiply");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_15:
      v14 = (*(*v8 + 72))(v8);
      v15 = v14 * (*(*v13 + 72))(v13);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "secondValue", "multiply");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D03F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionDivide(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if ((v16 & 0x80000000) == 0)
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "firstValue", "divide");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  else if (v13)
  {
LABEL_15:
    (*(*v8 + 72))(v8);
    if ((*(*v13 + 72))(v13) != 0.0)
    {
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double,0>();
    }

    siri::intelligence::Log::Error("Attempt to divide a number by zero", v14);
    goto LABEL_19;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "secondValue", "divide");
LABEL_19:
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_21:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D04198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionMin(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "firstValue", "min");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_15:
      (*(*v8 + 72))(v8);
      (*(*v13 + 72))(v13);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double const&,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "secondValue", "min");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D043F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionMax(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "firstValue", "max");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_17;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_15:
      (*(*v8 + 72))(v8);
      (*(*v13 + 72))(v13);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableNumber,std::allocator<siri::intelligence::VariableNumber>,char const(&)[1],double const&,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "secondValue", "max");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_17:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D04648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionRandomInt(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "minValue");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, __p);
  if (v4 + 80 == v5)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "minValue", "randomInt");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_22;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(__p, "maxValue");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, __p);
  if (v9 + 80 == v10)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    if (v13)
    {
LABEL_15:
      (*(*v8 + 72))(v8);
      if ((*(*v13 + 72))(v13) >= 1)
      {
        erand48(&siri::intelligence::Utils::sRandomNumberGeneratorState);
      }

      operator new();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "maxValue", "randomInt");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_22:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D04930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_254D049B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x254D049ACLL);
}

void siri::intelligence::FunctionUpper(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(v9, "string");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, v9);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
    if (v7)
    {
LABEL_7:
      (*(*v7 + 56))(v9, v7);
      siri::intelligence::StringToUpper(v9, &__p);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableString,std::allocator<siri::intelligence::VariableString>,char const(&)[1],std::string,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "string", "upper");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D04B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionLower(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  std::string::basic_string[abi:ne200100]<0>(v9, "string");
  v4 = std::__tree<std::string>::find<std::string>(v3 + 72, v9);
  if (v3 + 80 == v4)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = *(v4 + 56);
    v6 = *(v4 + 64);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v10 < 0)
  {
    operator delete(v9[0]);
    if (v7)
    {
LABEL_7:
      (*(*v7 + 56))(v9, v7);
      siri::intelligence::StringToLower(v9, &__p);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableString,std::allocator<siri::intelligence::VariableString>,char const(&)[1],std::string,0>();
    }
  }

  else if (v7)
  {
    goto LABEL_7;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v5, "string", "lower");
  *a2 = 0;
  a2[1] = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_254D04CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionStartsWith(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "string");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "string", "startsWith");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_19;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "prefix");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, &__p.__r_.__value_.__l.__data_);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
LABEL_15:
      (*(*v8 + 56))(&__p, v8);
      (*(*v13 + 56))(v14, v13);
      siri::intelligence::StringStartsWith(&__p, v14);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "prefix", "startsWith");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_19:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D04F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionEndsWith(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "string");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__r_.__value_.__l.__data_);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "string", "endsWith");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_19;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "suffix");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, &__p.__r_.__value_.__l.__data_);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v13)
    {
LABEL_15:
      (*(*v8 + 56))(&__p, v8);
      (*(*v13 + 56))(v14, v13);
      siri::intelligence::StringEndsWith(&__p, v14);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "suffix", "endsWith");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_19:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_254D051C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::FunctionContains(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "haystack");
  v5 = std::__tree<std::string>::find<std::string>(v4 + 72, &__p.__first_);
  if (v4 + 80 == v5)
  {
    v8 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v5 + 56);
    v7 = *(v5 + 64);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_11:
    siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v6, "haystack", "contains");
    *a2 = 0;
    a2[1] = 0;
    goto LABEL_56;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = *a1;
  std::string::basic_string[abi:ne200100]<0>(&__p, "needle");
  v10 = std::__tree<std::string>::find<std::string>(v9 + 72, &__p.__first_);
  if (v9 + 80 == v10)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v13 = *(v10 + 56);
    v12 = *(v10 + 64);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(__p.__end_) < 0)
  {
    operator delete(__p.__first_);
    if (v13)
    {
LABEL_15:
      if (v8[55] < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(v8 + 4), *(v8 + 5));
      }

      else
      {
        *&__p.__first_ = *(v8 + 2);
        __p.__end_ = *(v8 + 6);
      }

      v14 = strlen(siri::intelligence::TYPE_ARRAY[0]);
      if ((SHIBYTE(__p.__end_) & 0x8000000000000000) != 0)
      {
        if (v14 == __p.__begin_)
        {
          if (v14 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          first = __p.__first_;
          v16 = memcmp(__p.__first_, siri::intelligence::TYPE_ARRAY[0], v14);
          operator delete(first);
          if (!v16)
          {
LABEL_27:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v17 = **v8;
            v19 = 0;
            if (v7 && v18)
            {
              atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
              v19 = v7;
            }

            v37 = 0uLL;
            v38 = 0;
            std::vector<std::shared_ptr<siri::intelligence::Variable>>::__init_with_size[abi:ne200100]<std::shared_ptr<siri::intelligence::Variable>*,std::shared_ptr<siri::intelligence::Variable>*>(&v37, v18[9], v18[10], (v18[10] - v18[9]) >> 4);
            if (v19)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v19);
            }

            v21 = *(&v37 + 1);
            for (i = v37; i != v21; i += 2)
            {
              v22 = *i;
              v23 = i[1];
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v22)
              {
                (*(*v22 + 56))(v35);
                v24 = v40;
                if (v40 >= v41)
                {
                  v26 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3);
                  v27 = v26 + 1;
                  if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
                  }

                  if (0x5555555555555556 * ((v41 - v39) >> 3) > v27)
                  {
                    v27 = 0x5555555555555556 * ((v41 - v39) >> 3);
                  }

                  if (0xAAAAAAAAAAAAAAABLL * ((v41 - v39) >> 3) >= 0x555555555555555)
                  {
                    v28 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v28 = v27;
                  }

                  __p.__end_cap_.__value_ = &v39;
                  if (v28)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v39, v28);
                  }

                  v29 = 8 * ((v40 - v39) >> 3);
                  v30 = *v35;
                  *(v29 + 16) = v36;
                  *v29 = v30;
                  v35[1] = 0;
                  v36 = 0;
                  v35[0] = 0;
                  v31 = 24 * v26 + 24;
                  v32 = (24 * v26 - (v40 - v39));
                  memcpy((v29 - (v40 - v39)), v39, v40 - v39);
                  v33 = v39;
                  v34 = v41;
                  v39 = v32;
                  v40 = v31;
                  v41 = 0;
                  __p.__end_ = v33;
                  __p.__end_cap_.__value_ = v34;
                  __p.__first_ = v33;
                  __p.__begin_ = v33;
                  std::__split_buffer<std::string>::~__split_buffer(&__p);
                  v40 = v31;
                  if (SHIBYTE(v36) < 0)
                  {
                    operator delete(v35[0]);
                  }
                }

                else
                {
                  v25 = *v35;
                  *(v40 + 2) = v36;
                  *v24 = v25;
                  v40 = v24 + 24;
                }
              }

              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }
            }

            __p.__first_ = &v37;
            std::vector<std::shared_ptr<siri::intelligence::Variable>>::__destroy_vector::operator()[abi:ne200100](&__p);
            (*(*v13 + 56))(&__p, v13);
            LOBYTE(v35[0]) = siri::intelligence::VectorContains(&v39, &__p);
            std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
          }
        }

        else
        {
          operator delete(__p.__first_);
        }
      }

      else if (v14 == SHIBYTE(__p.__end_) && !memcmp(&__p, siri::intelligence::TYPE_ARRAY[0], v14))
      {
        goto LABEL_27;
      }

      (*(*v8 + 56))(&__p, v8);
      (*(*v13 + 56))(&v39, v13);
      v42 = siri::intelligence::StringContains(&__p, &v39);
      std::allocate_shared[abi:ne200100]<siri::intelligence::VariableBoolean,std::allocator<siri::intelligence::VariableBoolean>,char const(&)[1],BOOL,0>();
    }
  }

  else if (v13)
  {
    goto LABEL_15;
  }

  siri::intelligence::Log::Error("No value provided for '%s' parameter for function '%s'", v11, "needle", "contains");
  *a2 = 0;
  a2[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_56:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}