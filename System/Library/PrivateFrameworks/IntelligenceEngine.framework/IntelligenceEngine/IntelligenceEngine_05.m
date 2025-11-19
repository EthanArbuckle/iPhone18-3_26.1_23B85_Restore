void sub_254CD414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_ReferenceResponse::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_ReferenceResponse::Clear(this);

    protobuf::Intelligence_ReferenceResponse::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_ReferenceResponse::InternalSwap(protobuf::Intelligence_ReferenceResponse *this, protobuf::Intelligence_ReferenceResponse *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v69;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_76;
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

LABEL_76:
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
  v13 = *(this + 6);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 6);
  }

  v14 = *(a2 + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 6);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 7);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 7);
  }

  v19 = *(a2 + 7);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 7);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 8);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 8) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 8);
  }

  v24 = *(a2 + 8);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 8);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 9);
  if (v28 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v28 = *(this + 9);
  }

  v29 = *(a2 + 9);
  if (v29 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v29 = *(a2 + 9);
  }

  v30 = v28[2];
  v31 = *v28;
  v32 = v29[2];
  *v28 = *v29;
  v28[2] = v32;
  *v29 = v31;
  v29[2] = v30;
LABEL_32:
  v33 = *(this + 10);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 10) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_38;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(this + 10);
  }

  v34 = *(a2 + 10);
  if (v34 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v34 = *(a2 + 10);
  }

  v35 = v33[2];
  v36 = *v33;
  v37 = v34[2];
  *v33 = *v34;
  v33[2] = v37;
  *v34 = v36;
  v34[2] = v35;
LABEL_38:
  v38 = *(this + 11);
  if (v38 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 11) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_44;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v38 = *(this + 11);
  }

  v39 = *(a2 + 11);
  if (v39 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v39 = *(a2 + 11);
  }

  v40 = v38[2];
  v41 = *v38;
  v42 = v39[2];
  *v38 = *v39;
  v38[2] = v42;
  *v39 = v41;
  v39[2] = v40;
LABEL_44:
  v43 = *(this + 12);
  if (v43 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 12) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_50;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v43 = *(this + 12);
  }

  v44 = *(a2 + 12);
  if (v44 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v44 = *(a2 + 12);
  }

  v45 = v43[2];
  v46 = *v43;
  v47 = v44[2];
  *v43 = *v44;
  v43[2] = v47;
  *v44 = v46;
  v44[2] = v45;
LABEL_50:
  v48 = *(this + 13);
  if (v48 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 13) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_56;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 13, 0, &google::protobuf::internal::fixed_address_empty_string);
    v48 = *(this + 13);
  }

  v49 = *(a2 + 13);
  if (v49 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 13, 0, &google::protobuf::internal::fixed_address_empty_string);
    v49 = *(a2 + 13);
  }

  v50 = v48[2];
  v51 = *v48;
  v52 = v49[2];
  *v48 = *v49;
  v48[2] = v52;
  *v49 = v51;
  v49[2] = v50;
LABEL_56:
  v53 = *(this + 14);
  if (v53 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 14) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_62;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v53 = *(this + 14);
  }

  v54 = *(a2 + 14);
  if (v54 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v54 = *(a2 + 14);
  }

  v55 = v53[2];
  v56 = *v53;
  v57 = v54[2];
  *v53 = *v54;
  v53[2] = v57;
  *v54 = v56;
  v54[2] = v55;
LABEL_62:
  v58 = *(this + 15);
  if (v58 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 15) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_68;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v58 = *(this + 15);
  }

  v59 = *(a2 + 15);
  if (v59 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 15, 0, &google::protobuf::internal::fixed_address_empty_string);
    v59 = *(a2 + 15);
  }

  v60 = v58[2];
  v61 = *v58;
  v62 = v59[2];
  *v58 = *v59;
  v58[2] = v62;
  *v59 = v61;
  v59[2] = v60;
LABEL_68:
  v63 = *(this + 16);
  if (v63 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 16) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_74;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v63 = *(this + 16);
  }

  v64 = *(a2 + 16);
  if (v64 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 16, 0, &google::protobuf::internal::fixed_address_empty_string);
    v64 = *(a2 + 16);
  }

  v65 = v63[2];
  v66 = *v63;
  v67 = v64[2];
  *v63 = *v64;
  v63[2] = v67;
  *v64 = v66;
  v64[2] = v65;
LABEL_74:
  v68 = *(this + 136);
  *(this + 136) = *(a2 + 136);
  *(a2 + 136) = v68;
}

protobuf::Intelligence_ResponseGroup *protobuf::Intelligence_ResponseGroup::Intelligence_ResponseGroup(protobuf::Intelligence_ResponseGroup *this)
{
  *(this + 8) = 0u;
  *this = &unk_286719910;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_ResponseGroup_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_ResponseGroup_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 120) = 0;
  return this;
}

void sub_254CD4868(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_ResponseGroup *protobuf::Intelligence_ResponseGroup::Intelligence_ResponseGroup(protobuf::Intelligence_ResponseGroup *this, const protobuf::Intelligence_ResponseGroup *a2)
{
  *this = &unk_286719910;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 6);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v7);
    }
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 7);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 56, v8);
    }
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 8);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 64, v9);
    }
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 8) != 0)
  {
    v10 = *(a2 + 9);
    if (v10 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v10);
    }
  }

  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x10) != 0)
  {
    v11 = *(a2 + 10);
    if (v11 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v11);
    }
  }

  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x20) != 0)
  {
    v12 = *(a2 + 11);
    if (v12 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 88, v12);
    }
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x40) != 0)
  {
    v13 = *(a2 + 12);
    if (v13 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 96, v13);
    }
  }

  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x80) != 0)
  {
    v14 = *(a2 + 13);
    if (v14 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 104, v14);
    }
  }

  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x100) != 0)
  {
    v15 = *(a2 + 14);
    if (v15 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 112, v15);
    }
  }

  *(this + 120) = *(a2 + 120);
  return this;
}

void sub_254CD4A44(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_ResponseGroup::~Intelligence_ResponseGroup(protobuf::Intelligence_ResponseGroup *this)
{
  *this = &unk_286719910;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 8);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 9);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 10);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x259C29D90](v10, 0x1012C40EC159624);
  }

  v11 = *(this + 11);
  if (v11 != &google::protobuf::internal::fixed_address_empty_string && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    MEMORY[0x259C29D90](v11, 0x1012C40EC159624);
  }

  v12 = *(this + 12);
  if (v12 != &google::protobuf::internal::fixed_address_empty_string && v12)
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x259C29D90](v12, 0x1012C40EC159624);
  }

  v13 = *(this + 13);
  if (v13 != &google::protobuf::internal::fixed_address_empty_string && v13)
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    MEMORY[0x259C29D90](v13, 0x1012C40EC159624);
  }

  v14 = *(this + 14);
  if (v14 != &google::protobuf::internal::fixed_address_empty_string && v14)
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x259C29D90](v14, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_ResponseGroup::~Intelligence_ResponseGroup(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_ResponseGroup::default_instance(protobuf::Intelligence_ResponseGroup *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_ResponseGroup_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_ResponseGroup_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_ResponseGroup_default_instance_;
}

void protobuf::Intelligence_ResponseGroup::Clear(protobuf::Intelligence_ResponseGroup *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_41;
  }

  if (v2)
  {
    v3 = *(this + 6);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v5 = *(this + 8);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(this + 10);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(this + 12);
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_39;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v4 = *(this + 7);
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_23:
  v6 = *(this + 9);
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_31:
  v8 = *(this + 11);
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_9:
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v10 = *(this + 13);
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  *v10 = 0;
  *(v10 + 23) = 0;
LABEL_41:
  if ((v2 & 0x100) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v11 = *(this + 14);
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
  }

  else
  {
    *v11 = 0;
    *(v11 + 23) = 0;
  }

LABEL_46:
  v13 = *(this + 8);
  v12 = this + 8;
  v12[112] = 0;
  *(v12 + 2) = 0;
  if (v13)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v12);
  }
}

google::protobuf::internal *protobuf::Intelligence_ResponseGroup::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v29 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v29, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v29 + 1);
      LODWORD(v8) = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, v8);
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v12;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v9 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_80;
            }

            *(a1 + 16) |= 1u;
            v10 = *(a1 + 48);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
            }
          }

          else
          {
            if (v9 != 2 || v8 != 18)
            {
              goto LABEL_80;
            }

            *(a1 + 16) |= 2u;
            v10 = *(a1 + 56);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
            }
          }
        }

        else if (v9 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_80;
          }

          *(a1 + 16) |= 4u;
          v10 = *(a1 + 64);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 64, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        else if (v9 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_80;
          }

          *(a1 + 16) |= 8u;
          v10 = *(a1 + 72);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        else
        {
          if (v9 != 5 || v8 != 42)
          {
            goto LABEL_80;
          }

          *(a1 + 16) |= 0x10u;
          v10 = *(a1 + 80);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
          }
        }

        goto LABEL_54;
      }

      if (v8 >> 3 > 8)
      {
        if (v9 != 9)
        {
          if (v9 == 10)
          {
            if (v8 != 82)
            {
              goto LABEL_80;
            }

            *(a1 + 16) |= 0x80u;
            v10 = *(a1 + 104);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 104, &google::protobuf::internal::fixed_address_empty_string);
            }
          }

          else
          {
            if (v9 != 11 || v8 != 90)
            {
              goto LABEL_80;
            }

            *(a1 + 16) |= 0x100u;
            v10 = *(a1 + 112);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 112, &google::protobuf::internal::fixed_address_empty_string);
            }
          }

          goto LABEL_54;
        }

        if (v8 != 74)
        {
          goto LABEL_80;
        }

        v17 = TagFallback - 1;
        while (2)
        {
          v18 = v17 + 1;
          v29 = (v17 + 1);
          v19 = *(a1 + 40);
          if (v19)
          {
            v20 = *(a1 + 32);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(a1 + 32) = v20 + 1;
              AlignedAndAddCleanup = *&v19[2 * v20 + 2];
              goto LABEL_76;
            }

            if (v21 == *(a1 + 36))
            {
LABEL_70:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v21 + 1);
              v19 = *(a1 + 40);
              v21 = *v19;
            }

            *v19 = v21 + 1;
            v23 = *(a1 + 24);
            if (!v23)
            {
              operator new();
            }

            if (v23[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v23, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) + 8 * v24;
            *(a1 + 32) = v24 + 1;
            *(v25 + 8) = AlignedAndAddCleanup;
            v18 = v29;
LABEL_76:
            v17 = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v18, this);
            v29 = v17;
            if (!v17)
            {
              goto LABEL_86;
            }

            if (*this <= v17 || *v17 != 74)
            {
              goto LABEL_56;
            }

            continue;
          }

          break;
        }

        v21 = *(a1 + 36);
        goto LABEL_70;
      }

      if (v9 != 6)
      {
        if (v9 != 7)
        {
          if (v9 == 8 && v8 == 66)
          {
            *(a1 + 16) |= 0x40u;
            v10 = *(a1 + 96);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 96, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_54;
          }

LABEL_80:
          if (v8)
          {
            v26 = (v8 & 7) == 4;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            this[10].i32[0] = v8 - 1;
            goto LABEL_3;
          }

          v13 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
LABEL_55:
          v29 = v13;
          if (!v13)
          {
            goto LABEL_86;
          }

          goto LABEL_56;
        }

        if (v8 != 58)
        {
          goto LABEL_80;
        }

        *(a1 + 16) |= 0x20u;
        v10 = *(a1 + 88);
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 88, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_54:
        v13 = google::protobuf::internal::InlineGreedyStringParser(v10, TagFallback, this);
        goto LABEL_55;
      }

      if (v8 != 48)
      {
        goto LABEL_80;
      }

      v5 |= 0x200u;
      v15 = (TagFallback + 1);
      v14 = *TagFallback;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_62;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (TagFallback + 2);
LABEL_62:
        v29 = v15;
        *(a1 + 120) = v14 != 0;
        goto LABEL_56;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(TagFallback, v14);
      v29 = v27;
      *(a1 + 120) = v28 != 0;
      if (!v27)
      {
LABEL_86:
        TagFallback = 0;
        goto LABEL_3;
      }

LABEL_56:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v29, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v29 + 2);
LABEL_7:
    v29 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v29;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_ResponseGroup::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_ResponseGroup *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 8), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 9), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 10), v4);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 120);
  *v4 = 48;
  v4[1] = v14;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_36:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 11), v4);
  if ((v6 & 0x40) != 0)
  {
LABEL_9:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 8, *(this + 12), v4);
  }

LABEL_10:
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 9, v9, v4);
      }

      else
      {
        *v4 = 74;
        v4[1] = v10;
        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        memcpy(v4 + 2, v11, v10);
        v4 += v10 + 2;
      }
    }
  }

  if ((v6 & 0x80) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 10, *(this + 13), v4);
  }

  if ((v6 & 0x100) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 11, *(this + 14), v4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v17 = *v15;
    v16 = *(v15 + 8);
  }

  else
  {
    v17 = v15;
  }

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v17, v16, v4);
}

uint64_t protobuf::Intelligence_ResponseGroup::ByteSizeLong(protobuf::Intelligence_ResponseGroup *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 4);
  if (!*(this + 4))
  {
    goto LABEL_20;
  }

  if (v7)
  {
    v16 = *(this + 6);
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_34;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  v19 = *(this + 7);
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_34:
  v22 = *(this + 8);
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) == 0)
  {
LABEL_13:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_37:
  v25 = *(this + 9);
  v26 = *(v25 + 23);
  v27 = *(v25 + 8);
  if ((v26 & 0x80u) == 0)
  {
    v27 = v26;
  }

  v4 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

LABEL_43:
    v31 = *(this + 11);
    v32 = *(v31 + 23);
    v33 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v33 = v32;
    }

    v4 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 0x40) == 0)
    {
LABEL_16:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_40:
  v28 = *(this + 10);
  v29 = *(v28 + 23);
  v30 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v30 = v29;
  }

  v4 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_15:
  if ((v7 & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_46:
  v34 = *(this + 12);
  v35 = *(v34 + 23);
  v36 = *(v34 + 8);
  if ((v35 & 0x80u) == 0)
  {
    v36 = v35;
  }

  v4 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x80) != 0)
  {
LABEL_17:
    v8 = *(this + 13);
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_20:
  if ((v7 & 0x300) != 0)
  {
    if ((v7 & 0x100) != 0)
    {
      v11 = *(this + 14);
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += (v7 >> 8) & 2;
  }

  v14 = *(this + 1);
  if (v14)
  {
    v37 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v38 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v38 < 0)
    {
      v38 = *(v37 + 8);
    }

    v4 += v38;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_ResponseGroup::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_ResponseGroup::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_ResponseGroup::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 4575);
    v4 = google::protobuf::internal::LogMessage::operator<<(v26, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v25, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v26[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v7 = this[6];
      *(this + 4) |= 1u;
      v8 = a2[6];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 6), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[7];
      *(this + 4) |= 2u;
      v10 = a2[7];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 7), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = this[8];
      *(this + 4) |= 4u;
      v12 = a2[8];
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 8), v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      v13 = this[9];
      *(this + 4) |= 8u;
      v14 = a2[9];
      if (v13 != v14)
      {
        if (v13 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 9), v14);
        }

        std::string::operator=(v13, v14);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      v15 = this[10];
      *(this + 4) |= 0x10u;
      v16 = a2[10];
      if (v15 != v16)
      {
        if (v15 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 10), v16);
        }

        std::string::operator=(v15, v16);
      }
    }

    if ((v6 & 0x20) != 0)
    {
      v17 = this[11];
      *(this + 4) |= 0x20u;
      v18 = a2[11];
      if (v17 != v18)
      {
        if (v17 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 11), v18);
        }

        std::string::operator=(v17, v18);
      }
    }

    if ((v6 & 0x40) != 0)
    {
      v19 = this[12];
      *(this + 4) |= 0x40u;
      v20 = a2[12];
      if (v19 != v20)
      {
        if (v19 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 12), v20);
        }

        std::string::operator=(v19, v20);
      }
    }

    if ((v6 & 0x80) != 0)
    {
      v21 = this[13];
      *(this + 4) |= 0x80u;
      v22 = a2[13];
      if (v21 != v22)
      {
        if (v21 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 13), v22);
        }

        std::string::operator=(v21, v22);
      }
    }
  }

  if ((v6 & 0x300) != 0)
  {
    if ((v6 & 0x100) != 0)
    {
      v23 = this[14];
      *(this + 4) |= 0x100u;
      v24 = a2[14];
      if (v23 != v24)
      {
        if (v23 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 14), v24);
        }

        std::string::operator=(v23, v24);
      }
    }

    if ((v6 & 0x200) != 0)
    {
      *(this + 120) = *(a2 + 120);
    }

    *(this + 4) |= v6;
  }
}

void sub_254CD5E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_ResponseGroup::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_ResponseGroup::Clear(this);

    protobuf::Intelligence_ResponseGroup::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_ResponseGroup::InternalSwap(protobuf::Intelligence_ResponseGroup *this, protobuf::Intelligence_ResponseGroup *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v59;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_64;
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

LABEL_64:
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
  v13 = *(this + 6);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 6);
  }

  v14 = *(a2 + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 6);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 7);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 7);
  }

  v19 = *(a2 + 7);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 7);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 8);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 8) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 8);
  }

  v24 = *(a2 + 8);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 8);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 9);
  if (v28 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v28 = *(this + 9);
  }

  v29 = *(a2 + 9);
  if (v29 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v29 = *(a2 + 9);
  }

  v30 = v28[2];
  v31 = *v28;
  v32 = v29[2];
  *v28 = *v29;
  v28[2] = v32;
  *v29 = v31;
  v29[2] = v30;
LABEL_32:
  v33 = *(this + 10);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 10) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_38;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(this + 10);
  }

  v34 = *(a2 + 10);
  if (v34 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v34 = *(a2 + 10);
  }

  v35 = v33[2];
  v36 = *v33;
  v37 = v34[2];
  *v33 = *v34;
  v33[2] = v37;
  *v34 = v36;
  v34[2] = v35;
LABEL_38:
  v38 = *(this + 11);
  if (v38 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 11) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_44;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v38 = *(this + 11);
  }

  v39 = *(a2 + 11);
  if (v39 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v39 = *(a2 + 11);
  }

  v40 = v38[2];
  v41 = *v38;
  v42 = v39[2];
  *v38 = *v39;
  v38[2] = v42;
  *v39 = v41;
  v39[2] = v40;
LABEL_44:
  v43 = *(this + 12);
  if (v43 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 12) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_50;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v43 = *(this + 12);
  }

  v44 = *(a2 + 12);
  if (v44 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 12, 0, &google::protobuf::internal::fixed_address_empty_string);
    v44 = *(a2 + 12);
  }

  v45 = v43[2];
  v46 = *v43;
  v47 = v44[2];
  *v43 = *v44;
  v43[2] = v47;
  *v44 = v46;
  v44[2] = v45;
LABEL_50:
  v48 = *(this + 13);
  if (v48 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 13) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_56;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 13, 0, &google::protobuf::internal::fixed_address_empty_string);
    v48 = *(this + 13);
  }

  v49 = *(a2 + 13);
  if (v49 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 13, 0, &google::protobuf::internal::fixed_address_empty_string);
    v49 = *(a2 + 13);
  }

  v50 = v48[2];
  v51 = *v48;
  v52 = v49[2];
  *v48 = *v49;
  v48[2] = v52;
  *v49 = v51;
  v49[2] = v50;
LABEL_56:
  v53 = *(this + 14);
  if (v53 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 14) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_62;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v53 = *(this + 14);
  }

  v54 = *(a2 + 14);
  if (v54 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v54 = *(a2 + 14);
  }

  v55 = v53[2];
  v56 = *v53;
  v57 = v54[2];
  *v53 = *v54;
  v53[2] = v57;
  *v54 = v56;
  v54[2] = v55;
LABEL_62:
  v58 = *(this + 120);
  *(this + 120) = *(a2 + 120);
  *(a2 + 120) = v58;
}

protobuf::Intelligence_InputGroup_Interjection *protobuf::Intelligence_InputGroup_Interjection::Intelligence_InputGroup_Interjection(protobuf::Intelligence_InputGroup_Interjection *this)
{
  *this = &unk_2867199A0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Interjection_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Interjection_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = 0;
  *(this + 44) = 0;
  return this;
}

protobuf::Intelligence_InputGroup_Interjection *protobuf::Intelligence_InputGroup_Interjection::Intelligence_InputGroup_Interjection(protobuf::Intelligence_InputGroup_Interjection *this, const protobuf::Intelligence_InputGroup_Interjection *a2)
{
  *this = &unk_2867199A0;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, v7);
    }
  }

  v8 = *(a2 + 10);
  *(this + 44) = *(a2 + 44);
  *(this + 10) = v8;
  return this;
}

void protobuf::Intelligence_InputGroup_Interjection::~Intelligence_InputGroup_Interjection(protobuf::Intelligence_InputGroup_Interjection *this)
{
  *this = &unk_2867199A0;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_InputGroup_Interjection::~Intelligence_InputGroup_Interjection(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_InputGroup_Interjection::default_instance(protobuf::Intelligence_InputGroup_Interjection *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Interjection_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Interjection_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_InputGroup_Interjection_default_instance_;
}

void protobuf::Intelligence_InputGroup_Interjection::Clear(protobuf::Intelligence_InputGroup_Interjection *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 3);
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(this + 4);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  if ((v1 & 0x7C) != 0)
  {
    *(this + 44) = 0;
    *(this + 10) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 2) = 0;
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v4);
  }
}

google::protobuf::internal *protobuf::Intelligence_InputGroup_Interjection::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *this)
{
  v40 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v40, this[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      TagFallback = (v40 + 1);
      LODWORD(v8) = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      v8 = (v8 + (*TagFallback << 7) - 128);
      if ((*TagFallback & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, v8);
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_3;
      }

      LODWORD(v8) = v16;
LABEL_8:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v9 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_54;
          }

          v5 |= 4u;
          v18 = (TagFallback + 1);
          v17 = *TagFallback;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (TagFallback + 2);
LABEL_38:
            v40 = v18;
            *(a1 + 40) = v17 != 0;
            goto LABEL_60;
          }

          v30 = google::protobuf::internal::VarintParseSlow64(TagFallback, v17);
          v40 = v30;
          *(a1 + 40) = v31 != 0;
          if (!v30)
          {
            goto LABEL_71;
          }
        }

        else if (v9 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_54;
          }

          v5 |= 8u;
          v27 = (TagFallback + 1);
          v26 = *TagFallback;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_53;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (TagFallback + 2);
LABEL_53:
            v40 = v27;
            *(a1 + 41) = v26 != 0;
            goto LABEL_60;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(TagFallback, v26);
          v40 = v38;
          *(a1 + 41) = v39 != 0;
          if (!v38)
          {
LABEL_71:
            TagFallback = 0;
            goto LABEL_3;
          }
        }

        else
        {
          if (v9 != 3 || v8 != 24)
          {
            goto LABEL_54;
          }

          v5 |= 0x10u;
          v13 = (TagFallback + 1);
          v12 = *TagFallback;
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v13 = (TagFallback + 2);
LABEL_25:
            v40 = v13;
            *(a1 + 42) = v12 != 0;
            goto LABEL_60;
          }

          v36 = google::protobuf::internal::VarintParseSlow64(TagFallback, v12);
          v40 = v36;
          *(a1 + 42) = v37 != 0;
          if (!v36)
          {
            goto LABEL_71;
          }
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v9 != 6)
        {
          if (v9 == 7 && v8 == 58)
          {
            *(a1 + 16) |= 2u;
            v10 = *(a1 + 32);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
            }

LABEL_31:
            v15 = google::protobuf::internal::InlineGreedyStringParser(v10, TagFallback, this);
LABEL_59:
            v40 = v15;
            if (!v15)
            {
              goto LABEL_71;
            }

            goto LABEL_60;
          }

LABEL_54:
          if (v8)
          {
            v29 = (v8 & 7) == 4;
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            this[10].i32[0] = v8 - 1;
            goto LABEL_3;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), TagFallback, this);
          goto LABEL_59;
        }

        if (v8 != 48)
        {
          goto LABEL_54;
        }

        v5 |= 0x20u;
        v24 = (TagFallback + 1);
        v23 = *TagFallback;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = (TagFallback + 2);
LABEL_48:
          v40 = v24;
          *(a1 + 43) = v23 != 0;
          goto LABEL_60;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(TagFallback, v23);
        v40 = v34;
        *(a1 + 43) = v35 != 0;
        if (!v34)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v9 != 4)
        {
          if (v9 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 1u;
            v10 = *(a1 + 24);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_31;
          }

          goto LABEL_54;
        }

        if (v8 != 32)
        {
          goto LABEL_54;
        }

        v5 |= 0x40u;
        v21 = (TagFallback + 1);
        v20 = *TagFallback;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (TagFallback + 2);
LABEL_43:
          v40 = v21;
          *(a1 + 44) = v20 != 0;
          goto LABEL_60;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(TagFallback, v20);
        v40 = v32;
        *(a1 + 44) = v33 != 0;
        if (!v32)
        {
          goto LABEL_71;
        }
      }

LABEL_60:
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v40, this[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    TagFallback = (v40 + 2);
LABEL_7:
    v40 = TagFallback;
    goto LABEL_8;
  }

LABEL_2:
  TagFallback = v40;
LABEL_3:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_InputGroup_Interjection::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_InputGroup_Interjection *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 40);
    *v4 = 8;
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 41);
  *v4 = 16;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 42);
  *v4 = 24;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(this + 44);
  *v4 = 32;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 3), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_24:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 43);
  *v4 = 48;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
LABEL_8:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 4), v4);
  }

LABEL_9:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v14 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v16 = *v14;
    v15 = *(v14 + 8);
  }

  else
  {
    v16 = v14;
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v16, v15, v4);
}

uint64_t protobuf::Intelligence_InputGroup_Interjection::ByteSizeLong(protobuf::Intelligence_InputGroup_Interjection *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v1)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(this + 4);
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v10.i64[0] = 0x200000002;
  v10.i64[1] = 0x200000002;
  v3 = v2 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v1), xmmword_254E1EBB0), v10)) + ((v1 >> 5) & 2);
LABEL_13:
  v11 = *(this + 1);
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v14 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v14 < 0)
    {
      v14 = *(v13 + 8);
    }

    v3 += v14;
  }

  *(this + 5) = v3;
  return v3;
}

void protobuf::Intelligence_InputGroup_Interjection::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_InputGroup_Interjection::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_InputGroup_Interjection::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 4982);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x7F) != 0)
  {
    if (v6)
    {
      v7 = this[3];
      *(this + 4) |= 1u;
      v8 = a2[3];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 3), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[4];
      *(this + 4) |= 2u;
      v10 = a2[4];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 4), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      *(this + 40) = *(a2 + 40);
      if ((v6 & 8) == 0)
      {
LABEL_18:
        if ((v6 & 0x10) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }
    }

    else if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    *(this + 41) = *(a2 + 41);
    if ((v6 & 0x10) == 0)
    {
LABEL_19:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(this + 42) = *(a2 + 42);
    if ((v6 & 0x20) == 0)
    {
LABEL_20:
      if ((v6 & 0x40) == 0)
      {
LABEL_22:
        *(this + 4) |= v6;
        return;
      }

LABEL_21:
      *(this + 44) = *(a2 + 44);
      goto LABEL_22;
    }

LABEL_27:
    *(this + 43) = *(a2 + 43);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_254CD6FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Interjection::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_InputGroup_Interjection::Clear(this);

    protobuf::Intelligence_InputGroup_Interjection::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_InputGroup_Interjection::InternalSwap(protobuf::Intelligence_InputGroup_Interjection *this, protobuf::Intelligence_InputGroup_Interjection *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v28;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
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

LABEL_22:
    google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v5);
    goto LABEL_7;
  }

  if (v6)
  {
    goto LABEL_5;
  }

LABEL_8:
  v12 = *(this + 3);
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  if (v12 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 3) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 3, 0, &google::protobuf::internal::fixed_address_empty_string);
    v12 = *(this + 3);
  }

  v14 = *(a2 + 3);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 3, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 3);
  }

  v15 = v12[2];
  v16 = *v12;
  v17 = v14[2];
  *v12 = *v14;
  v12[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 4);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 4) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 4);
  }

  v19 = *(a2 + 4);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 4, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 4);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v23;
  v24 = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v24;
  v25 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v25;
  v26 = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v26;
  v27 = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v27;
}

protobuf::Intelligence_InputGroup_Intent *protobuf::Intelligence_InputGroup_Intent::Intelligence_InputGroup_Intent(protobuf::Intelligence_InputGroup_Intent *this)
{
  *this = &unk_286719A30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Intent_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Intent_intelligence_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = 0;
  return this;
}

void sub_254CD7310(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 48);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_InputGroup_Intent *protobuf::Intelligence_InputGroup_Intent::Intelligence_InputGroup_Intent(protobuf::Intelligence_InputGroup_Intent *this, const protobuf::Intelligence_InputGroup_Intent *a2)
{
  *this = &unk_286719A30;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, a2 + 48);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 9);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v7);
    }
  }

  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 10);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v8);
    }
  }

  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 11);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 88, v9);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (!*(a2 + 12))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 14635);
      v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || interjection_settings_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 12) = 0;
  return this;
}

void sub_254CD74D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Intent::~Intelligence_InputGroup_Intent(protobuf::Intelligence_InputGroup_Intent *this)
{
  *this = &unk_286719A30;
  v2 = *(this + 9);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 10);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 11);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  if (this != &protobuf::_Intelligence_InputGroup_Intent_default_instance_)
  {
    v8 = *(this + 12);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 48);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_InputGroup_Intent::~Intelligence_InputGroup_Intent(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_InputGroup_Intent::default_instance(protobuf::Intelligence_InputGroup_Intent *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Intent_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Intent_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_InputGroup_Intent_default_instance_;
}

void protobuf::Intelligence_InputGroup_Intent::Clear(protobuf::Intelligence_InputGroup_Intent *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v4 = *(this + 10);
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v3 = *(this + 9);
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v5 = *(this + 11);
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_19:
  v6 = *(this + 12);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 5156);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: interjection_settings_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = *(this + 12);
  }

  protobuf::Intelligence_InputGroup_Interjection::Clear(v6);
LABEL_22:
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 2) = 0;
  if (v9)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v8);
  }
}

void sub_254CD7844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_InputGroup_Intent::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v31 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v31, *(this + 23));
  result = v31;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = (result + 1);
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v31 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v30;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v9 != 4)
        {
          if (v9 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 8u;
              v28 = *(a1 + 96);
              if (!v28)
              {
                v28 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Interjection>(0);
                *(a1 + 96) = v28;
                v7 = v31;
              }

              result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_InputGroup_Interjection>(this, v28, v7);
              goto LABEL_68;
            }

            goto LABEL_65;
          }

          if (v9 != 6 || v8 != 50)
          {
            goto LABEL_65;
          }

          result = (v7 - 1);
          while (2)
          {
            v19 = result + 1;
            v31 = (result + 1);
            v20 = *(a1 + 64);
            if (v20)
            {
              v21 = *(a1 + 56);
              v22 = *v20;
              if (v21 < *v20)
              {
                *(a1 + 56) = v21 + 1;
                AlignedAndAddCleanup = *&v20[2 * v21 + 2];
                goto LABEL_47;
              }

              if (v22 == *(a1 + 60))
              {
LABEL_41:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v22 + 1);
                v20 = *(a1 + 64);
                v22 = *v20;
              }

              *v20 = v22 + 1;
              v24 = *(a1 + 48);
              if (!v24)
              {
                operator new();
              }

              if (v24[14])
              {
              }

              AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v24, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
              AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
              AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
              v25 = *(a1 + 56);
              v26 = *(a1 + 64) + 8 * v25;
              *(a1 + 56) = v25 + 1;
              *(v26 + 8) = AlignedAndAddCleanup;
              v19 = v31;
LABEL_47:
              result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v19, this);
              v31 = result;
              if (!result)
              {
                return result;
              }

              if (*this <= result || *result != 50)
              {
                goto LABEL_69;
              }

              continue;
            }

            break;
          }

          v22 = *(a1 + 60);
          goto LABEL_41;
        }

        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v27 = *(a1 + 88);
          if (v27 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 88, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_60;
        }
      }

      else if (v9 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v27 = *(a1 + 72);
          if (v27 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_60;
        }
      }

      else
      {
        if (v9 != 2)
        {
          if (v9 != 3 || v8 != 26)
          {
            goto LABEL_65;
          }

          result = (v7 - 1);
          while (1)
          {
            v11 = result + 1;
            v31 = (result + 1);
            v12 = *(a1 + 40);
            if (!v12)
            {
              break;
            }

            v13 = *(a1 + 32);
            v14 = *v12;
            if (v13 >= *v12)
            {
              if (v14 == *(a1 + 36))
              {
LABEL_21:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v14 + 1);
                v12 = *(a1 + 40);
                v14 = *v12;
              }

              *v12 = v14 + 1;
              v16 = *(a1 + 24);
              if (!v16)
              {
                operator new();
              }

              if (v16[14])
              {
              }

              v15 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v16, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              v15->__r_.__value_.__r.__words[0] = 0;
              v15->__r_.__value_.__l.__size_ = 0;
              v15->__r_.__value_.__r.__words[2] = 0;
              v17 = *(a1 + 32);
              v18 = *(a1 + 40) + 8 * v17;
              *(a1 + 32) = v17 + 1;
              *(v18 + 8) = v15;
              v11 = v31;
              goto LABEL_27;
            }

            *(a1 + 32) = v13 + 1;
            v15 = *&v12[2 * v13 + 2];
LABEL_27:
            result = google::protobuf::internal::InlineGreedyStringParser(v15, v11, this);
            v31 = result;
            if (!result)
            {
              return result;
            }

            if (*this <= result || *result != 26)
            {
              goto LABEL_69;
            }
          }

          v14 = *(a1 + 36);
          goto LABEL_21;
        }

        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v27 = *(a1 + 80);
          if (v27 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
          }

LABEL_60:
          result = google::protobuf::internal::InlineGreedyStringParser(v27, v7, this);
          goto LABEL_68;
        }
      }

LABEL_65:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_68:
      v31 = result;
      if (!result)
      {
        return result;
      }

LABEL_69:
      v29 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v31, *(this + 23));
      result = v31;
      if (v29)
      {
        return result;
      }
    }

    v7 = (result + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_InputGroup_Interjection>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
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
  result = protobuf::Intelligence_InputGroup_Interjection::_InternalParse(a2, v8, this);
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

unsigned __int8 *protobuf::Intelligence_InputGroup_Intent::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_InputGroup_Intent *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 9), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 10), v4);
  }

  v7 = *(this + 8);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 3, v9, v4);
      }

      else
      {
        *v4 = 26;
        v4[1] = v10;
        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        memcpy(v4 + 2, v11, v10);
        v4 += v10 + 2;
      }
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 11), v4);
  }

  if ((v6 & 8) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v12 = *(this + 12);
    *v4 = 42;
    v13 = *(v12 + 5);
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v14 = v4 + 3;
        do
        {
          *(v14 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v14;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v14 - 1) = v16;
      }

      else
      {
        v4[2] = v15;
        v14 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v13;
      v14 = v4 + 2;
    }

    v4 = protobuf::Intelligence_InputGroup_Interjection::InternalSerializeWithCachedSizesToArray(v12, v14, a3);
  }

  v18 = *(this + 14);
  if (v18 >= 1)
  {
    for (j = 0; j != v18; ++j)
    {
      v20 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, j);
      v21 = *(v20 + 23);
      if (v21 < 0 && (v21 = *(v20 + 8), v21 > 127) || *a3 - v4 + 14 < v21)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 6, v20, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v21;
        if (*(v20 + 23) >= 0)
        {
          v22 = v20;
        }

        else
        {
          v22 = *v20;
        }

        memcpy(v4 + 2, v22, v21);
        v4 += v21 + 2;
      }
    }
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
  v26 = *(v25 + 23);
  if (v26 < 0)
  {
    v27 = *v25;
    v26 = *(v25 + 8);
  }

  else
  {
    v27 = v25;
  }

  if (*a3 - v4 >= v26)
  {
    v28 = v26;
    memcpy(v4, v27, v26);
    v4 += v28;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v27, v26, v4);
}

uint64_t protobuf::Intelligence_InputGroup_Intent::ByteSizeLong(protobuf::Intelligence_InputGroup_Intent *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 14);
  v8 = v4 + v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      v8 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      ++v9;
    }

    while (v7 != v9);
  }

  v12 = *(this + 4);
  if ((v12 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    v19 = *(this + 10);
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v8 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 4) == 0)
    {
LABEL_17:
      if ((v12 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_27;
  }

  v16 = *(this + 9);
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v8 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v12 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v12 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  v22 = *(this + 11);
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v8 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v12 & 8) != 0)
  {
LABEL_18:
    v13 = protobuf::Intelligence_InputGroup_Interjection::ByteSizeLong(*(this + 12));
    v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  v14 = *(this + 1);
  if (v14)
  {
    v25 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v26 = *((v14 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v26 < 0)
    {
      v26 = *(v25 + 8);
    }

    v8 += v26;
  }

  *(this + 5) = v8;
  return v8;
}

void protobuf::Intelligence_InputGroup_Intent::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_InputGroup_Intent::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_InputGroup_Intent::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 5369);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 6), (a2 + 6));
  v6 = *(a2 + 4);
  if ((v6 & 0xF) != 0)
  {
    if (v6)
    {
      v7 = this[9];
      *(this + 4) |= 1u;
      v8 = a2[9];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 9), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[10];
      *(this + 4) |= 2u;
      v10 = a2[10];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 10), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = this[11];
      *(this + 4) |= 4u;
      v12 = a2[11];
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 11), v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      *(this + 4) |= 8u;
      v13 = this[12];
      if (!v13)
      {
        v13 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Interjection>(0);
        this[12] = v13;
      }

      if (a2[12])
      {
        v14 = a2[12];
      }

      else
      {
        v14 = &protobuf::_Intelligence_InputGroup_Interjection_default_instance_;
      }

      protobuf::Intelligence_InputGroup_Interjection::MergeFrom(v13, v14);
    }
  }
}

void sub_254CD851C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Intent::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_InputGroup_Intent::Clear(this);

    protobuf::Intelligence_InputGroup_Intent::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_InputGroup_Intent::InternalSwap(protobuf::Intelligence_InputGroup_Intent *this, protobuf::Intelligence_InputGroup_Intent *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v29;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
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

LABEL_28:
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
  v13 = *(this + 9);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 9);
  }

  v14 = *(a2 + 9);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 9);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 10);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 10) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 10);
  }

  v19 = *(a2 + 10);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 10);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 11);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 11) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 11);
  }

  v24 = *(a2 + 11);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 11, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 11);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v28;
}

protobuf::Intelligence_InputGroup_Event *protobuf::Intelligence_InputGroup_Event::Intelligence_InputGroup_Event(protobuf::Intelligence_InputGroup_Event *this)
{
  *(this + 8) = 0u;
  *this = &unk_286719AC0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Event_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Event_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = 0;
  return this;
}

void sub_254CD888C(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_InputGroup_Event *protobuf::Intelligence_InputGroup_Event::Intelligence_InputGroup_Event(protobuf::Intelligence_InputGroup_Event *this, const protobuf::Intelligence_InputGroup_Event *a2)
{
  *this = &unk_286719AC0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 6);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v7);
    }
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 7);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 56, v8);
    }
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 8);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 64, v9);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (!*(a2 + 9))
    {
      google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 15060);
      v10 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: !value || interjection_settings_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v12, &v10->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
    }

    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_254CD8A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v4);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Event::~Intelligence_InputGroup_Event(protobuf::Intelligence_InputGroup_Event *this)
{
  *this = &unk_286719AC0;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 8);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  if (this != &protobuf::_Intelligence_InputGroup_Event_default_instance_)
  {
    v8 = *(this + 9);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_InputGroup_Event::~Intelligence_InputGroup_Event(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_InputGroup_Event::default_instance(protobuf::Intelligence_InputGroup_Event *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Event_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Event_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_InputGroup_Event_default_instance_;
}

void protobuf::Intelligence_InputGroup_Event::Clear(protobuf::Intelligence_InputGroup_Event *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v4 = *(this + 7);
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v3 = *(this + 6);
  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v5 = *(this + 8);
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_19:
  v6 = *(this + 9);
  if (!v6)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 5534);
    v7 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: interjection_settings_ != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v6 = *(this + 9);
  }

  protobuf::Intelligence_InputGroup_Interjection::Clear(v6);
LABEL_22:
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 2) = 0;
  if (v9)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v8);
  }
}

void sub_254CD8D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal *protobuf::Intelligence_InputGroup_Event::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v22 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
  result = v22;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = (result + 1);
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v22 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v21;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v9 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v10 = *(a1 + 48);
            if (v10 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_43;
          }
        }

        else if (v9 == 4 && v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v10 = *(a1 + 56);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_43;
        }
      }

      else
      {
        if (v9 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 8u;
            v11 = *(a1 + 72);
            if (!v11)
            {
              v11 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Interjection>(0);
              *(a1 + 72) = v11;
              v7 = v22;
            }

            result = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_InputGroup_Interjection>(this, v11, v7);
            goto LABEL_47;
          }

          goto LABEL_44;
        }

        if (v9 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_44;
          }

          result = (v7 - 1);
          while (2)
          {
            v12 = result + 1;
            v22 = (result + 1);
            v13 = *(a1 + 40);
            if (v13)
            {
              v14 = *(a1 + 32);
              v15 = *v13;
              if (v14 < *v13)
              {
                *(a1 + 32) = v14 + 1;
                AlignedAndAddCleanup = *&v13[2 * v14 + 2];
                goto LABEL_36;
              }

              if (v15 == *(a1 + 36))
              {
LABEL_30:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
                v13 = *(a1 + 40);
                v15 = *v13;
              }

              *v13 = v15 + 1;
              v17 = *(a1 + 24);
              if (!v17)
              {
                operator new();
              }

              if (v17[14])
              {
              }

              AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v17, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
              AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
              AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
              v18 = *(a1 + 32);
              v19 = *(a1 + 40) + 8 * v18;
              *(a1 + 32) = v18 + 1;
              *(v19 + 8) = AlignedAndAddCleanup;
              v12 = v22;
LABEL_36:
              result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v12, this);
              v22 = result;
              if (!result)
              {
                return result;
              }

              if (*this <= result || *result != 50)
              {
                goto LABEL_48;
              }

              continue;
            }

            break;
          }

          v15 = *(a1 + 36);
          goto LABEL_30;
        }

        if (v9 == 7 && v8 == 58)
        {
          *(a1 + 16) |= 4u;
          v10 = *(a1 + 64);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 64, &google::protobuf::internal::fixed_address_empty_string);
          }

LABEL_43:
          result = google::protobuf::internal::InlineGreedyStringParser(v10, v7, this);
          goto LABEL_47;
        }
      }

LABEL_44:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_47:
      v22 = result;
      if (!result)
      {
        return result;
      }

LABEL_48:
      v20 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
      result = v22;
      if (v20)
      {
        return result;
      }
    }

    v7 = (result + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_InputGroup_Event::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_InputGroup_Event *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, *(this + 7), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 9);
  *v4 = 42;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = protobuf::Intelligence_InputGroup_Interjection::InternalSerializeWithCachedSizesToArray(v7, v9, a3);
LABEL_17:
  v13 = *(this + 8);
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v16 = *(v15 + 23);
      if (v16 < 0 && (v16 = *(v15 + 8), v16 > 127) || *a3 - v4 + 14 < v16)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 6, v15, v4);
      }

      else
      {
        *v4 = 50;
        v4[1] = v16;
        if (*(v15 + 23) >= 0)
        {
          v17 = v15;
        }

        else
        {
          v17 = *v15;
        }

        memcpy(v4 + 2, v17, v16);
        v4 += v16 + 2;
      }
    }
  }

  if ((v6 & 4) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 8), v4);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
  v21 = *(v20 + 23);
  if (v21 < 0)
  {
    v22 = *v20;
    v21 = *(v20 + 8);
  }

  else
  {
    v22 = v20;
  }

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v22, v21, v4);
}

uint64_t protobuf::Intelligence_InputGroup_Event::ByteSizeLong(protobuf::Intelligence_InputGroup_Event *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 4);
  if ((v7 & 0xF) == 0)
  {
    goto LABEL_14;
  }

  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v14 = *(this + 7);
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) == 0)
    {
LABEL_12:
      if ((v7 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v11 = *(this + 6);
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  if ((v7 & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  v17 = *(this + 8);
  v18 = *(v17 + 23);
  v19 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v19 = v18;
  }

  v4 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 8) != 0)
  {
LABEL_13:
    v8 = protobuf::Intelligence_InputGroup_Interjection::ByteSizeLong(*(this + 9));
    v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v9 = *(this + 1);
  if (v9)
  {
    v20 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v21 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v21 < 0)
    {
      v21 = *(v20 + 8);
    }

    v4 += v21;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_InputGroup_Event::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_InputGroup_Event::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_InputGroup_Event::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 5721);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  v6 = *(a2 + 4);
  if ((v6 & 0xF) != 0)
  {
    if (v6)
    {
      v7 = this[6];
      *(this + 4) |= 1u;
      v8 = a2[6];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 6), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[7];
      *(this + 4) |= 2u;
      v10 = a2[7];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 7), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = this[8];
      *(this + 4) |= 4u;
      v12 = a2[8];
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 8), v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      *(this + 4) |= 8u;
      v13 = this[9];
      if (!v13)
      {
        v13 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Interjection>(0);
        this[9] = v13;
      }

      if (a2[9])
      {
        v14 = a2[9];
      }

      else
      {
        v14 = &protobuf::_Intelligence_InputGroup_Interjection_default_instance_;
      }

      protobuf::Intelligence_InputGroup_Interjection::MergeFrom(v13, v14);
    }
  }
}

void sub_254CD9760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Event::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_InputGroup_Event::Clear(this);

    protobuf::Intelligence_InputGroup_Event::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_InputGroup_Event::InternalSwap(protobuf::Intelligence_InputGroup_Event *this, protobuf::Intelligence_InputGroup_Event *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v29;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
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

LABEL_28:
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
  v13 = *(this + 6);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 6);
  }

  v14 = *(a2 + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 6);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 7);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 7);
  }

  v19 = *(a2 + 7);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 7);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 8);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 8) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 8);
  }

  v24 = *(a2 + 8);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 8);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v28;
}

protobuf::Intelligence_InputGroup_Fallback *protobuf::Intelligence_InputGroup_Fallback::Intelligence_InputGroup_Fallback(protobuf::Intelligence_InputGroup_Fallback *this)
{
  *this = &unk_286719B50;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Fallback_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Fallback_intelligence_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CD9AAC(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 48);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_InputGroup_Fallback *protobuf::Intelligence_InputGroup_Fallback::Intelligence_InputGroup_Fallback(protobuf::Intelligence_InputGroup_Fallback *this, const protobuf::Intelligence_InputGroup_Fallback *a2)
{
  *this = &unk_286719B50;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, a2 + 48);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if (*(a2 + 16))
  {
    v6 = *(a2 + 9);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v6);
    }
  }

  return this;
}

void sub_254CD9BA0(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v2 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Fallback::~Intelligence_InputGroup_Fallback(protobuf::Intelligence_InputGroup_Fallback *this)
{
  *this = &unk_286719B50;
  v2 = *(this + 9);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 48);
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_InputGroup_Fallback::~Intelligence_InputGroup_Fallback(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_InputGroup_Fallback::default_instance(protobuf::Intelligence_InputGroup_Fallback *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_Fallback_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_Fallback_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_InputGroup_Fallback_default_instance_;
}

void protobuf::Intelligence_InputGroup_Fallback::Clear(protobuf::Intelligence_InputGroup_Fallback *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48);
  if (*(this + 16))
  {
    v2 = *(this + 9);
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v3);
  }
}

std::string::value_type *protobuf::Intelligence_InputGroup_Fallback::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v30 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v30, *(this + 23));
  result = v30;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = result + 1;
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v30 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v29;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_13;
        }

        result = v7 - 1;
        while (2)
        {
          v13 = result + 1;
          v30 = (result + 1);
          v14 = *(a1 + 64);
          if (v14)
          {
            v15 = *(a1 + 56);
            v16 = *v14;
            if (v15 < *v14)
            {
              *(a1 + 56) = v15 + 1;
              AlignedAndAddCleanup = *&v14[2 * v15 + 2];
              goto LABEL_36;
            }

            if (v16 == *(a1 + 60))
            {
LABEL_30:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v16 + 1);
              v14 = *(a1 + 64);
              v16 = *v14;
            }

            *v14 = v16 + 1;
            v18 = *(a1 + 48);
            if (!v18)
            {
              operator new();
            }

            if (v18[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v18, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v19 = *(a1 + 56);
            v20 = *(a1 + 64) + 8 * v19;
            *(a1 + 56) = v19 + 1;
            *(v20 + 8) = AlignedAndAddCleanup;
            v13 = v30;
LABEL_36:
            result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v13, this);
            v30 = result;
            if (!result)
            {
              return result;
            }

            if (*this <= result || *result != 42)
            {
              goto LABEL_21;
            }

            continue;
          }

          break;
        }

        v16 = *(a1 + 60);
        goto LABEL_30;
      }

      if (v9 != 2)
      {
        if (v9 != 1 || v8 != 10)
        {
          goto LABEL_13;
        }

        result = v7 - 1;
        while (1)
        {
          v21 = result + 1;
          v30 = (result + 1);
          v22 = *(a1 + 40);
          if (!v22)
          {
            break;
          }

          v23 = *(a1 + 32);
          v24 = *v22;
          if (v23 >= *v22)
          {
            if (v24 == *(a1 + 36))
            {
LABEL_46:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v24 + 1);
              v22 = *(a1 + 40);
              v24 = *v22;
            }

            *v22 = v24 + 1;
            v26 = *(a1 + 24);
            if (!v26)
            {
              operator new();
            }

            if (v26[14])
            {
            }

            v25 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v26, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            v25->__r_.__value_.__r.__words[0] = 0;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v27 = *(a1 + 32);
            v28 = *(a1 + 40) + 8 * v27;
            *(a1 + 32) = v27 + 1;
            *(v28 + 8) = v25;
            v21 = v30;
            goto LABEL_52;
          }

          *(a1 + 32) = v23 + 1;
          v25 = *&v22[2 * v23 + 2];
LABEL_52:
          result = google::protobuf::internal::InlineGreedyStringParser(v25, v21, this);
          v30 = result;
          if (!result)
          {
            return result;
          }

          if (*this <= result || *result != 10)
          {
            goto LABEL_21;
          }
        }

        v24 = *(a1 + 36);
        goto LABEL_46;
      }

      if (v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v11 = *(a1 + 72);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
        }

        result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
        goto LABEL_20;
      }

LABEL_13:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_20:
      v30 = result;
      if (!result)
      {
        return result;
      }

LABEL_21:
      v12 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v30, *(this + 23));
      result = v30;
      if (v12)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_InputGroup_Fallback::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_InputGroup_Fallback *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  if (*(this + 16))
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 9), a2);
  }

  v11 = *(this + 14);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, j);
      v14 = *(v13 + 23);
      if (v14 < 0 && (v14 = *(v13 + 8), v14 > 127) || *a3 - a2 + 14 < v14)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 5, v13, a2);
      }

      else
      {
        *a2 = 42;
        a2[1] = v14;
        if (*(v13 + 23) >= 0)
        {
          v15 = v13;
        }

        else
        {
          v15 = *v13;
        }

        memcpy(a2 + 2, v15, v14);
        a2 += v14 + 2;
      }
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 23);
  if (v19 < 0)
  {
    v20 = *v18;
    v19 = *(v18 + 8);
  }

  else
  {
    v20 = v18;
  }

  if (*a3 - a2 >= v19)
  {
    v21 = v19;
    memcpy(a2, v20, v19);
    a2 += v21;
    return a2;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v20, v19, a2);
}

uint64_t protobuf::Intelligence_InputGroup_Fallback::ByteSizeLong(protobuf::Intelligence_InputGroup_Fallback *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 14);
  v8 = v4 + v7;
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 48, v9);
      v11 = *(v10 + 23);
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      v8 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      ++v9;
    }

    while (v7 != v9);
  }

  if (*(this + 16))
  {
    v12 = *(this + 9);
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v8 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v15 = *(this + 1);
  if (v15)
  {
    v17 = v15 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v15 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v18 < 0)
    {
      v18 = *(v17 + 8);
    }

    v8 += v18;
  }

  *(this + 5) = v8;
  return v8;
}

void protobuf::Intelligence_InputGroup_Fallback::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_InputGroup_Fallback::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_InputGroup_Fallback::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 5988);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 6), (a2 + 6));
  if (a2[2])
  {
    v8 = this[9];
    v7 = (this + 9);
    v6 = v8;
    *(v7 - 14) |= 1u;
    v9 = a2[9];
    if (v8 != v9)
    {
      if (v6 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v7, v9);
      }

      std::string::operator=(v6, v9);
    }
  }
}

void sub_254CDA634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_Fallback::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_InputGroup_Fallback::Clear(this);

    protobuf::Intelligence_InputGroup_Fallback::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_InputGroup_Fallback::InternalSwap(protobuf::Intelligence_InputGroup_Fallback *this, protobuf::Intelligence_InputGroup_Fallback *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v20;
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
  v16 = *(this + 9);
  v14 = (this + 72);
  v15 = v16;
  if (v16 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v14, 0, &google::protobuf::internal::fixed_address_empty_string);
    v15 = *v14;
  }

  v17 = *(a2 + 9);
  if (v17 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v17 = *(a2 + 9);
  }

  v18 = v15->__r_.__value_.__r.__words[2];
  result = *&v15->__r_.__value_.__l.__data_;
  v19 = v17[2];
  *&v15->__r_.__value_.__l.__data_ = *v17;
  v15->__r_.__value_.__r.__words[2] = v19;
  *v17 = result;
  v17[2] = v18;
  return result;
}

protobuf::Intelligence_InputGroup_LegacyEvent *protobuf::Intelligence_InputGroup_LegacyEvent::Intelligence_InputGroup_LegacyEvent(protobuf::Intelligence_InputGroup_LegacyEvent *this)
{
  *(this + 8) = 0u;
  *this = &unk_286719BE0;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_LegacyEvent_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_LegacyEvent_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CDA880(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_InputGroup_LegacyEvent *protobuf::Intelligence_InputGroup_LegacyEvent::Intelligence_InputGroup_LegacyEvent(protobuf::Intelligence_InputGroup_LegacyEvent *this, const protobuf::Intelligence_InputGroup_LegacyEvent *a2)
{
  *this = &unk_286719BE0;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 6);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v7);
    }
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 7);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 56, v8);
    }
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 8);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 64, v9);
    }
  }

  return this;
}

void sub_254CDA994(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_LegacyEvent::~Intelligence_InputGroup_LegacyEvent(protobuf::Intelligence_InputGroup_LegacyEvent *this)
{
  *this = &unk_286719BE0;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 8);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_InputGroup_LegacyEvent::~Intelligence_InputGroup_LegacyEvent(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_InputGroup_LegacyEvent::default_instance(protobuf::Intelligence_InputGroup_LegacyEvent *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_LegacyEvent_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_LegacyEvent_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_InputGroup_LegacyEvent_default_instance_;
}

void protobuf::Intelligence_InputGroup_LegacyEvent::Clear(protobuf::Intelligence_InputGroup_LegacyEvent *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v4 = *(this + 7);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v3 = *(this + 6);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v5 = *(this + 8);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_17:
  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v6);
  }
}

std::string::value_type *protobuf::Intelligence_InputGroup_LegacyEvent::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v22 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
  result = v22;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = result + 1;
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v22 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v21;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v9 != 3)
        {
          if (v9 != 4 || v8 != 34)
          {
            goto LABEL_42;
          }

          result = v7 - 1;
          while (2)
          {
            v12 = result + 1;
            v22 = (result + 1);
            v13 = *(a1 + 40);
            if (v13)
            {
              v14 = *(a1 + 32);
              v15 = *v13;
              if (v14 < *v13)
              {
                *(a1 + 32) = v14 + 1;
                AlignedAndAddCleanup = *&v13[2 * v14 + 2];
                goto LABEL_31;
              }

              if (v15 == *(a1 + 36))
              {
LABEL_25:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
                v13 = *(a1 + 40);
                v15 = *v13;
              }

              *v13 = v15 + 1;
              v17 = *(a1 + 24);
              if (!v17)
              {
                operator new();
              }

              if (v17[14])
              {
              }

              AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v17, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
              AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
              AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
              v18 = *(a1 + 32);
              v19 = *(a1 + 40) + 8 * v18;
              *(a1 + 32) = v18 + 1;
              *(v19 + 8) = AlignedAndAddCleanup;
              v12 = v22;
LABEL_31:
              result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v12, this);
              v22 = result;
              if (!result)
              {
                return result;
              }

              if (*this <= result || *result != 34)
              {
                goto LABEL_46;
              }

              continue;
            }

            break;
          }

          v15 = *(a1 + 36);
          goto LABEL_25;
        }

        if (v8 == 26)
        {
          *(a1 + 16) |= 4u;
          v11 = *(a1 + 64);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 64, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_41;
        }
      }

      else if (v9 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v11 = *(a1 + 48);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_41;
        }
      }

      else if (v9 == 2 && v8 == 18)
      {
        *(a1 + 16) |= 2u;
        v11 = *(a1 + 56);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_41:
        result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
        goto LABEL_45;
      }

LABEL_42:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_45:
      v22 = result;
      if (!result)
      {
        return result;
      }

LABEL_46:
      v20 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
      result = v22;
      if (v20)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_InputGroup_LegacyEvent::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_InputGroup_LegacyEvent *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 8), v4);
  }

LABEL_5:
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 4, v9, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v10;
        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        memcpy(v4 + 2, v11, v10);
        v4 += v10 + 2;
      }
    }
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v16 = *v14;
    v15 = *(v14 + 8);
  }

  else
  {
    v16 = v14;
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v16, v15, v4);
}

uint64_t protobuf::Intelligence_InputGroup_LegacyEvent::ByteSizeLong(protobuf::Intelligence_InputGroup_LegacyEvent *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 4);
  if ((v7 & 7) != 0)
  {
    if (v7)
    {
      v13 = *(this + 6);
      v14 = *(v13 + 23);
      v15 = *(v13 + 8);
      if ((v14 & 0x80u) == 0)
      {
        v15 = v14;
      }

      v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 2) == 0)
      {
LABEL_11:
        if ((v7 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else if ((v7 & 2) == 0)
    {
      goto LABEL_11;
    }

    v16 = *(this + 7);
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 4) != 0)
    {
LABEL_12:
      v8 = *(this + 8);
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_15:
  v11 = *(this + 1);
  if (v11)
  {
    v19 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v20 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v20 < 0)
    {
      v20 = *(v19 + 8);
    }

    v4 += v20;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_InputGroup_LegacyEvent::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_InputGroup_LegacyEvent::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_InputGroup_LegacyEvent::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 6278);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = this[6];
      *(this + 4) |= 1u;
      v8 = a2[6];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 6), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[7];
      *(this + 4) |= 2u;
      v10 = a2[7];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 7), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v13 = this[8];
      v12 = (this + 8);
      v11 = v13;
      *(v12 - 12) |= 4u;
      v14 = a2[8];
      if (v13 != v14)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v12, v14);
        }

        std::string::operator=(v11, v14);
      }
    }
  }
}

void sub_254CDB49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup_LegacyEvent::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_InputGroup_LegacyEvent::Clear(this);

    protobuf::Intelligence_InputGroup_LegacyEvent::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_InputGroup_LegacyEvent::InternalSwap(protobuf::Intelligence_InputGroup_LegacyEvent *this, protobuf::Intelligence_InputGroup_LegacyEvent *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v28;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
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

LABEL_28:
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
  v14 = *(this + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(this + 6);
  }

  v15 = *(a2 + 6);
  if (v15 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v15 = *(a2 + 6);
  }

  v16 = v14[2];
  result = *v14;
  v17 = v15[2];
  *v14 = *v15;
  v14[2] = v17;
  *v15 = result;
  v15[2] = v16;
LABEL_14:
  v18 = *(this + 7);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 7);
  }

  v19 = *(a2 + 7);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 7);
  }

  v20 = v18[2];
  result = *v18;
  v21 = v19[2];
  *v18 = *v19;
  v18[2] = v21;
  *v19 = result;
  v19[2] = v20;
LABEL_20:
  v24 = *(this + 8);
  v22 = (this + 64);
  v23 = v24;
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 8) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v22, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *v22;
  }

  v25 = *(a2 + 8);
  if (v25 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v25 = *(a2 + 8);
  }

  v26 = v23->__r_.__value_.__r.__words[2];
  result = *&v23->__r_.__value_.__l.__data_;
  v27 = v25[2];
  *&v23->__r_.__value_.__l.__data_ = *v25;
  v23->__r_.__value_.__r.__words[2] = v27;
  *v25 = result;
  v25[2] = v26;
  return result;
}

protobuf::Intelligence_InputGroup *protobuf::Intelligence_InputGroup::Intelligence_InputGroup(protobuf::Intelligence_InputGroup *this)
{
  *(this + 8) = 0u;
  *this = &unk_286719C70;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 17) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_intelligence_2eproto);
  }

  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 20) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 42) = 0;
  *(this + 172) = 0;
  return this;
}

void sub_254CDB7F4(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 15));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v1 + 12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 9));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 6));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v1 + 3));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_InputGroup *protobuf::Intelligence_InputGroup::Intelligence_InputGroup(protobuf::Intelligence_InputGroup *this, const protobuf::Intelligence_InputGroup *a2)
{
  *this = &unk_286719C70;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(this + 3, a2 + 24);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(this + 6, a2 + 48);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(this + 9, a2 + 72);
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 12, a2 + 96);
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(this + 15, a2 + 120);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 18);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v7);
    }
  }

  *(this + 19) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 19);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 152, v8);
    }
  }

  *(this + 20) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 20);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 160, v9);
    }
  }

  v10 = *(a2 + 42);
  *(this + 172) = *(a2 + 172);
  *(this + 42) = v10;
  return this;
}

void sub_254CDB9A8(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v6);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(v5);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v4);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField(v3);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup::~Intelligence_InputGroup(protobuf::Intelligence_InputGroup *this)
{
  *this = &unk_286719C70;
  v2 = *(this + 18);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 19);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 20);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 120));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(this + 12);
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 72));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 48));
  google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::~RepeatedPtrField((this + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_InputGroup::~Intelligence_InputGroup(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_InputGroup::default_instance(protobuf::Intelligence_InputGroup *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_InputGroup_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_InputGroup_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_InputGroup_default_instance_;
}

void protobuf::Intelligence_InputGroup::Clear(protobuf::Intelligence_InputGroup *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(this + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(this + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(this + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96);
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(this + 120);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v4 = *(this + 19);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v3 = *(this + 18);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v5 = *(this + 20);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

LABEL_17:
  if ((v2 & 0xF8) != 0)
  {
    *(this + 172) = 0;
    *(this + 42) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v6);
  }
}

google::protobuf::internal *protobuf::Intelligence_InputGroup::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v115 = a2;
  v5 = 0;
  if ((google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v115, *(this + 23)) & 1) == 0)
  {
    while (2)
    {
      TagFallback = (v115 + 1);
      LODWORD(v7) = *v115;
      if (*v115 < 0)
      {
        v7 = (v7 + (*TagFallback << 7) - 128);
        if (*TagFallback < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v115, v7);
          v115 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_152;
          }

          LODWORD(v7) = v9;
LABEL_7:
          switch(v7 >> 3)
          {
            case 1u:
              if (v7 != 10)
              {
                goto LABEL_134;
              }

              *(a1 + 16) |= 1u;
              v8 = *(a1 + 144);
              if (v8 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 144, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_133;
            case 2u:
              if (v7 != 18)
              {
                goto LABEL_134;
              }

              v65 = (TagFallback - 1);
              while (2)
              {
                v66 = (v65 + 1);
                v115 = v66;
                v67 = *(a1 + 40);
                if (!v67)
                {
                  v69 = *(a1 + 36);
LABEL_91:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v69 + 1);
                  v67 = *(a1 + 40);
                  v69 = *v67;
                  goto LABEL_92;
                }

                v68 = *(a1 + 32);
                v69 = *v67;
                if (v68 < *v67)
                {
                  *(a1 + 32) = v68 + 1;
                  v70 = *&v67[2 * v68 + 2];
                  goto LABEL_93;
                }

                if (v69 == *(a1 + 36))
                {
                  goto LABEL_91;
                }

LABEL_92:
                *v67 = v69 + 1;
                v70 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Intent>(*(a1 + 24));
                v71 = *(a1 + 32);
                v72 = *(a1 + 40) + 8 * v71;
                *(a1 + 32) = v71 + 1;
                *(v72 + 8) = v70;
                v66 = v115;
LABEL_93:
                v73 = *v66;
                if (*v66 < 0)
                {
                  SizeFallback = google::protobuf::internal::ReadSizeFallback(v66, *v66);
                  if (!SizeFallback)
                  {
                    goto LABEL_151;
                  }

                  v74 = SizeFallback;
                  v73 = v76;
                }

                else
                {
                  v74 = v66 + 1;
                }

                v77 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v74, v73);
                v78 = *(this + 22);
                v41 = __OFSUB__(v78--, 1);
                *(this + 22) = v78;
                if (v78 < 0 == v41)
                {
                  v79 = v77;
                  v65 = protobuf::Intelligence_InputGroup_Intent::_InternalParse(v70, v74, this);
                  if (v65)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v80 = *(this + 7) + v79;
                      *(this + 7) = v80;
                      v81 = *(this + 1) + (v80 & (v80 >> 31));
                      *this = v81;
                      v115 = v65;
                      if (v81 <= v65 || *v65 != 18)
                      {
                        goto LABEL_140;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_151;
              }

            case 3u:
              if (v7 != 26)
              {
                goto LABEL_134;
              }

              v27 = TagFallback - 1;
              while (2)
              {
                v28 = (v27 + 1);
                v115 = v28;
                v29 = *(a1 + 64);
                if (!v29)
                {
                  v31 = *(a1 + 60);
LABEL_48:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v31 + 1);
                  v29 = *(a1 + 64);
                  v31 = *v29;
                  goto LABEL_49;
                }

                v30 = *(a1 + 56);
                v31 = *v29;
                if (v30 < *v29)
                {
                  *(a1 + 56) = v30 + 1;
                  v32 = *&v29[2 * v30 + 2];
                  goto LABEL_50;
                }

                if (v31 == *(a1 + 60))
                {
                  goto LABEL_48;
                }

LABEL_49:
                *v29 = v31 + 1;
                v32 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Fallback>(*(a1 + 48));
                v33 = *(a1 + 56);
                v34 = *(a1 + 64) + 8 * v33;
                *(a1 + 56) = v33 + 1;
                *(v34 + 8) = v32;
                v28 = v115;
LABEL_50:
                v35 = *v28;
                if (*v28 < 0)
                {
                  v37 = google::protobuf::internal::ReadSizeFallback(v28, *v28);
                  if (!v37)
                  {
                    goto LABEL_151;
                  }

                  v36 = v37;
                  v35 = v38;
                }

                else
                {
                  v36 = v28 + 1;
                }

                v39 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v36, v35);
                v40 = *(this + 22);
                v41 = __OFSUB__(v40--, 1);
                *(this + 22) = v40;
                if (v40 < 0 == v41)
                {
                  v42 = v39;
                  v27 = protobuf::Intelligence_InputGroup_Fallback::_InternalParse(v32, v36, this);
                  if (v27)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v43 = *(this + 7) + v42;
                      *(this + 7) = v43;
                      v44 = *(this + 1) + (v43 & (v43 >> 31));
                      *this = v44;
                      v115 = v27;
                      if (v44 <= v27 || *v27 != 26)
                      {
                        goto LABEL_140;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_151;
              }

            case 4u:
              if (v7 != 34)
              {
                goto LABEL_134;
              }

              v45 = TagFallback - 1;
              while (2)
              {
                v46 = (v45 + 1);
                v115 = v46;
                v47 = *(a1 + 88);
                if (!v47)
                {
                  v49 = *(a1 + 84);
LABEL_67:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v49 + 1);
                  v47 = *(a1 + 88);
                  v49 = *v47;
                  goto LABEL_68;
                }

                v48 = *(a1 + 80);
                v49 = *v47;
                if (v48 < *v47)
                {
                  *(a1 + 80) = v48 + 1;
                  v50 = *&v47[2 * v48 + 2];
                  goto LABEL_69;
                }

                if (v49 == *(a1 + 84))
                {
                  goto LABEL_67;
                }

LABEL_68:
                *v47 = v49 + 1;
                v50 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_LegacyEvent>(*(a1 + 72));
                v51 = *(a1 + 80);
                v52 = *(a1 + 88) + 8 * v51;
                *(a1 + 80) = v51 + 1;
                *(v52 + 8) = v50;
                v46 = v115;
LABEL_69:
                v53 = *v46;
                if (*v46 < 0)
                {
                  v55 = google::protobuf::internal::ReadSizeFallback(v46, *v46);
                  if (!v55)
                  {
                    goto LABEL_151;
                  }

                  v54 = v55;
                  v53 = v56;
                }

                else
                {
                  v54 = v46 + 1;
                }

                v57 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v54, v53);
                v58 = *(this + 22);
                v41 = __OFSUB__(v58--, 1);
                *(this + 22) = v58;
                if (v58 < 0 == v41)
                {
                  v59 = v57;
                  v45 = protobuf::Intelligence_InputGroup_LegacyEvent::_InternalParse(v50, v54, this);
                  if (v45)
                  {
                    ++*(this + 22);
                    if (!*(this + 20))
                    {
                      v60 = *(this + 7) + v59;
                      *(this + 7) = v60;
                      v61 = *(this + 1) + (v60 & (v60 >> 31));
                      *this = v61;
                      v115 = v45;
                      if (v61 <= v45 || *v45 != 34)
                      {
                        goto LABEL_140;
                      }

                      continue;
                    }
                  }
                }

                goto LABEL_151;
              }

            case 5u:
              if (v7 != 40)
              {
                goto LABEL_134;
              }

              v5 |= 0x10u;
              v14 = (TagFallback + 1);
              v13 = *TagFallback;
              if ((v13 & 0x8000000000000000) == 0)
              {
                goto LABEL_22;
              }

              v15 = *v14;
              v13 = (v15 << 7) + v13 - 128;
              if (v15 < 0)
              {
                v106 = google::protobuf::internal::VarintParseSlow64(TagFallback, v13);
                v115 = v106;
                *(a1 + 169) = v107 != 0;
                if (!v106)
                {
                  goto LABEL_151;
                }
              }

              else
              {
                v14 = (TagFallback + 2);
LABEL_22:
                v115 = v14;
                *(a1 + 169) = v13 != 0;
              }

              goto LABEL_140;
            case 6u:
              if (v7 != 50)
              {
                goto LABEL_134;
              }

              *(a1 + 16) |= 2u;
              v8 = *(a1 + 152);
              if (v8 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 152, &google::protobuf::internal::fixed_address_empty_string);
              }

              goto LABEL_133;
            case 7u:
              if (v7 != 56)
              {
                goto LABEL_134;
              }

              v5 |= 0x20u;
              v83 = (TagFallback + 1);
              v82 = *TagFallback;
              if ((v82 & 0x8000000000000000) == 0)
              {
                goto LABEL_110;
              }

              v84 = *v83;
              v82 = (v84 << 7) + v82 - 128;
              if (v84 < 0)
              {
                v112 = google::protobuf::internal::VarintParseSlow64(TagFallback, v82);
                v115 = v112;
                *(a1 + 170) = v113 != 0;
                if (!v112)
                {
                  goto LABEL_151;
                }
              }

              else
              {
                v83 = (TagFallback + 2);
LABEL_110:
                v115 = v83;
                *(a1 + 170) = v82 != 0;
              }

              goto LABEL_140;
            case 8u:
              if (v7 != 64)
              {
                goto LABEL_134;
              }

              v5 |= 8u;
              v63 = (TagFallback + 1);
              v62 = *TagFallback;
              if ((v62 & 0x8000000000000000) == 0)
              {
                goto LABEL_83;
              }

              v64 = *v63;
              v62 = (v64 << 7) + v62 - 128;
              if (v64 < 0)
              {
                v110 = google::protobuf::internal::VarintParseSlow64(TagFallback, v62);
                v115 = v110;
                *(a1 + 168) = v111 != 0;
                if (!v110)
                {
                  goto LABEL_151;
                }
              }

              else
              {
                v63 = (TagFallback + 2);
LABEL_83:
                v115 = v63;
                *(a1 + 168) = v62 != 0;
              }

              goto LABEL_140;
            case 9u:
              if (v7 != 74)
              {
                goto LABEL_134;
              }

              *(a1 + 16) |= 4u;
              v8 = *(a1 + 160);
              if (v8 == &google::protobuf::internal::fixed_address_empty_string)
              {
                google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 160, &google::protobuf::internal::fixed_address_empty_string);
              }

LABEL_133:
              v102 = google::protobuf::internal::InlineGreedyStringParser(v8, TagFallback, this);
              goto LABEL_139;
            case 0xAu:
              if (v7 != 82)
              {
                goto LABEL_134;
              }

              v19 = TagFallback - 1;
              break;
            case 0xBu:
              if (v7 != 90)
              {
                goto LABEL_134;
              }

              v85 = (TagFallback - 1);
              while (2)
              {
                v86 = (v85 + 1);
                v115 = v86;
                v87 = *(a1 + 136);
                if (v87)
                {
                  v88 = *(a1 + 128);
                  v89 = *v87;
                  if (v88 < *v87)
                  {
                    *(a1 + 128) = v88 + 1;
                    v90 = *&v87[2 * v88 + 2];
                    goto LABEL_120;
                  }

                  if (v89 != *(a1 + 132))
                  {
LABEL_119:
                    *v87 = v89 + 1;
                    v90 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Event>(*(a1 + 120));
                    v91 = *(a1 + 128);
                    v92 = *(a1 + 136) + 8 * v91;
                    *(a1 + 128) = v91 + 1;
                    *(v92 + 8) = v90;
                    v86 = v115;
LABEL_120:
                    v93 = *v86;
                    if (*v86 < 0)
                    {
                      v95 = google::protobuf::internal::ReadSizeFallback(v86, *v86);
                      if (!v95)
                      {
                        goto LABEL_151;
                      }

                      v94 = v95;
                      v93 = v96;
                    }

                    else
                    {
                      v94 = v86 + 1;
                    }

                    v97 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v94, v93);
                    v98 = *(this + 22);
                    v41 = __OFSUB__(v98--, 1);
                    *(this + 22) = v98;
                    if (v98 < 0 == v41)
                    {
                      v99 = v97;
                      v85 = protobuf::Intelligence_InputGroup_Event::_InternalParse(v90, v94, this);
                      if (v85)
                      {
                        ++*(this + 22);
                        if (!*(this + 20))
                        {
                          v100 = *(this + 7) + v99;
                          *(this + 7) = v100;
                          v101 = *(this + 1) + (v100 & (v100 >> 31));
                          *this = v101;
                          v115 = v85;
                          if (v101 <= v85 || *v85 != 90)
                          {
                            goto LABEL_140;
                          }

                          continue;
                        }
                      }
                    }

LABEL_151:
                    TagFallback = 0;
                    goto LABEL_152;
                  }
                }

                else
                {
                  v89 = *(a1 + 132);
                }

                break;
              }

              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v89 + 1);
              v87 = *(a1 + 136);
              v89 = *v87;
              goto LABEL_119;
            case 0xCu:
              if (v7 != 96)
              {
                goto LABEL_134;
              }

              v5 |= 0x80u;
              v11 = (TagFallback + 1);
              v10 = *TagFallback;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_17;
              }

              v12 = *v11;
              v10 = (v12 << 7) + v10 - 128;
              if (v12 < 0)
              {
                v104 = google::protobuf::internal::VarintParseSlow64(TagFallback, v10);
                v115 = v104;
                *(a1 + 172) = v105 != 0;
                if (!v104)
                {
                  goto LABEL_151;
                }
              }

              else
              {
                v11 = (TagFallback + 2);
LABEL_17:
                v115 = v11;
                *(a1 + 172) = v10 != 0;
              }

              goto LABEL_140;
            case 0xDu:
              if (v7 != 104)
              {
                goto LABEL_134;
              }

              v5 |= 0x40u;
              v17 = (TagFallback + 1);
              v16 = *TagFallback;
              if ((v16 & 0x8000000000000000) == 0)
              {
                goto LABEL_27;
              }

              v18 = *v17;
              v16 = (v18 << 7) + v16 - 128;
              if (v18 < 0)
              {
                v108 = google::protobuf::internal::VarintParseSlow64(TagFallback, v16);
                v115 = v108;
                *(a1 + 171) = v109 != 0;
                if (!v108)
                {
                  goto LABEL_151;
                }
              }

              else
              {
                v17 = (TagFallback + 2);
LABEL_27:
                v115 = v17;
                *(a1 + 171) = v16 != 0;
              }

              goto LABEL_140;
            default:
LABEL_134:
              if (v7)
              {
                v103 = (v7 & 7) == 4;
              }

              else
              {
                v103 = 1;
              }

              if (v103)
              {
                *(this + 20) = v7 - 1;
                goto LABEL_152;
              }

              v102 = google::protobuf::internal::UnknownFieldParse(v7, (a1 + 8), TagFallback, this);
LABEL_139:
              v115 = v102;
              if (!v102)
              {
                goto LABEL_151;
              }

LABEL_140:
              if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v115, *(this + 23)))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v20 = (v19 + 1);
            v115 = (v19 + 1);
            v21 = *(a1 + 112);
            if (!v21)
            {
              break;
            }

            v22 = *(a1 + 104);
            v23 = *v21;
            if (v22 >= *v21)
            {
              if (v23 == *(a1 + 108))
              {
LABEL_35:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v23 + 1);
                v21 = *(a1 + 112);
                v23 = *v21;
              }

              *v21 = v23 + 1;
              v24 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 96));
              v25 = *(a1 + 104);
              v26 = *(a1 + 112) + 8 * v25;
              *(a1 + 104) = v25 + 1;
              *(v26 + 8) = v24;
              v20 = v115;
              goto LABEL_37;
            }

            *(a1 + 104) = v22 + 1;
            v24 = *&v21[2 * v22 + 2];
LABEL_37:
            v19 = google::protobuf::internal::ParseContext::ParseMessage<protobuf::Intelligence_KeyValueParameter>(this, v24, v20);
            v115 = v19;
            if (!v19)
            {
              goto LABEL_151;
            }

            if (*this <= v19 || *v19 != 82)
            {
              goto LABEL_140;
            }
          }

          v23 = *(a1 + 108);
          goto LABEL_35;
        }

        TagFallback = (v115 + 2);
      }

      break;
    }

    v115 = TagFallback;
    goto LABEL_7;
  }

LABEL_2:
  TagFallback = v115;
LABEL_152:
  *(a1 + 16) |= v5;
  return TagFallback;
}

unsigned __int8 *protobuf::Intelligence_InputGroup::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_InputGroup *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 18), a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(this + 24, i);
      *v4 = 18;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
          do
          {
            *(v11 - 1) = v12 | 0x80;
            v13 = v12 >> 7;
            ++v11;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
          *(v11 - 1) = v13;
        }

        else
        {
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = protobuf::Intelligence_InputGroup_Intent::InternalSerializeWithCachedSizesToArray(v9, v11, a3);
    }
  }

  v15 = *(this + 14);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(this + 48, j);
      *v4 = 26;
      v18 = *(v17 + 5);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = v4 + 3;
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v19;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v18;
        v19 = v4 + 2;
      }

      v4 = protobuf::Intelligence_InputGroup_Fallback::InternalSerializeWithCachedSizesToArray(v17, v19, a3);
    }
  }

  v23 = *(this + 20);
  if (v23)
  {
    for (k = 0; k != v23; ++k)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v25 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(this + 72, k);
      *v4 = 34;
      v26 = *(v25 + 5);
      if (v26 > 0x7F)
      {
        v4[1] = v26 | 0x80;
        v28 = v26 >> 7;
        if (v26 >> 14)
        {
          v27 = v4 + 3;
          do
          {
            *(v27 - 1) = v28 | 0x80;
            v29 = v28 >> 7;
            ++v27;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
          *(v27 - 1) = v29;
        }

        else
        {
          v4[2] = v28;
          v27 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v26;
        v27 = v4 + 2;
      }

      v4 = protobuf::Intelligence_InputGroup_LegacyEvent::InternalSerializeWithCachedSizesToArray(v25, v27, a3);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v51 = *(this + 169);
    *v4 = 40;
    v4[1] = v51;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_41:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_83;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_41;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, *(this + 19), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_42:
    if ((v6 & 8) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_83:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v52 = *(this + 170);
  *v4 = 56;
  v4[1] = v52;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_43:
    if ((v6 & 4) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_86:
  if (v4 >= *a3)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 168);
  *v4 = 64;
  v4[1] = v53;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_44:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 9, *(this + 20), v4);
  }

LABEL_45:
  v31 = *(this + 26);
  if (v31)
  {
    for (m = 0; m != v31; ++m)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v33 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96, m);
      *v4 = 82;
      v34 = *(v33 + 5);
      if (v34 > 0x7F)
      {
        v4[1] = v34 | 0x80;
        v36 = v34 >> 7;
        if (v34 >> 14)
        {
          v35 = v4 + 3;
          do
          {
            *(v35 - 1) = v36 | 0x80;
            v37 = v36 >> 7;
            ++v35;
            v38 = v36 >> 14;
            v36 >>= 7;
          }

          while (v38);
          *(v35 - 1) = v37;
        }

        else
        {
          v4[2] = v36;
          v35 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v34;
        v35 = v4 + 2;
      }

      v4 = protobuf::Intelligence_KeyValueParameter::InternalSerializeWithCachedSizesToArray(v33, v35, a3);
    }
  }

  v39 = *(this + 32);
  if (v39)
  {
    for (n = 0; n != v39; ++n)
    {
      if (v4 >= *a3)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v41 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(this + 120, n);
      *v4 = 90;
      v42 = *(v41 + 5);
      if (v42 > 0x7F)
      {
        v4[1] = v42 | 0x80;
        v44 = v42 >> 7;
        if (v42 >> 14)
        {
          v43 = v4 + 3;
          do
          {
            *(v43 - 1) = v44 | 0x80;
            v45 = v44 >> 7;
            ++v43;
            v46 = v44 >> 14;
            v44 >>= 7;
          }

          while (v46);
          *(v43 - 1) = v45;
        }

        else
        {
          v4[2] = v44;
          v43 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v42;
        v43 = v4 + 2;
      }

      v4 = protobuf::Intelligence_InputGroup_Event::InternalSerializeWithCachedSizesToArray(v41, v43, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v47 = *(this + 172);
    *v4 = 96;
    v4[1] = v47;
    v4 += 2;
  }

  if ((v6 & 0x40) != 0)
  {
    if (v4 >= *a3)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v48 = *(this + 171);
    *v4 = 104;
    v4[1] = v48;
    v4 += 2;
  }

  v49 = *(this + 1);
  if ((v49 & 1) == 0)
  {
    return v4;
  }

  v54 = v49 & 0xFFFFFFFFFFFFFFFELL;
  v55 = *(v54 + 23);
  if (v55 < 0)
  {
    v56 = *v54;
    v55 = *(v54 + 8);
  }

  else
  {
    v56 = v54;
  }

  if (*a3 - v4 >= v55)
  {
    v57 = v55;
    memcpy(v4, v56, v55);
    v4 += v57;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v56, v55, v4);
}

uint64_t protobuf::Intelligence_InputGroup::ByteSizeLong(protobuf::Intelligence_InputGroup *this)
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
      v7 = protobuf::Intelligence_InputGroup_Intent::ByteSizeLong(v6);
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
      v14 = protobuf::Intelligence_InputGroup_Fallback::ByteSizeLong(v13);
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
      v21 = protobuf::Intelligence_InputGroup_LegacyEvent::ByteSizeLong(v20);
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
      v28 = protobuf::Intelligence_KeyValueParameter::ByteSizeLong(v27);
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
      v35 = protobuf::Intelligence_InputGroup_Event::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 4);
  if (v36)
  {
    if (v36)
    {
      v43 = *(this + 18);
      v44 = *(v43 + 23);
      v45 = *(v43 + 8);
      if ((v44 & 0x80u) == 0)
      {
        v45 = v44;
      }

      v30 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v36 & 2) == 0)
      {
LABEL_36:
        if ((v36 & 4) == 0)
        {
LABEL_40:
          v40.i64[0] = 0x200000002;
          v40.i64[1] = 0x200000002;
          v30 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v36), xmmword_254E1EBC0), v40)) + ((v36 >> 6) & 2);
          goto LABEL_41;
        }

LABEL_37:
        v37 = *(this + 20);
        v38 = *(v37 + 23);
        v39 = *(v37 + 8);
        if ((v38 & 0x80u) == 0)
        {
          v39 = v38;
        }

        v30 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_40;
      }
    }

    else if ((v36 & 2) == 0)
    {
      goto LABEL_36;
    }

    v46 = *(this + 19);
    v47 = *(v46 + 23);
    v48 = *(v46 + 8);
    if ((v47 & 0x80u) == 0)
    {
      v48 = v47;
    }

    v30 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v36 & 4) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_41:
  v41 = *(this + 1);
  if (v41)
  {
    v49 = v41 & 0xFFFFFFFFFFFFFFFELL;
    v50 = *((v41 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v50 < 0)
    {
      v50 = *(v49 + 8);
    }

    v30 += v50;
  }

  *(this + 5) = v30;
  return v30;
}

void protobuf::Intelligence_InputGroup::CheckTypeAndMergeFrom(protobuf::Intelligence_InputGroup *this, const google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_InputGroup::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_InputGroup::MergeFrom(protobuf::Intelligence_InputGroup *this, const protobuf::Intelligence_InputGroup *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 6819);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(this + 3, a2 + 24);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Fallback>::TypeHandler>(this + 6, a2 + 48);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(this + 9, a2 + 72);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 12, a2 + 96);
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Event>::TypeHandler>(this + 15, a2 + 120);
  v6 = *(a2 + 4);
  if (v6)
  {
    if (v6)
    {
      v7 = *(this + 18);
      *(this + 4) |= 1u;
      v8 = *(a2 + 18);
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 144, v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = *(this + 19);
      *(this + 4) |= 2u;
      v10 = *(a2 + 19);
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 152, v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = *(this + 20);
      *(this + 4) |= 4u;
      v12 = *(a2 + 20);
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 160, v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      *(this + 168) = *(a2 + 168);
      if ((v6 & 0x10) == 0)
      {
LABEL_22:
        if ((v6 & 0x20) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_31;
      }
    }

    else if ((v6 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    *(this + 169) = *(a2 + 169);
    if ((v6 & 0x20) == 0)
    {
LABEL_23:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(this + 170) = *(a2 + 170);
    if ((v6 & 0x40) == 0)
    {
LABEL_24:
      if ((v6 & 0x80) == 0)
      {
LABEL_26:
        *(this + 4) |= v6;
        return;
      }

LABEL_25:
      *(this + 172) = *(a2 + 172);
      goto LABEL_26;
    }

LABEL_32:
    *(this + 171) = *(a2 + 171);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }
}

void sub_254CDD248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_InputGroup::CopyFrom(protobuf::Intelligence_InputGroup *this, const protobuf::Intelligence_InputGroup *a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_InputGroup::Clear(this);

    protobuf::Intelligence_InputGroup::MergeFrom(this, a2);
  }
}

void protobuf::Intelligence_InputGroup::InternalSwap(protobuf::Intelligence_InputGroup *this, protobuf::Intelligence_InputGroup *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v33;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_28;
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

LABEL_28:
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
  v13 = *(this + 18);
  if (v13 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 18) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v13 = *(this + 18);
  }

  v14 = *(a2 + 18);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 18, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(a2 + 18);
  }

  v15 = v13[2];
  v16 = *v13;
  v17 = v14[2];
  *v13 = *v14;
  v13[2] = v17;
  *v14 = v16;
  v14[2] = v15;
LABEL_14:
  v18 = *(this + 19);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 19) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 19, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 19);
  }

  v19 = *(a2 + 19);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 19, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 19);
  }

  v20 = v18[2];
  v21 = *v18;
  v22 = v19[2];
  *v18 = *v19;
  v18[2] = v22;
  *v19 = v21;
  v19[2] = v20;
LABEL_20:
  v23 = *(this + 20);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 20) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 20, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(this + 20);
  }

  v24 = *(a2 + 20);
  if (v24 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 20, 0, &google::protobuf::internal::fixed_address_empty_string);
    v24 = *(a2 + 20);
  }

  v25 = v23[2];
  v26 = *v23;
  v27 = v24[2];
  *v23 = *v24;
  v23[2] = v27;
  *v24 = v26;
  v24[2] = v25;
LABEL_26:
  v28 = *(this + 168);
  *(this + 168) = *(a2 + 168);
  *(a2 + 168) = v28;
  v29 = *(this + 169);
  *(this + 169) = *(a2 + 169);
  *(a2 + 169) = v29;
  v30 = *(this + 170);
  *(this + 170) = *(a2 + 170);
  *(a2 + 170) = v30;
  v31 = *(this + 171);
  *(this + 171) = *(a2 + 171);
  *(a2 + 171) = v31;
  v32 = *(this + 172);
  *(this + 172) = *(a2 + 172);
  *(a2 + 172) = v32;
}

protobuf::Intelligence_Activity *protobuf::Intelligence_Activity::Intelligence_Activity(protobuf::Intelligence_Activity *this)
{
  *(this + 8) = 0u;
  *this = &unk_286719D00;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Activity_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Activity_intelligence_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

void sub_254CDD608(_Unwind_Exception *a1)
{
  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(v1 + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v2);
  _Unwind_Resume(a1);
}

protobuf::Intelligence_Activity *protobuf::Intelligence_Activity::Intelligence_Activity(protobuf::Intelligence_Activity *this, const protobuf::Intelligence_Activity *a2)
{
  *this = &unk_286719D00;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, a2 + 24);
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(v4, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v6 = *(a2 + 4);
  if (v6)
  {
    v7 = *(a2 + 6);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 48, v7);
    }
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 2) != 0)
  {
    v8 = *(a2 + 7);
    if (v8 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 56, v8);
    }
  }

  *(this + 8) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 4) != 0)
  {
    v9 = *(a2 + 8);
    if (v9 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 64, v9);
    }
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 8) != 0)
  {
    v10 = *(a2 + 9);
    if (v10 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 72, v10);
    }
  }

  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v6 & 0x10) != 0)
  {
    v11 = *(a2 + 10);
    if (v11 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 80, v11);
    }
  }

  return this;
}

void sub_254CDD75C(_Unwind_Exception *a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase((v2 + 24));
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(v1);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Activity::~Intelligence_Activity(protobuf::Intelligence_Activity *this)
{
  *this = &unk_286719D00;
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 8);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x259C29D90](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 9);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x259C29D90](v8, 0x1012C40EC159624);
  }

  v10 = *(this + 10);
  if (v10 != &google::protobuf::internal::fixed_address_empty_string && v10)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x259C29D90](v10, 0x1012C40EC159624);
  }

  google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(this + 24);
  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Activity::~Intelligence_Activity(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Activity::default_instance(protobuf::Intelligence_Activity *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Activity_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Activity_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Activity_default_instance_;
}

void protobuf::Intelligence_Activity::Clear(protobuf::Intelligence_Activity *this)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24);
  v2 = *(this + 4);
  if ((v2 & 0x1F) != 0)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v4 = *(this + 7);
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_16;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_20:
      v6 = *(this + 9);
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_24;
    }

    v3 = *(this + 6);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    v5 = *(this + 8);
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_24:
    v7 = *(this + 10);
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_27:
  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v8);
  }
}

std::string::value_type *protobuf::Intelligence_Activity::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v22 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
  result = v22;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = result + 1;
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v22 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v21;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v9 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_53;
          }

          result = v7 - 1;
          while (2)
          {
            v12 = result + 1;
            v22 = (result + 1);
            v13 = *(a1 + 40);
            if (v13)
            {
              v14 = *(a1 + 32);
              v15 = *v13;
              if (v14 < *v13)
              {
                *(a1 + 32) = v14 + 1;
                AlignedAndAddCleanup = *&v13[2 * v14 + 2];
                goto LABEL_39;
              }

              if (v15 == *(a1 + 36))
              {
LABEL_33:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v15 + 1);
                v13 = *(a1 + 40);
                v15 = *v13;
              }

              *v13 = v15 + 1;
              v17 = *(a1 + 24);
              if (!v17)
              {
                operator new();
              }

              if (v17[14])
              {
              }

              AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v17, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
              AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
              AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
              AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
              v18 = *(a1 + 32);
              v19 = *(a1 + 40) + 8 * v18;
              *(a1 + 32) = v18 + 1;
              *(v19 + 8) = AlignedAndAddCleanup;
              v12 = v22;
LABEL_39:
              result = google::protobuf::internal::InlineGreedyStringParser(AlignedAndAddCleanup, v12, this);
              v22 = result;
              if (!result)
              {
                return result;
              }

              if (*this <= result || *result != 34)
              {
                goto LABEL_51;
              }

              continue;
            }

            break;
          }

          v15 = *(a1 + 36);
          goto LABEL_33;
        }

        if (v9 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 8u;
            v11 = *(a1 + 72);
            if (v11 == &google::protobuf::internal::fixed_address_empty_string)
            {
              google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 72, &google::protobuf::internal::fixed_address_empty_string);
            }

            goto LABEL_49;
          }
        }

        else if (v9 == 6 && v8 == 50)
        {
          *(a1 + 16) |= 0x10u;
          v11 = *(a1 + 80);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 80, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_49;
        }
      }

      else if (v9 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v11 = *(a1 + 48);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 48, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_49;
        }
      }

      else if (v9 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v11 = *(a1 + 56);
          if (v11 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 56, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_49;
        }
      }

      else if (v9 == 3 && v8 == 26)
      {
        *(a1 + 16) |= 4u;
        v11 = *(a1 + 64);
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 64, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_49:
        result = google::protobuf::internal::InlineGreedyStringParser(v11, v7, this);
        goto LABEL_50;
      }

LABEL_53:
      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_50:
      v22 = result;
      if (!result)
      {
        return result;
      }

LABEL_51:
      v20 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v22, *(this + 23));
      result = v22;
      if (v20)
      {
        return result;
      }
    }

    v7 = result + 2;
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Activity::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Activity *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 6), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 7), v4);
  if ((v6 & 4) != 0)
  {
LABEL_4:
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 8), v4);
  }

LABEL_5:
  v7 = *(this + 8);
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, i);
      v10 = *(v9 + 23);
      if (v10 < 0 && (v10 = *(v9 + 8), v10 > 127) || *a3 - v4 + 14 < v10)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 4, v9, v4);
      }

      else
      {
        *v4 = 34;
        v4[1] = v10;
        if (*(v9 + 23) >= 0)
        {
          v11 = v9;
        }

        else
        {
          v11 = *v9;
        }

        memcpy(v4 + 2, v11, v10);
        v4 += v10 + 2;
      }
    }
  }

  if ((v6 & 8) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 9), v4);
  }

  if ((v6 & 0x10) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, *(this + 10), v4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v16 = *v14;
    v15 = *(v14 + 8);
  }

  else
  {
    v16 = v14;
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v16, v15, v4);
}

uint64_t protobuf::Intelligence_Activity::ByteSizeLong(protobuf::Intelligence_Activity *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 24, v3);
      v6 = *(v5 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(v5 + 8);
      }

      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
      ++v3;
    }

    while (v2 != v3);
  }

  v7 = *(this + 4);
  if ((v7 & 0x1F) == 0)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v13 = *(this + 6);
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

LABEL_25:
      v19 = *(this + 8);
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v4 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v7 & 8) == 0)
      {
LABEL_13:
        if ((v7 & 0x10) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      goto LABEL_28;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  v16 = *(this + 7);
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v4 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 4) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((v7 & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  v22 = *(this + 9);
  v23 = *(v22 + 23);
  v24 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v24 = v23;
  }

  v4 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v7 & 0x10) != 0)
  {
LABEL_14:
    v8 = *(this + 10);
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v4 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v11 = *(this + 1);
  if (v11)
  {
    v25 = v11 & 0xFFFFFFFFFFFFFFFELL;
    v26 = *((v11 & 0xFFFFFFFFFFFFFFFELL) + 23);
    if (v26 < 0)
    {
      v26 = *(v25 + 8);
    }

    v4 += v26;
  }

  *(this + 5) = v4;
  return v4;
}

void protobuf::Intelligence_Activity::CheckTypeAndMergeFrom(atomic_ullong **this, char **lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "casts.h", 92, "f == nullptr || dynamic_cast<To>(f) != nullptr");
  }

  protobuf::Intelligence_Activity::MergeFrom(this, lpsrc);
}

void protobuf::Intelligence_Activity::MergeFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", 7215);
    v4 = google::protobuf::internal::LogMessage::operator<<(v20, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v19, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v20[0].__r_.__value_.__l.__data_);
  }

  v5 = a2[1];
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 3), (a2 + 3));
  v6 = *(a2 + 4);
  if ((v6 & 0x1F) != 0)
  {
    if (v6)
    {
      v7 = this[6];
      *(this + 4) |= 1u;
      v8 = a2[6];
      if (v7 != v8)
      {
        if (v7 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 6), v8);
        }

        std::string::operator=(v7, v8);
      }
    }

    if ((v6 & 2) != 0)
    {
      v9 = this[7];
      *(this + 4) |= 2u;
      v10 = a2[7];
      if (v9 != v10)
      {
        if (v9 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 7), v10);
        }

        std::string::operator=(v9, v10);
      }
    }

    if ((v6 & 4) != 0)
    {
      v11 = this[8];
      *(this + 4) |= 4u;
      v12 = a2[8];
      if (v11 != v12)
      {
        if (v11 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 8), v12);
        }

        std::string::operator=(v11, v12);
      }
    }

    if ((v6 & 8) != 0)
    {
      v13 = this[9];
      *(this + 4) |= 8u;
      v14 = a2[9];
      if (v13 != v14)
      {
        if (v13 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena((this + 9), v14);
        }

        std::string::operator=(v13, v14);
      }
    }

    if ((v6 & 0x10) != 0)
    {
      v17 = this[10];
      v16 = (this + 10);
      v15 = v17;
      *(v16 - 16) |= 0x10u;
      v18 = a2[10];
      if (v17 != v18)
      {
        if (v15 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v16, v18);
        }

        std::string::operator=(v15, v18);
      }
    }
  }
}

void sub_254CDE4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void protobuf::Intelligence_Activity::CopyFrom(atomic_ullong **this, atomic_ullong **a2)
{
  if (a2 != this)
  {
    protobuf::Intelligence_Activity::Clear(this);

    protobuf::Intelligence_Activity::MergeFrom(this, a2);
  }
}

__n128 protobuf::Intelligence_Activity::InternalSwap(protobuf::Intelligence_Activity *this, protobuf::Intelligence_Activity *a2)
{
  v5 = (this + 8);
  v4 = *(this + 1);
  v6 = *(a2 + 1);
  if (v4)
  {
    if ((v6 & 1) == 0)
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(a2 + 1);
      v7 = v36;
      v4 = *v5;
      if (*v5)
      {
        goto LABEL_6;
      }

      goto LABEL_40;
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

LABEL_40:
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
  v14 = *(this + 6);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 6) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_14;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v14 = *(this + 6);
  }

  v15 = *(a2 + 6);
  if (v15 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 6, 0, &google::protobuf::internal::fixed_address_empty_string);
    v15 = *(a2 + 6);
  }

  v16 = v14[2];
  result = *v14;
  v17 = v15[2];
  *v14 = *v15;
  v14[2] = v17;
  *v15 = result;
  v15[2] = v16;
LABEL_14:
  v18 = *(this + 7);
  if (v18 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 7) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_20;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v18 = *(this + 7);
  }

  v19 = *(a2 + 7);
  if (v19 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 7, 0, &google::protobuf::internal::fixed_address_empty_string);
    v19 = *(a2 + 7);
  }

  v20 = v18[2];
  result = *v18;
  v21 = v19[2];
  *v18 = *v19;
  v18[2] = v21;
  *v19 = result;
  v19[2] = v20;
LABEL_20:
  v22 = *(this + 8);
  if (v22 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 8) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_26;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v22 = *(this + 8);
  }

  v23 = *(a2 + 8);
  if (v23 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 8, 0, &google::protobuf::internal::fixed_address_empty_string);
    v23 = *(a2 + 8);
  }

  v24 = v22[2];
  result = *v22;
  v25 = v23[2];
  *v22 = *v23;
  v22[2] = v25;
  *v23 = result;
  v23[2] = v24;
LABEL_26:
  v26 = *(this + 9);
  if (v26 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 9) == &google::protobuf::internal::fixed_address_empty_string)
    {
      goto LABEL_32;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(this + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v26 = *(this + 9);
  }

  v27 = *(a2 + 9);
  if (v27 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 9, 0, &google::protobuf::internal::fixed_address_empty_string);
    v27 = *(a2 + 9);
  }

  v28 = v26[2];
  result = *v26;
  v29 = v27[2];
  *v26 = *v27;
  v26[2] = v29;
  *v27 = result;
  v27[2] = v28;
LABEL_32:
  v32 = *(this + 10);
  v30 = (this + 80);
  v31 = v32;
  if (v32 == &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(a2 + 10) == &google::protobuf::internal::fixed_address_empty_string)
    {
      return result;
    }

    google::protobuf::internal::ArenaStringPtr::CreateInstance(v30, 0, &google::protobuf::internal::fixed_address_empty_string);
    v31 = *v30;
  }

  v33 = *(a2 + 10);
  if (v33 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance(a2 + 10, 0, &google::protobuf::internal::fixed_address_empty_string);
    v33 = *(a2 + 10);
  }

  v34 = v31->__r_.__value_.__r.__words[2];
  result = *&v31->__r_.__value_.__l.__data_;
  v35 = v33[2];
  *&v31->__r_.__value_.__l.__data_ = *v33;
  v31->__r_.__value_.__r.__words[2] = v35;
  *v33 = result;
  v33[2] = v34;
  return result;
}