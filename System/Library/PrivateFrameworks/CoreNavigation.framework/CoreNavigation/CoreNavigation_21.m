uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 212))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v7 = *(v5 + 32);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 24) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(v5 + 16) + 8 * v8);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a2);
        ++v8;
      }

      while (v8 < *(v5 + 24));
    }
  }

  if (*(v5 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v10 = *(v5 + 56);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 48) >= 1)
    {
      v11 = 0;
      do
      {
        v12 = *(*(v5 + 40) + 4 * v11);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v11;
      }

      while (v11 < *(v5 + 48));
    }
  }

  if (*(v5 + 72) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    v13 = *(v5 + 80);
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
    if (*(v5 + 72) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = *(*(v5 + 64) + 4 * v14);
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2);
        ++v14;
      }

      while (v14 < *(v5 + 72));
    }
  }

  if (*(v5 + 96) >= 1)
  {
    v16 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 88) + 8 * v16++), a2, a4);
    }

    while (v16 < *(v5 + 96));
  }

  if (*(v5 + 120) >= 1)
  {
    v17 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, *(*(v5 + 112) + 8 * v17++), a2, a4);
    }

    while (v17 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v18 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, *(*(v5 + 136) + 8 * v18++), a2, a4);
    }

    while (v18 < *(v5 + 144));
  }

  if (*(v5 + 168) >= 1)
  {
    v19 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 160) + 8 * v19++), a2, a4);
    }

    while (v19 < *(v5 + 168));
  }

  if (*(v5 + 192) >= 1)
  {
    v20 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 184) + 8 * v20++), a2, a4);
    }

    while (v20 < *(v5 + 192));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::ByteSize(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this)
{
  if (*(this + 212))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(0);
      v3 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
    }

    v4 = CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayloadMetaData::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 6) < 1)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    do
    {
      v8 = (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(this + 2) + 8 * v7++)) + v8);
    }

    while (v7 < *(this + 6));
    if (v8 > 0)
    {
      if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      }

      else
      {
        v9 = 2;
      }

      v2 += v9;
    }
  }

  *(this + 8) = v8;
  v10 = v2 + v8;
  v11 = *(this + 12);
  if (v11 < 1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v12 = 0;
    LODWORD(v13) = 0;
    do
    {
      v14 = *(*(this + 5) + 4 * v12);
      if (v14 >= 0x80)
      {
        v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
        v11 = *(this + 12);
      }

      else
      {
        v15 = 1;
      }

      v13 = (v15 + v13);
      ++v12;
    }

    while (v12 < v11);
    if (v13 > 0)
    {
      if (v13 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      }

      else
      {
        v16 = 2;
      }

      v10 += v16;
    }
  }

  *(this + 14) = v13;
  v17 = v10 + v13;
  v18 = *(this + 18);
  if (v18 < 1)
  {
    LODWORD(v20) = 0;
  }

  else
  {
    v19 = 0;
    LODWORD(v20) = 0;
    do
    {
      v21 = *(*(this + 8) + 4 * v19);
      if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
        v18 = *(this + 18);
      }

      else
      {
        v22 = 1;
      }

      v20 = (v22 + v20);
      ++v19;
    }

    while (v19 < v18);
    if (v20 > 0)
    {
      if (v20 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
      }

      else
      {
        v23 = 2;
      }

      v17 += v23;
    }
  }

  *(this + 20) = v20;
  v24 = *(this + 24);
  v25 = v17 + v20 + v24;
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = CoreNavigation::CLP::LogEntry::RayTracingTileData::FacetInterVisibilityData::ByteSize(*(*(this + 11) + 8 * v26));
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v25 += v28 + v29;
      ++v26;
    }

    while (v26 < *(this + 24));
  }

  v30 = *(this + 30);
  v31 = v30 + v25;
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::ByteSize(*(*(this + 14) + 8 * v32));
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v31 += v34 + v35;
      ++v32;
    }

    while (v32 < *(this + 30));
  }

  v36 = *(this + 36);
  v37 = v36 + v31;
  if (v36 >= 1)
  {
    v38 = 0;
    do
    {
      v39 = CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::ByteSize(*(*(this + 17) + 8 * v38));
      v40 = v39;
      if (v39 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
      }

      else
      {
        v41 = 1;
      }

      v37 += v40 + v41;
      ++v38;
    }

    while (v38 < *(this + 36));
  }

  v42 = *(this + 42);
  v43 = v42 + v37;
  if (v42 >= 1)
  {
    v44 = 0;
    do
    {
      v45 = CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::ByteSize(*(*(this + 20) + 8 * v44));
      v46 = v45;
      if (v45 >= 0x80)
      {
        v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
      }

      else
      {
        v47 = 1;
      }

      v43 += v46 + v47;
      ++v44;
    }

    while (v44 < *(this + 42));
  }

  v48 = *(this + 48);
  v49 = (v48 + v43);
  if (v48 >= 1)
  {
    v50 = 0;
    do
    {
      v51 = CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::ByteSize(*(*(this + 23) + 8 * v50));
      v52 = v51;
      if (v51 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v51);
      }

      else
      {
        v53 = 1;
      }

      v49 = (v52 + v49 + v53);
      ++v50;
    }

    while (v50 < *(this + 48));
  }

  *(this + 52) = v49;
  return v49;
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::CopyFrom(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this, const CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::Swap(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *this, CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    v6 = *(a2 + 3);
    *(a2 + 2) = v5;
    v7 = *(this + 3);
    *(this + 3) = v6;
    *(a2 + 3) = v7;
    v8 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v9 = *(a2 + 6);
    *(a2 + 5) = v8;
    v10 = *(this + 6);
    *(this + 6) = v9;
    *(a2 + 6) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    v12 = *(a2 + 9);
    *(a2 + 8) = v11;
    v13 = *(this + 9);
    *(this + 9) = v12;
    *(a2 + 9) = v13;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v14 = *(v3 + 53);
    *(v3 + 53) = *(a2 + 53);
    *(a2 + 53) = v14;
    v15 = *(v3 + 52);
    *(v3 + 52) = *(a2 + 52);
    *(a2 + 52) = v15;
  }

  return this;
}

uint64_t *sub_1D0CA6E90(uint64_t *result, int a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    v3 = *result;
    v4 = 2 * v2;
    if (v4 <= a2)
    {
      v4 = a2;
    }

    if (v4 <= 4)
    {
      v4 = 4;
    }

    *(result + 3) = v4;
    operator new[]();
  }

  return result;
}

void sub_1D0CA6F40(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::RayTracingTileData::PointFacetVisibilityData::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CA70AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::protobuf_ShutdownFile_CoreNavigationCLPVisionEvent_2eproto(CoreNavigation::CLP::LogEntry::Vision *this)
{
  if (CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::simd_floatM::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::simd_floatM::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::simd_floatM::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::CGSize::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::CGSize::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::CGSize::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_;
  if (CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 8);

    return v2();
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this)
{
  *this = &unk_1F4CD87A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD87A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Vision::simd_floatM::simd_floatM(void *this)
{
  *this = &unk_1F4CD8820;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8820;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::simd_doubleM(void *this)
{
  *this = &unk_1F4CD8898;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8898;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::simd_floatMxN(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD8910;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD8910;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::simd_doubleMxN(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD8988;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD8988;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::CGSize::CGSize(void *this)
{
  *this = &unk_1F4CD8A00;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8A00;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::VIOInertialStateInfo(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this)
{
  *this = &unk_1F4CD8A78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_1F4CD8A78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::VIOInertialCovarianceInfo(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this)
{
  *this = &unk_1F4CD8AF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_1F4CD8AF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::VIOEstimation(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 10) = 0xFFFFFFFFLL;
  *this = &unk_1F4CD8B68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = MEMORY[0x1E69E5958];
  *(this + 4) = MEMORY[0x1E69E5958];
  *(this + 5) = 0;
  *(this + 22) = 0;
  *(this + 6) = v2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return result;
}

{
  *&result = 0xFFFFFFFFLL;
  *(this + 10) = 0xFFFFFFFFLL;
  *this = &unk_1F4CD8B68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v2 = MEMORY[0x1E69E5958];
  *(this + 4) = MEMORY[0x1E69E5958];
  *(this + 5) = 0;
  *(this + 22) = 0;
  *(this + 6) = v2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::LSLLocationCoordinate(void *this)
{
  *this = &unk_1F4CD8BE0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8BE0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocation::LSLLocation(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this)
{
  *this = &unk_1F4CD8C58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CD8C58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLHeading::LSLHeading(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this)
{
  *this = &unk_1F4CD8CD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CD8CD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::LSLMapRoadSegment(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CD8D48;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CD8D48;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::LSLHeadingSupplInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD8DC0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CD8DC0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation::LSLHeadingEstimation(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingEstimation *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD8E38;
  *(this + 6) = 0;
  *&result = 0x8FFFFFFFFLL;
  *(this + 2) = xmmword_1D0E79BC0;
  return result;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CD8E38;
  *(this + 6) = 0;
  *&result = 0x8FFFFFFFFLL;
  *(this + 2) = xmmword_1D0E79BC0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Vision::VLLocation::VLLocation(void *this)
{
  *this = &unk_1F4CD8EB0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8EB0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::VLVectorfM::VLVectorfM(void *this)
{
  *this = &unk_1F4CD8F28;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CD8F28;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::VLMatrixfMxN(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD8FA0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CD8FA0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details::VLLocalizationMaps488Details(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationMaps488Details *this)
{
  *this = &unk_1F4CD9018;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 34) = 0;
  *(this + 13) = 0;
  *(this + 14) = v2;
  *(this + 21) = 0;
  return result;
}

{
  *this = &unk_1F4CD9018;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 34) = 0;
  *(this + 13) = 0;
  *(this + 14) = v2;
  *(this + 21) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::VLLocalizationDebugInfo(void *this)
{
  *this = &unk_1F4CD9090;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4CD9090;
  this[1] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::VLLocalizationResult(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *this)
{
  *this = &unk_1F4CD9108;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4CD9108;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_;
  this[2] = v1;
  this[3] = CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::default_instance_;
  v2 = CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::default_instance_;
  this[7] = CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::default_instance_;
  this[8] = v2;
  this[9] = CoreNavigation::CLP::LogEntry::Vision::CGSize::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocation::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::default_instance_;
  *(this + 24) = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::LSLHeading::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::default_instance_;
  this[3] = v1;
  this[4] = v2;
  v3 = CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_;
  this[6] = CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_;
  this[7] = v3;
  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Vision::VLLocation::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::Vision::VLMatrixfMxN::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::default_instance_;
  this[4] = v2;
  this[5] = CoreNavigation::CLP::LogEntry::Vision::VLLocalizationDebugInfo::default_instance_;
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(CoreNavigation::CLP::LogEntry::Vision *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0CA8170(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::Vision::TimeStamp::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::TimeStamp *CoreNavigation::CLP::LogEntry::Vision::TimeStamp::TimeStamp(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this, const CoreNavigation::CLP::LogEntry::Vision::TimeStamp *a2)
{
  *this = &unk_1F4CD87A8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this, const CoreNavigation::CLP::LogEntry::Vision::TimeStamp *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_1D0CA8344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::TimeStamp::~TimeStamp(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this)
{
  *this = &unk_1F4CD87A8;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::TimeStamp::~TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::TimeStamp::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v11;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 1)
      {
        goto LABEL_20;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v11;
      *(this + 9) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v11;
        *(this + 9) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::TimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::Vision::TimeStamp::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Vision::TimeStamp::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this, const CoreNavigation::CLP::LogEntry::Vision::TimeStamp *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::TimeStamp::Swap(CoreNavigation::CLP::LogEntry::Vision::TimeStamp *this, CoreNavigation::CLP::LogEntry::Vision::TimeStamp *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::Vision::simd_floatM *CoreNavigation::CLP::LogEntry::Vision::simd_floatM::simd_floatM(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this, const CoreNavigation::CLP::LogEntry::Vision::simd_floatM *a2)
{
  *this = &unk_1F4CD8820;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergeFrom(this, a2);
  return this;
}

void sub_1D0CA8908(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x1D387EC80](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this, const CoreNavigation::CLP::LogEntry::Vision::simd_floatM *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_1D0CA6E90(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 4 * *(this + 4)), *(a2 + 1), 4 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }
}

void sub_1D0CA89F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatM::~simd_floatM(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this)
{
  *this = &unk_1F4CD8820;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::simd_floatM::~simd_floatM(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatM::Clear(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if ((TagFallback & 0xFFFFFFF8) == 8)
      {
        break;
      }

LABEL_9:
      if (v6 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v6 != 2)
    {
      if (v6 != 5)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

    result = sub_1D0CA8DB0(a2, this + 8);
    if (!result)
    {
      return result;
    }

    while (1)
    {
      v8 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v8 >= v9 || *v8 != 13)
      {
        break;
      }

      *(a2 + 1) = v8 + 1;
LABEL_16:
      v20[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v20) & 1) == 0)
      {
        return 0;
      }

      v10 = v20[0];
      v11 = *(this + 4);
      if (v11 == *(this + 5))
      {
        sub_1D0CA6E90(this + 1, v11 + 1);
        v11 = *(this + 4);
      }

      v12 = *(this + 1);
      v13 = v11 + 1;
      *(this + 4) = v11 + 1;
      *(v12 + 4 * v11) = v10;
      v14 = *(a2 + 1);
      v15 = *(a2 + 4) - v14;
      if (v15 >= 1)
      {
        v16 = v15 / 5u;
        v17 = v16 >= *(this + 5) - v13 ? *(this + 5) - v13 : v16;
        if (v17 >= 1)
        {
          v18 = 0;
          while (*v14 == 13)
          {
            v19 = *(v14 + 1);
            if (v13 >= *(this + 5))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
              v13 = *(this + 4);
              v12 = *(this + 1);
            }

            *(this + 4) = v13 + 1;
            *(v12 + 4 * v13) = v19;
            ++v18;
            v14 += 5;
            ++v13;
            if (v17 == v18)
            {
              goto LABEL_35;
            }
          }

          if (!v18)
          {
            continue;
          }

LABEL_35:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
        }
      }
    }
  }

  while (v8 != v9 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

void sub_1D0CA8D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0CA8DB0(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        sub_1D0CA6E90(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v8 + 4 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatM::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(this + 16) >= 1)
  {
    v4 = this;
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(*(v4 + 8) + 4 * v5++), a3);
    }

    while (v5 < *(v4 + 16));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatM::ByteSize(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this)
{
  v1 = (5 * *(this + 4));
  *(this + 6) = v1;
  return v1;
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatM::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatM::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this, const CoreNavigation::CLP::LogEntry::Vision::simd_floatM *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Vision::simd_floatM::Swap(CoreNavigation::CLP::LogEntry::Vision::simd_floatM *this, CoreNavigation::CLP::LogEntry::Vision::simd_floatM *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    result = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = result;
    *(a2 + 2) = v4;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::simd_doubleM(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this, const CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *a2)
{
  *this = &unk_1F4CD8898;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(this, a2);
  return this;
}

void sub_1D0CA9110(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x1D387EC80](*v3, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this, const CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  v4 = *(a2 + 4);
  if (v4)
  {
    sub_1D0C773F4(this + 1, *(this + 4) + v4);
    memcpy((*(this + 1) + 8 * *(this + 4)), *(a2 + 1), 8 * *(a2 + 4));
    *(this + 4) += *(a2 + 4);
  }
}

void sub_1D0CA91F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::~simd_doubleM(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this)
{
  *this = &unk_1F4CD8898;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  v2 = *(this + 1);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::~simd_doubleM(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::Clear(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v6 = TagFallback & 7;
    if ((TagFallback & 0xFFFFFFF8) == 8)
    {
      if (v6 == 1)
      {
        while (1)
        {
          v20[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v20) & 1) == 0)
          {
            return 0;
          }

          v8 = v20[0];
          v9 = *(this + 4);
          if (v9 == *(this + 5))
          {
            sub_1D0C773F4(this + 1, v9 + 1);
            v9 = *(this + 4);
          }

          v10 = *(this + 1);
          v11 = v9 + 1;
          *(this + 4) = v9 + 1;
          *(v10 + 8 * v9) = v8;
          v12 = *(a2 + 1);
          v13 = *(a2 + 4) - v12;
          if (v13 >= 1)
          {
            v14 = v13 / 9u;
            v15 = v14 >= *(this + 5) - v11 ? *(this + 5) - v11 : v14;
            if (v15 >= 1)
            {
              v16 = 0;
              while (*v12 == 9)
              {
                v17 = *(v12 + 1);
                if (v11 >= *(this + 5))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
                  v11 = *(this + 4);
                  v10 = *(this + 1);
                }

                *(this + 4) = v11 + 1;
                *(v10 + 8 * v11) = v17;
                ++v16;
                v12 += 9;
                ++v11;
                if (v15 == v16)
                {
                  goto LABEL_29;
                }
              }

              if (!v16)
              {
                goto LABEL_30;
              }

LABEL_29:
              wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
            }
          }

LABEL_30:
          v18 = *(a2 + 1);
          v19 = *(a2 + 2);
          if (v18 >= v19 || *v18 != 9)
          {
            if (v18 == v19 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          *(a2 + 1) = v18 + 1;
        }
      }

      if (v6 == 2)
      {
        break;
      }
    }

    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1D0C99640(a2, this + 8);
  if (result)
  {
    goto LABEL_30;
  }

  return result;
}

void sub_1D0CA95A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(this + 16) >= 1)
  {
    v4 = this;
    v5 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(*(v4 + 8) + 8 * v5++), a3);
    }

    while (v5 < *(v4 + 16));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::ByteSize(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this)
{
  v1 = (9 * *(this + 4));
  *(this + 6) = v1;
  return v1;
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this, const CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::Swap(CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *this, CoreNavigation::CLP::LogEntry::Vision::simd_doubleM *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    result = *(a2 + 2);
    *(a2 + 1) = v2;
    v4 = *(this + 2);
    *(this + 2) = result;
    *(a2 + 2) = v4;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return result;
}

CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::simd_floatMxN(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this, const CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *a2)
{
  *this = &unk_1F4CD8910;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergeFrom(this, a2);
  return this;
}

void sub_1D0CA9840(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this, const CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }
}

void sub_1D0CA9A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::~simd_floatMxN(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this)
{
  *this = &unk_1F4CD8910;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::~simd_floatMxN(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::Clear(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this)
{
  result = sub_1D0C77384(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v6 = *(this + 5);
        v7 = *(this + 4);
        if (v7 >= v6)
        {
          if (v6 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v6 = *(this + 5);
          }

          *(this + 5) = v6 + 1;
          operator new();
        }

        v8 = *(this + 1);
        *(this + 4) = v7 + 1;
        v9 = *(v8 + 8 * v7);
        v19 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
          {
            return 0;
          }
        }

        else
        {
          v19 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Vision::simd_floatM::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v13 = *(a2 + 14);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(a2 + 14) = v15;
        }

        v16 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v16 >= v17 || *v16 != 10)
        {
          if (v16 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v16 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::ByteSize(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    v4 = *(this + 4);
  }

  else
  {
    v3 = 0;
    LODWORD(v4) = *(this + 4);
    do
    {
      v5 = *(*(this + 1) + 8 * v3);
      v6 = (5 * *(v5 + 16));
      *(v5 + 24) = v6;
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v2 = *(this + 4);
      }

      else
      {
        v7 = 1;
      }

      v4 = (v6 + v4 + v7);
      ++v3;
    }

    while (v3 < v2);
  }

  *(this + 8) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this, const CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::Swap(CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *this, CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::simd_doubleMxN(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this, const CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *a2)
{
  *this = &unk_1F4CD8988;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(this, a2);
  return this;
}

void sub_1D0CAA0B0(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this, const CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(this + 4);
  v5 = *(a2 + 4);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  LODWORD(v6) = *(a2 + 4);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
      }

      v8 = *(*(a2 + 1) + 8 * v7);
      v9 = *(this + 5);
      v10 = *(this + 4);
      if (v10 >= v9)
      {
        if (v9 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v9 = *(this + 5);
        }

        *(this + 5) = v9 + 1;
        operator new();
      }

      v11 = *(this + 1);
      *(this + 4) = v10 + 1;
      CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 4);
    }

    while (v7 < v6);
  }
}

void sub_1D0CAA280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::~simd_doubleMxN(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this)
{
  *this = &unk_1F4CD8988;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::~simd_doubleMxN(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::Clear(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this)
{
  result = sub_1D0C77384(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
LABEL_1:
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
    }

    if (TagFallback == 10)
    {
      while (1)
      {
        v6 = *(this + 5);
        v7 = *(this + 4);
        if (v7 >= v6)
        {
          if (v6 == *(this + 6))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
            v6 = *(this + 5);
          }

          *(this + 5) = v6 + 1;
          operator new();
        }

        v8 = *(this + 1);
        *(this + 4) = v7 + 1;
        v9 = *(v8 + 8 * v7);
        v19 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
          {
            return 0;
          }
        }

        else
        {
          v19 = *v10;
          *(a2 + 1) = v10 + 1;
        }

        v11 = *(a2 + 14);
        v12 = *(a2 + 15);
        *(a2 + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v13 = *(a2 + 14);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(a2 + 14) = v15;
        }

        v16 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v16 >= v17 || *v16 != 10)
        {
          if (v16 == v17 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          goto LABEL_1;
        }

        *(a2 + 1) = v16 + 1;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 16) >= 1)
  {
    v5 = this;
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::ByteSize(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    v4 = *(this + 4);
  }

  else
  {
    v3 = 0;
    LODWORD(v4) = *(this + 4);
    do
    {
      v5 = *(*(this + 1) + 8 * v3);
      v6 = (9 * *(v5 + 16));
      *(v5 + 24) = v6;
      if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
        v2 = *(this + 4);
      }

      else
      {
        v7 = 1;
      }

      v4 = (v6 + v4 + v7);
      ++v3;
    }

    while (v3 < v2);
  }

  *(this + 8) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this, const CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::Swap(CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *this, CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    v5 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::CGSize::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Vision::CGSize *CoreNavigation::CLP::LogEntry::Vision::CGSize::CGSize(CoreNavigation::CLP::LogEntry::Vision::CGSize *this, const CoreNavigation::CLP::LogEntry::Vision::CGSize *a2)
{
  *this = &unk_1F4CD8A00;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::CGSize::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::CGSize::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::CGSize *this, const CoreNavigation::CLP::LogEntry::Vision::CGSize *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CAA9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::CGSize::~CGSize(CoreNavigation::CLP::LogEntry::Vision::CGSize *this)
{
  *this = &unk_1F4CD8A00;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::CGSize::~CGSize(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::CGSize::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::CGSize::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::CGSize *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::CGSize::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::CGSize::ByteSize(CoreNavigation::CLP::LogEntry::Vision::CGSize *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::Vision::CGSize::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::CGSize *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Vision::CGSize::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Vision::CGSize::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::CGSize *this, const CoreNavigation::CLP::LogEntry::Vision::CGSize *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Vision::CGSize::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::CGSize::Swap(CoreNavigation::CLP::LogEntry::Vision::CGSize *this, CoreNavigation::CLP::LogEntry::Vision::CGSize *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::VIOInertialStateInfo(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *a2)
{
  *this = &unk_1F4CD8A78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 16) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 16) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 5);
  *(this + 16) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 16) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v12 = *(a2 + 8);
    *(this + 16) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 16) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v13 = *(a2 + 9);
  *(this + 16) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 16) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 16);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 16) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 16) |= 0x200u;
  *(this + 12) = v15;
  v4 = *(a2 + 16);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_30:
  v16 = *(a2 + 13);
  *(this + 16) |= 0x400u;
  *(this + 13) = v16;
  if ((*(a2 + 16) & 0x800) == 0)
  {
    return;
  }

LABEL_18:
  v6 = *(a2 + 14);
  *(this + 16) |= 0x800u;
  *(this + 14) = v6;
}

void sub_1D0CAB120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::~VIOInertialStateInfo(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this)
{
  *this = &unk_1F4CD8A78;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::~VIOInertialStateInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 44) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v6 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_119;
              }
            }

            else if (v6 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_127;
              }
            }

            else if (v6 == 12 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_135;
            }
          }

          else if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_71;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_79;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 16) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v18 = v14 + 1;
          *(a2 + 1) = v18;
          goto LABEL_55;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_55:
      if (v18 >= v7 || (v22 = *v18, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v22;
        v23 = v18 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 16) |= 2u;
      if (v23 < v7 && *v23 == 24)
      {
        v8 = v23 + 1;
        *(a2 + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v24 = *v8, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v24;
          v25 = v8 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 16) |= 4u;
        if (v25 < v7 && *v25 == 32)
        {
          v16 = v25 + 1;
          *(a2 + 1) = v16;
LABEL_71:
          if (v16 >= v7 || (v26 = *v16, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v26;
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 16) |= 8u;
          if (v27 < v7 && *v27 == 40)
          {
            v20 = v27 + 1;
            *(a2 + 1) = v20;
LABEL_79:
            if (v20 >= v7 || (v28 = *v20, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v28;
              v29 = v20 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 16) |= 0x10u;
            if (v29 < v7 && *v29 == 48)
            {
              v10 = v29 + 1;
              *(a2 + 1) = v10;
LABEL_87:
              if (v10 >= v7 || (v30 = *v10, v30 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v31 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v30;
                v31 = v10 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 16) |= 0x20u;
              if (v31 < v7 && *v31 == 56)
              {
                v15 = v31 + 1;
                *(a2 + 1) = v15;
LABEL_95:
                if (v15 >= v7 || (v32 = *v15, v32 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v32;
                  v33 = v15 + 1;
                  *(a2 + 1) = v33;
                }

                *(this + 16) |= 0x40u;
                if (v33 < v7 && *v33 == 64)
                {
                  v19 = v33 + 1;
                  *(a2 + 1) = v19;
LABEL_103:
                  if (v19 >= v7 || (v34 = *v19, v34 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 10) = v34;
                    v35 = v19 + 1;
                    *(a2 + 1) = v35;
                  }

                  *(this + 16) |= 0x80u;
                  if (v35 < v7 && *v35 == 72)
                  {
                    v9 = v35 + 1;
                    *(a2 + 1) = v9;
LABEL_111:
                    if (v9 >= v7 || (v36 = *v9, v36 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 11) = v36;
                      v37 = v9 + 1;
                      *(a2 + 1) = v37;
                    }

                    *(this + 16) |= 0x100u;
                    if (v37 < v7 && *v37 == 80)
                    {
                      v17 = v37 + 1;
                      *(a2 + 1) = v17;
LABEL_119:
                      if (v17 >= v7 || (v38 = *v17, v38 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                        if (!result)
                        {
                          return result;
                        }

                        v39 = *(a2 + 1);
                        v7 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 12) = v38;
                        v39 = v17 + 1;
                        *(a2 + 1) = v39;
                      }

                      *(this + 16) |= 0x200u;
                      if (v39 < v7 && *v39 == 88)
                      {
                        v21 = v39 + 1;
                        *(a2 + 1) = v21;
LABEL_127:
                        if (v21 >= v7 || (v40 = *v21, v40 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                          if (!result)
                          {
                            return result;
                          }

                          v41 = *(a2 + 1);
                          v7 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 13) = v40;
                          v41 = v21 + 1;
                          *(a2 + 1) = v41;
                        }

                        *(this + 16) |= 0x400u;
                        if (v41 < v7 && *v41 == 96)
                        {
                          v11 = v41 + 1;
                          *(a2 + 1) = v11;
LABEL_135:
                          if (v11 >= v7 || (v42 = *v11, v42 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                            if (!result)
                            {
                              return result;
                            }

                            v43 = *(a2 + 1);
                            v7 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 14) = v42;
                            v43 = v11 + 1;
                            *(a2 + 1) = v43;
                          }

                          *(this + 16) |= 0x800u;
                          if (v43 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                          {
                            *(a2 + 8) = 0;
                            result = 1;
                            *(a2 + 36) = 1;
                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_46:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[16];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[16];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[16];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
    if ((v5[16] & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::ByteSize(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_56:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x800) != 0)
  {
LABEL_60:
    v24 = *(this + 14);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    }

    else
    {
      v25 = 2;
    }

    v3 = (v25 + v3);
  }

LABEL_64:
  *(this + 15) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this)
{
  result = 0.0;
  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::VIOInertialCovarianceInfo(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *a2)
{
  *this = &unk_1F4CD8AF0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v7 = *(a2 + 1);
    *(this + 16) |= 1u;
    *(this + 1) = v7;
    v4 = *(a2 + 16);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 4);
  *(this + 16) |= 2u;
  *(this + 4) = v8;
  v4 = *(a2 + 16);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 5);
  *(this + 16) |= 4u;
  *(this + 5) = v9;
  v4 = *(a2 + 16);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 6);
  *(this + 16) |= 8u;
  *(this + 6) = v10;
  v4 = *(a2 + 16);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v12 = *(a2 + 8);
    *(this + 16) |= 0x20u;
    *(this + 8) = v12;
    v4 = *(a2 + 16);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_24:
  v11 = *(a2 + 7);
  *(this + 16) |= 0x10u;
  *(this + 7) = v11;
  v4 = *(a2 + 16);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_26:
  v13 = *(a2 + 9);
  *(this + 16) |= 0x40u;
  *(this + 9) = v13;
  v4 = *(a2 + 16);
  if ((v4 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a2 + 10);
    *(this + 16) |= 0x80u;
    *(this + 10) = v5;
    v4 = *(a2 + 16);
  }

LABEL_13:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 11);
    *(this + 16) |= 0x100u;
    *(this + 11) = v14;
    v4 = *(a2 + 16);
    if ((v4 & 0x200) == 0)
    {
LABEL_16:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = *(a2 + 12);
  *(this + 16) |= 0x200u;
  *(this + 12) = v15;
  v4 = *(a2 + 16);
  if ((v4 & 0x400) == 0)
  {
LABEL_17:
    if ((v4 & 0x800) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_30:
  v16 = *(a2 + 13);
  *(this + 16) |= 0x400u;
  *(this + 13) = v16;
  if ((*(a2 + 16) & 0x800) == 0)
  {
    return;
  }

LABEL_18:
  v6 = *(a2 + 14);
  *(this + 16) |= 0x800u;
  *(this + 14) = v6;
}

void sub_1D0CAC114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::~VIOInertialCovarianceInfo(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this)
{
  *this = &unk_1F4CD8AF0;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::~VIOInertialCovarianceInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::Clear(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 52) = 0;
    *(this + 44) = 0;
  }

  *(this + 64) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        if (TagFallback >> 3 > 6)
        {
          if (TagFallback >> 3 > 9)
          {
            if (v6 == 10)
            {
              if ((TagFallback & 7) == 0)
              {
                v17 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_119;
              }
            }

            else if (v6 == 11)
            {
              if ((TagFallback & 7) == 0)
              {
                v21 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_127;
              }
            }

            else if (v6 == 12 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_135;
            }
          }

          else if (v6 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_95;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_103;
            }
          }

          else if (v6 == 9 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_111;
          }

          goto LABEL_46;
        }

        if (TagFallback >> 3 > 3)
        {
          if (v6 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v16 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_71;
            }
          }

          else if (v6 == 5)
          {
            if ((TagFallback & 7) == 0)
            {
              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_79;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_87;
          }

          goto LABEL_46;
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 16) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v18 = v14 + 1;
          *(a2 + 1) = v18;
          goto LABEL_55;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_46;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_55:
      if (v18 >= v7 || (v22 = *v18, v22 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v23 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v22;
        v23 = v18 + 1;
        *(a2 + 1) = v23;
      }

      *(this + 16) |= 2u;
      if (v23 < v7 && *v23 == 24)
      {
        v8 = v23 + 1;
        *(a2 + 1) = v8;
LABEL_63:
        if (v8 >= v7 || (v24 = *v8, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v24;
          v25 = v8 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 16) |= 4u;
        if (v25 < v7 && *v25 == 32)
        {
          v16 = v25 + 1;
          *(a2 + 1) = v16;
LABEL_71:
          if (v16 >= v7 || (v26 = *v16, v26 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v27 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v26;
            v27 = v16 + 1;
            *(a2 + 1) = v27;
          }

          *(this + 16) |= 8u;
          if (v27 < v7 && *v27 == 40)
          {
            v20 = v27 + 1;
            *(a2 + 1) = v20;
LABEL_79:
            if (v20 >= v7 || (v28 = *v20, v28 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v29 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v28;
              v29 = v20 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 16) |= 0x10u;
            if (v29 < v7 && *v29 == 48)
            {
              v10 = v29 + 1;
              *(a2 + 1) = v10;
LABEL_87:
              if (v10 >= v7 || (v30 = *v10, v30 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v31 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v30;
                v31 = v10 + 1;
                *(a2 + 1) = v31;
              }

              *(this + 16) |= 0x20u;
              if (v31 < v7 && *v31 == 56)
              {
                v15 = v31 + 1;
                *(a2 + 1) = v15;
LABEL_95:
                if (v15 >= v7 || (v32 = *v15, v32 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v33 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v32;
                  v33 = v15 + 1;
                  *(a2 + 1) = v33;
                }

                *(this + 16) |= 0x40u;
                if (v33 < v7 && *v33 == 64)
                {
                  v19 = v33 + 1;
                  *(a2 + 1) = v19;
LABEL_103:
                  if (v19 >= v7 || (v34 = *v19, v34 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
                    if (!result)
                    {
                      return result;
                    }

                    v35 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    *(this + 10) = v34;
                    v35 = v19 + 1;
                    *(a2 + 1) = v35;
                  }

                  *(this + 16) |= 0x80u;
                  if (v35 < v7 && *v35 == 72)
                  {
                    v9 = v35 + 1;
                    *(a2 + 1) = v9;
LABEL_111:
                    if (v9 >= v7 || (v36 = *v9, v36 < 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
                      if (!result)
                      {
                        return result;
                      }

                      v37 = *(a2 + 1);
                      v7 = *(a2 + 2);
                    }

                    else
                    {
                      *(this + 11) = v36;
                      v37 = v9 + 1;
                      *(a2 + 1) = v37;
                    }

                    *(this + 16) |= 0x100u;
                    if (v37 < v7 && *v37 == 80)
                    {
                      v17 = v37 + 1;
                      *(a2 + 1) = v17;
LABEL_119:
                      if (v17 >= v7 || (v38 = *v17, v38 < 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
                        if (!result)
                        {
                          return result;
                        }

                        v39 = *(a2 + 1);
                        v7 = *(a2 + 2);
                      }

                      else
                      {
                        *(this + 12) = v38;
                        v39 = v17 + 1;
                        *(a2 + 1) = v39;
                      }

                      *(this + 16) |= 0x200u;
                      if (v39 < v7 && *v39 == 88)
                      {
                        v21 = v39 + 1;
                        *(a2 + 1) = v21;
LABEL_127:
                        if (v21 >= v7 || (v40 = *v21, v40 < 0))
                        {
                          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                          if (!result)
                          {
                            return result;
                          }

                          v41 = *(a2 + 1);
                          v7 = *(a2 + 2);
                        }

                        else
                        {
                          *(this + 13) = v40;
                          v41 = v21 + 1;
                          *(a2 + 1) = v41;
                        }

                        *(this + 16) |= 0x400u;
                        if (v41 < v7 && *v41 == 96)
                        {
                          v11 = v41 + 1;
                          *(a2 + 1) = v11;
LABEL_135:
                          if (v11 >= v7 || (v42 = *v11, v42 < 0))
                          {
                            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 14);
                            if (!result)
                            {
                              return result;
                            }

                            v43 = *(a2 + 1);
                            v7 = *(a2 + 2);
                          }

                          else
                          {
                            *(this + 14) = v42;
                            v43 = v11 + 1;
                            *(a2 + 1) = v43;
                          }

                          *(this + 16) |= 0x800u;
                          if (v43 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                          {
                            *(a2 + 8) = 0;
                            result = 1;
                            *(a2 + 36) = 1;
                            return result;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 3 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_63;
    }

LABEL_46:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[16];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[16];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[16];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v5[10], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, v5[11], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, v5[13], a2, a4);
    if ((v5[16] & 0x800) == 0)
    {
      return this;
    }

    goto LABEL_25;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v5[12], a2, a4);
  v6 = v5[16];
  if ((v6 & 0x400) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v6 & 0x800) == 0)
  {
    return this;
  }

LABEL_25:
  v7 = v5[14];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xC, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::ByteSize(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  v4 = *(this + 4);
  if (v4 >= 0x80)
  {
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v5 = 2;
  }

  v3 = (v5 + v3);
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v7 = 2;
    }

    v3 = (v7 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v9 = 2;
  }

  v3 = (v9 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_26:
  v10 = *(this + 7);
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v11 = 2;
  }

  v3 = (v11 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_30:
  v12 = *(this + 8);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v13 = 2;
  }

  v3 = (v13 + v3);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v14 = *(this + 9);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v15 = 2;
  }

  v3 = (v15 + v3);
  if ((v2 & 0x80) != 0)
  {
LABEL_38:
    v16 = *(this + 10);
    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v17 = 2;
    }

    v3 = (v17 + v3);
  }

LABEL_42:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_64;
  }

  if ((v2 & 0x100) != 0)
  {
    v18 = *(this + 11);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v19 = 2;
    }

    v3 = (v19 + v3);
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_56;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v21 = 2;
  }

  v3 = (v21 + v3);
  if ((v2 & 0x400) == 0)
  {
LABEL_46:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_60;
  }

LABEL_56:
  v22 = *(this + 13);
  if (v22 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
    v2 = *(this + 16);
  }

  else
  {
    v23 = 2;
  }

  v3 = (v23 + v3);
  if ((v2 & 0x800) != 0)
  {
LABEL_60:
    v24 = *(this + 14);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    }

    else
    {
      v25 = 2;
    }

    v3 = (v25 + v3);
  }

LABEL_64:
  *(this + 15) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *this, const CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v2;
    LODWORD(v2) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v2;
    LODWORD(v2) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v2;
    LODWORD(v2) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v2;
    LODWORD(v2) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this)
{
  *&result = 0xFFFFFFFFLL;
  *(this + 10) = 0xFFFFFFFFLL;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = MEMORY[0x1E69E5958];
  *(this + 3) = 0;
  *(this + 4) = v2;
  *(this + 5) = 0;
  *(this + 6) = v2;
  *(this + 22) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::VIOEstimation(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this, const CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2)
{
  *(this + 10) = 0xFFFFFFFFLL;
  *this = &unk_1F4CD8B68;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  v3 = MEMORY[0x1E69E5958];
  *(this + 4) = MEMORY[0x1E69E5958];
  *(this + 5) = 0;
  *(this + 22) = 0;
  *(this + 6) = v3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this, const CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v25);
  }

  v5 = *(a2 + 22);
  if (!v5)
  {
    goto LABEL_46;
  }

  if (v5)
  {
    v6 = *(a2 + 20);
    if ((v6 + 1) >= 6)
    {
      __assert_rtn("set_tracking_state", "CoreNavigationCLPVisionEvent.pb.h", 3487, "::CoreNavigation::CLP::LogEntry::Vision::VIOTrackingState_IsValid(value)");
    }

    *(v3 + 22) |= 1u;
    *(v3 + 20) = v6;
    v5 = *(a2 + 22);
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 22) |= 2u;
    v7 = *(v3 + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(v7, v8);
    v5 = *(a2 + 22);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

  *(v3 + 22) |= 4u;
  v9 = *(v3 + 2);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(v9, v10);
  v5 = *(a2 + 22);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(v3 + 22) |= 8u;
  v11 = *(v3 + 3);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergeFrom(v11, v12);
  v5 = *(a2 + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_33:
    *(v3 + 22) |= 0x20u;
    v15 = *(v3 + 5);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 5);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergeFrom(v15, v16);
    v5 = *(a2 + 22);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_38;
  }

LABEL_30:
  v13 = *(a2 + 4);
  *(v3 + 22) |= 0x10u;
  v14 = *(v3 + 4);
  if (v14 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  this = std::string::operator=(v14, v13);
  v5 = *(a2 + 22);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_12:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_13;
  }

LABEL_38:
  v17 = *(a2 + 6);
  *(v3 + 22) |= 0x40u;
  v18 = *(v3 + 6);
  if (v18 == MEMORY[0x1E69E5958])
  {
    operator new();
  }

  this = std::string::operator=(v18, v17);
  v5 = *(a2 + 22);
  if ((v5 & 0x80) != 0)
  {
LABEL_41:
    *(v3 + 22) |= 0x80u;
    v19 = *(v3 + 7);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 7);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v20 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 56);
    }

    CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergeFrom(v19, v20);
    v5 = *(a2 + 22);
  }

LABEL_46:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 22) |= 0x100u;
      v21 = *(v3 + 8);
      if (!v21)
      {
        operator new();
      }

      v22 = *(a2 + 8);
      if (!v22)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v22 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 64);
      }

      CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergeFrom(v21, v22);
      v5 = *(a2 + 22);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 22) |= 0x200u;
      v23 = *(v3 + 9);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 9);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v24 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 72);
      }

      return CoreNavigation::CLP::LogEntry::Vision::CGSize::MergeFrom(v23, v24);
    }
  }

  return result;
}

void sub_1D0CAD47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::~VIOEstimation(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this)
{
  *this = &unk_1F4CD8B68;
  CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::~VIOEstimation(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this)
{
  v1 = this;
  v2 = *(this + 4);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 6);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1D387ECA0](v5, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ != v1)
  {
    v7 = *(v1 + 1);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(v1 + 2);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(v1 + 3);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(v1 + 5);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(v1 + 7);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(v1 + 8);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(v1 + 9);
    if (v13)
    {
      v14 = *(*v13 + 8);

      v14();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  if (v2)
  {
    *(this + 80) = -1;
    if ((v2 & 2) != 0)
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 88);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(this + 88);
      }
    }

    if ((v2 & 8) != 0)
    {
      v5 = *(this + 24);
      if (v5)
      {
        v6 = *(v5 + 64);
        if (v6)
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        if ((v6 & 0xFF00) != 0)
        {
          *(v5 + 52) = 0;
          *(v5 + 44) = 0;
        }

        *(v5 + 64) = 0;
        v2 = *(this + 88);
      }
    }

    v7 = MEMORY[0x1E69E5958];
    if ((v2 & 0x10) != 0)
    {
      v8 = *(this + 32);
      if (v8 != MEMORY[0x1E69E5958])
      {
        if (*(v8 + 23) < 0)
        {
          **v8 = 0;
          *(v8 + 8) = 0;
        }

        else
        {
          *v8 = 0;
          *(v8 + 23) = 0;
        }
      }
    }

    v9 = *(this + 88);
    if ((v9 & 0x20) != 0)
    {
      v10 = *(this + 40);
      if (v10)
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          *(v10 + 40) = 0;
          *(v10 + 24) = 0u;
          *(v10 + 8) = 0u;
        }

        if ((v11 & 0xFF00) != 0)
        {
          *(v10 + 52) = 0;
          *(v10 + 44) = 0;
        }

        *(v10 + 64) = 0;
        v9 = *(this + 88);
      }
    }

    if ((v9 & 0x40) != 0)
    {
      v12 = *(this + 48);
      if (v12 != v7)
      {
        if (*(v12 + 23) < 0)
        {
          **v12 = 0;
          *(v12 + 8) = 0;
        }

        else
        {
          *v12 = 0;
          *(v12 + 23) = 0;
        }
      }
    }

    v2 = *(this + 88);
    if ((v2 & 0x80) != 0)
    {
      v13 = *(this + 56);
      if (v13)
      {
        this = sub_1D0C77384(v13 + 8);
        *(v13 + 36) = 0;
        v2 = *(v1 + 88);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v14 = *(v1 + 64);
      if (v14)
      {
        this = sub_1D0C77384(v14 + 8);
        *(v14 + 36) = 0;
        v2 = *(v1 + 88);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v15 = *(v1 + 72);
      if (v15)
      {
        if (*(v15 + 28))
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
        }

        *(v15 + 28) = 0;
      }
    }
  }

  *(v1 + 88) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if (v8 == 2)
              {
                goto LABEL_99;
              }
            }

            else if (v7 == 7 && v8 == 2)
            {
              goto LABEL_113;
            }

            goto LABEL_41;
          }

          if (v7 == 8)
          {
            if (v8 == 2)
            {
              goto LABEL_119;
            }

            goto LABEL_41;
          }

          if (v7 == 9)
          {
            if (v8 != 2)
            {
              goto LABEL_41;
            }

LABEL_133:
            *(this + 22) |= 0x100u;
            v51 = *(this + 8);
            if (!v51)
            {
              operator new();
            }

            v64 = 0;
            v52 = *(a2 + 1);
            if (v52 >= *(a2 + 2) || *v52 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
              {
                return 0;
              }
            }

            else
            {
              v64 = *v52;
              *(a2 + 1) = v52 + 1;
            }

            v53 = *(a2 + 14);
            v54 = *(a2 + 15);
            *(a2 + 14) = v53 + 1;
            if (v53 >= v54)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergePartialFromCodedStream(v51, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v55 = *(a2 + 14);
            v18 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v56 < 0 == v18)
            {
              *(a2 + 14) = v56;
            }

            v57 = *(a2 + 1);
            if (v57 < *(a2 + 2) && *v57 == 82)
            {
              *(a2 + 1) = v57 + 1;
              goto LABEL_147;
            }
          }

          else
          {
            if (v7 != 10 || v8 != 2)
            {
              goto LABEL_41;
            }

LABEL_147:
            *(this + 22) |= 0x200u;
            v58 = *(this + 9);
            if (!v58)
            {
              operator new();
            }

            v64 = 0;
            v59 = *(a2 + 1);
            if (v59 >= *(a2 + 2) || *v59 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
              {
                return 0;
              }
            }

            else
            {
              v64 = *v59;
              *(a2 + 1) = v59 + 1;
            }

            v60 = *(a2 + 14);
            v61 = *(a2 + 15);
            *(a2 + 14) = v60 + 1;
            if (v60 >= v61)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Vision::CGSize::MergePartialFromCodedStream(v58, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v62 = *(a2 + 14);
            v18 = __OFSUB__(v62, 1);
            v63 = v62 - 1;
            if (v63 < 0 == v18)
            {
              *(a2 + 14) = v63;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_41;
          }

          goto LABEL_51;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_41;
        }

        v64 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || (v10 = *v9, (v10 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64);
          if (!result)
          {
            return result;
          }

          v10 = v64;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v10 + 1 <= 5)
        {
          *(this + 22) |= 1u;
          *(this + 20) = v10;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
LABEL_51:
          *(this + 22) |= 2u;
          v13 = *(this + 1);
          if (!v13)
          {
            operator new();
          }

          v64 = 0;
          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2) || *v14 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
            {
              return 0;
            }
          }

          else
          {
            v64 = *v14;
            *(a2 + 1) = v14 + 1;
          }

          v15 = *(a2 + 14);
          v16 = *(a2 + 15);
          *(a2 + 14) = v15 + 1;
          if (v15 >= v16)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v17 = *(a2 + 14);
          v18 = __OFSUB__(v17, 1);
          v19 = v17 - 1;
          if (v19 < 0 == v18)
          {
            *(a2 + 14) = v19;
          }

          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 26)
          {
            *(a2 + 1) = v20 + 1;
LABEL_65:
            *(this + 22) |= 4u;
            v21 = *(this + 2);
            if (!v21)
            {
              operator new();
            }

            v64 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
              {
                return 0;
              }
            }

            else
            {
              v64 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v23 = *(a2 + 14);
            v24 = *(a2 + 15);
            *(a2 + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergePartialFromCodedStream(v21, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v25 = *(a2 + 14);
            v18 = __OFSUB__(v25, 1);
            v26 = v25 - 1;
            if (v26 < 0 == v18)
            {
              *(a2 + 14) = v26;
            }

            v27 = *(a2 + 1);
            if (v27 < *(a2 + 2) && *v27 == 34)
            {
              *(a2 + 1) = v27 + 1;
              goto LABEL_79;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_41;
        }

        goto LABEL_65;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_41;
      }

LABEL_79:
      *(this + 22) |= 8u;
      v28 = *(this + 3);
      if (!v28)
      {
        operator new();
      }

      v64 = 0;
      v29 = *(a2 + 1);
      if (v29 >= *(a2 + 2) || *v29 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
        {
          return 0;
        }
      }

      else
      {
        v64 = *v29;
        *(a2 + 1) = v29 + 1;
      }

      v30 = *(a2 + 14);
      v31 = *(a2 + 15);
      *(a2 + 14) = v30 + 1;
      if (v30 >= v31)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::MergePartialFromCodedStream(v28, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v32 = *(a2 + 14);
      v18 = __OFSUB__(v32, 1);
      v33 = v32 - 1;
      if (v33 < 0 == v18)
      {
        *(a2 + 14) = v33;
      }

      v34 = *(a2 + 1);
      if (v34 < *(a2 + 2) && *v34 == 42)
      {
        *(a2 + 1) = v34 + 1;
LABEL_93:
        *(this + 22) |= 0x10u;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        if (v35 < *(a2 + 2) && *v35 == 50)
        {
          *(a2 + 1) = v35 + 1;
LABEL_99:
          *(this + 22) |= 0x20u;
          v36 = *(this + 5);
          if (!v36)
          {
            operator new();
          }

          v64 = 0;
          v37 = *(a2 + 1);
          if (v37 >= *(a2 + 2) || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
            {
              return 0;
            }
          }

          else
          {
            v64 = *v37;
            *(a2 + 1) = v37 + 1;
          }

          v38 = *(a2 + 14);
          v39 = *(a2 + 15);
          *(a2 + 14) = v38 + 1;
          if (v38 >= v39)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v40 = *(a2 + 14);
          v18 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v18)
          {
            *(a2 + 14) = v41;
          }

          v42 = *(a2 + 1);
          if (v42 < *(a2 + 2) && *v42 == 58)
          {
            *(a2 + 1) = v42 + 1;
LABEL_113:
            *(this + 22) |= 0x40u;
            if (*(this + 6) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v43 = *(a2 + 1);
            if (v43 < *(a2 + 2) && *v43 == 66)
            {
              *(a2 + 1) = v43 + 1;
LABEL_119:
              *(this + 22) |= 0x80u;
              v44 = *(this + 7);
              if (!v44)
              {
                operator new();
              }

              v64 = 0;
              v45 = *(a2 + 1);
              if (v45 >= *(a2 + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v64))
                {
                  return 0;
                }
              }

              else
              {
                v64 = *v45;
                *(a2 + 1) = v45 + 1;
              }

              v46 = *(a2 + 14);
              v47 = *(a2 + 15);
              *(a2 + 14) = v46 + 1;
              if (v46 >= v47)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v48 = *(a2 + 14);
              v18 = __OFSUB__(v48, 1);
              v49 = v48 - 1;
              if (v49 < 0 == v18)
              {
                *(a2 + 14) = v49;
              }

              v50 = *(a2 + 1);
              if (v50 < *(a2 + 2) && *v50 == 74)
              {
                *(a2 + 1) = v50 + 1;
                goto LABEL_133;
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_93;
    }

LABEL_41:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

unsigned int *CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[22];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[20], a2, a4);
    v6 = v5[22];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = v5[22];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v8 = *(v5 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = v5[22];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v9 = *(v5 + 3);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = v5[22];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(v5 + 4);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[22];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_23:
  v11 = *(v5 + 5);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = v5[22];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = *(v5 + 6);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = v5[22];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_27:
  v13 = *(v5 + 7);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v13, a2, a4);
  v6 = v5[22];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_30:
  v14 = *(v5 + 8);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  if ((v5[22] & 0x200) != 0)
  {
LABEL_33:
    v15 = *(v5 + 9);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 72);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v15, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::ByteSize(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_74;
  }

  if (v2)
  {
    this = *(this + 80);
    if ((this & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v3 = (this + 1);
      v2 = *(v1 + 88);
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }
  }

  v4 = *(v1 + 8);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 8);
  }

  v5 = *(v4 + 36);
  if (*(v4 + 36))
  {
    v6 = (v5 << 31 >> 31) & 9;
    if ((v5 & 2) != 0)
    {
      v6 += 9;
    }

    if ((v5 & 4) != 0)
    {
      v5 = v6 + 9;
    }

    else
    {
      v5 = v6;
    }
  }

  *(v4 + 32) = v5;
  v3 = (v3 + v5 + 2);
  v2 = *(v1 + 88);
LABEL_22:
  if ((v2 & 4) != 0)
  {
    v7 = *(v1 + 16);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 16);
    }

    v8 = *(v7 + 36);
    if (*(v7 + 36))
    {
      v9 = (v8 << 31 >> 31) & 9;
      if ((v8 & 2) != 0)
      {
        v9 += 9;
      }

      if ((v8 & 4) != 0)
      {
        v8 = v9 + 9;
      }

      else
      {
        v8 = v9;
      }
    }

    *(v7 + 32) = v8;
    v3 = (v3 + v8 + 2);
    v2 = *(v1 + 88);
    if ((v2 & 8) == 0)
    {
LABEL_24:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_44;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_24;
  }

  v10 = *(v1 + 24);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
    v10 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 24);
  }

  v11 = CoreNavigation::CLP::LogEntry::Vision::VIOInertialStateInfo::ByteSize(v10);
  v12 = v11;
  if (v11 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    this = 1;
  }

  v3 = (v3 + v12 + this + 1);
  v2 = *(v1 + 88);
  if ((v2 & 0x10) == 0)
  {
LABEL_25:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_44:
  v13 = *(v1 + 32);
  v14 = *(v13 + 23);
  v15 = v14;
  v16 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v16;
  }

  if (v17 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
    v14 = *(v13 + 23);
    v16 = *(v13 + 8);
    v2 = *(v1 + 88);
    v15 = *(v13 + 23);
  }

  else
  {
    this = 1;
  }

  if (v15 < 0)
  {
    v14 = v16;
  }

  v3 = (v3 + this + v14 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_26:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_53:
  v18 = *(v1 + 40);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
    v18 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 40);
  }

  v19 = CoreNavigation::CLP::LogEntry::Vision::VIOInertialCovarianceInfo::ByteSize(v18);
  v20 = v19;
  if (v19 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    this = 1;
  }

  v3 = (v3 + v20 + this + 1);
  v2 = *(v1 + 88);
  if ((v2 & 0x40) == 0)
  {
LABEL_27:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_68;
  }

LABEL_59:
  v21 = *(v1 + 48);
  v22 = *(v21 + 23);
  v23 = v22;
  v24 = *(v21 + 8);
  if ((v22 & 0x80u) == 0)
  {
    v25 = *(v21 + 23);
  }

  else
  {
    v25 = v24;
  }

  if (v25 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    v22 = *(v21 + 23);
    v24 = *(v21 + 8);
    v2 = *(v1 + 88);
    v23 = *(v21 + 23);
  }

  else
  {
    this = 1;
  }

  if (v23 < 0)
  {
    v22 = v24;
  }

  v3 = (v3 + this + v22 + 1);
  if ((v2 & 0x80) != 0)
  {
LABEL_68:
    v26 = *(v1 + 56);
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v26 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 56);
    }

    v27 = CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::ByteSize(v26);
    v28 = v27;
    if (v27 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    }

    else
    {
      this = 1;
    }

    v3 = (v3 + v28 + this + 1);
    v2 = *(v1 + 88);
  }

LABEL_74:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v29 = *(v1 + 64);
      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
        v29 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 64);
      }

      v30 = CoreNavigation::CLP::LogEntry::Vision::simd_floatMxN::ByteSize(v29);
      v31 = v30;
      if (v30 >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      }

      else
      {
        this = 1;
      }

      v3 = (v3 + v31 + this + 1);
      v2 = *(v1 + 88);
    }

    if ((v2 & 0x200) != 0)
    {
      v32 = *(v1 + 72);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v32 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 72);
      }

      v33 = *(v32 + 28);
      v34 = (v33 << 31 >> 31) & 9;
      if ((v33 & 2) != 0)
      {
        v34 += 9;
      }

      if (*(v32 + 28))
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }

      *(v32 + 24) = v35;
      v3 = (v3 + v35 + 2);
    }
  }

  *(v1 + 84) = v3;
  return v3;
}

double CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *this, const CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 80);
    *(this + 80) = *(a2 + 20);
    *(a2 + 20) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v11;
    LODWORD(v11) = *(this + 88);
    *(this + 88) = *(a2 + 22);
    *(a2 + 22) = v11;
    LODWORD(v11) = *(this + 84);
    *(this + 84) = *(a2 + 21);
    *(a2 + 21) = v11;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::LSLLocationCoordinate(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this, const CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *a2)
{
  *this = &unk_1F4CD8BE0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this, const CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 7) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_1D0CAEC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::~LSLLocationCoordinate(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this)
{
  *this = &unk_1F4CD8BE0;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::~LSLLocationCoordinate(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 28);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::ByteSize(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 6) = v1;
  return v1;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this, const CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::Swap(CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *this, CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v4;
    v5 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v5;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocation::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::LSLLocation *CoreNavigation::CLP::LogEntry::Vision::LSLLocation::LSLLocation(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this, const CoreNavigation::CLP::LogEntry::Vision::LSLLocation *a2)
{
  *this = &unk_1F4CD8C58;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this, const CoreNavigation::CLP::LogEntry::Vision::LSLLocation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergeFrom(v6, v7);
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_14;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_14:
    *(this + 9) |= 4u;
    v8 = *(this + 3);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 3);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 24);
    }

    return CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(v8, v9);
  }

  return result;
}

void sub_1D0CAF348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLLocation::~LSLLocation(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this)
{
  *this = &unk_1F4CD8C58;
  CoreNavigation::CLP::LogEntry::Vision::LSLLocation::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LSLLocation::~LSLLocation(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLLocation::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this)
{
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocation::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 36);
  if (v1)
  {
    if (*(this + 36))
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(this + 36);
      }
    }

    *(this + 16) = 0;
    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
      }
    }
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 2)
        {
          v10 = *(this + 9);
          goto LABEL_35;
        }

        goto LABEL_18;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 2)
      {
        goto LABEL_18;
      }

      *(this + 9) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v25[0] = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
        {
          return 0;
        }
      }

      else
      {
        v25[0] = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v11 = *(a2 + 14);
      v12 = *(a2 + 15);
      *(a2 + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 17)
      {
        *(a2 + 1) = v16 + 1;
LABEL_31:
        *v25 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v25) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v25;
        v10 = *(this + 9) | 2;
        *(this + 9) = v10;
        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 26)
        {
          *(a2 + 1) = v17 + 1;
LABEL_35:
          *(this + 9) = v10 | 4;
          v18 = *(this + 3);
          if (!v18)
          {
            operator new();
          }

          v25[0] = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v25))
            {
              return 0;
            }
          }

          else
          {
            v25[0] = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v14 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v14)
          {
            *(a2 + 14) = v23;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_31;
    }

LABEL_18:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v7 = *(this + 8);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 24);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 24);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLLocation::ByteSize(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this)
{
  LOBYTE(v2) = *(this + 36);
  if (v2)
  {
    if (*(this + 36))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 8);
      }

      v6 = *(v5 + 28);
      if (*(v5 + 28))
      {
        if ((v6 & 2) != 0)
        {
          v6 = ((v6 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v6 = (v6 << 31 >> 31) & 9;
        }
      }

      *(v5 + 24) = v6;
      v3 = v6 + 2;
      v2 = *(this + 9);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 4) != 0)
    {
      v7 = *(this + 3);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::Vision::LSLLocation::default_instance_ + 24);
      }

      v8 = *(v7 + 36);
      if (*(v7 + 36))
      {
        v9 = (v8 << 31 >> 31) & 9;
        if ((v8 & 2) != 0)
        {
          v9 += 9;
        }

        if ((v8 & 4) != 0)
        {
          v8 = v9 + 9;
        }

        else
        {
          v8 = v9;
        }
      }

      *(v7 + 32) = v8;
      v4 = (v4 + v8 + 2);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 8) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocation::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocation::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this, const CoreNavigation::CLP::LogEntry::Vision::LSLLocation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLLocation::Swap(CoreNavigation::CLP::LogEntry::Vision::LSLLocation *this, CoreNavigation::CLP::LogEntry::Vision::LSLLocation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    result = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = result;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v4;
    LODWORD(v4) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::Vision::LSLHeading::SharedCtor(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 7) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::Vision::LSLHeading *CoreNavigation::CLP::LogEntry::Vision::LSLHeading::LSLHeading(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeading *a2)
{
  *this = &unk_1F4CD8CD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0xFFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeading *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  LOBYTE(v4) = *(a2 + 72);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 72))
  {
    *(this + 18) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergeFrom(v5, v6);
    v4 = *(a2 + 18);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 18) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(v7, v8);
  v4 = *(a2 + 18);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 18) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergeFrom(v9, v10);
  v4 = *(a2 + 18);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(this + 18) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergeFrom(v11, v12);
  v4 = *(a2 + 18);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_34:
    v14 = *(a2 + 16);
    if ((v14 + 1) >= 4)
    {
      __assert_rtn("set_global_reference_frame", "CoreNavigationCLPVisionEvent.pb.h", 4296, "::CoreNavigation::CLP::LogEntry::Vision::LSLGlobalReferenceFrame_IsValid(value)");
    }

    *(this + 18) |= 0x20u;
    *(this + 16) = v14;
    v4 = *(a2 + 18);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_33:
  v13 = *(a2 + 5);
  *(this + 18) |= 0x10u;
  *(this + 5) = v13;
  v4 = *(a2 + 18);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_36:
  *(this + 18) |= 0x40u;
  v15 = *(this + 6);
  if (!v15)
  {
    operator new();
  }

  v16 = *(a2 + 6);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 48);
  }

  CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergeFrom(v15, v16);
  if ((*(a2 + 18) & 0x80) != 0)
  {
LABEL_41:
    *(this + 18) |= 0x80u;
    v17 = *(this + 7);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 7);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v18 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 56);
    }

    CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergeFrom(v17, v18);
  }
}

void sub_1D0CB00C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeading::~LSLHeading(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this)
{
  *this = &unk_1F4CD8CD0;
  CoreNavigation::CLP::LogEntry::Vision::LSLHeading::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LSLHeading::~LSLHeading(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeading::SharedDtor(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this)
{
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 7);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeading::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (v2)
  {
    if (*(this + 72))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 72);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        this = sub_1D0C77384(v4 + 8);
        *(v4 + 36) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(v1 + 24);
      if (v5)
      {
        this = sub_1D0C77384(v5 + 8);
        *(v5 + 36) = 0;
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 8) != 0)
    {
      v6 = *(v1 + 32);
      if (v6)
      {
        *(v6 + 16) = 0;
        *(v6 + 28) = 0;
        v2 = *(v1 + 72);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 64) = -1;
    if ((v2 & 0x40) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Vision::LSLLocation::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::Clear(this);
      }
    }
  }

  *(v1 + 72) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 20))
  {
    v2 = *(this + 8);
    if (v2)
    {
      if (*(v2 + 44))
      {
        *(v2 + 8) = 0;
      }

      this = sub_1D0C77384(v2 + 16);
      *(v2 + 44) = 0;
    }
  }

  *(v1 + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 4)
        {
          break;
        }

        if (TagFallback >> 3 <= 6)
        {
          if (v6 == 5)
          {
            if (v7 == 1)
            {
              goto LABEL_90;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_94;
          }

          goto LABEL_36;
        }

        if (v6 == 7)
        {
          if (v7 != 2)
          {
            goto LABEL_36;
          }

LABEL_104:
          *(this + 18) |= 0x40u;
          v43 = *(this + 6);
          if (!v43)
          {
            operator new();
          }

          v56[0] = 0;
          v44 = *(a2 + 1);
          if (v44 >= *(a2 + 2) || *v44 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
            {
              return 0;
            }
          }

          else
          {
            v56[0] = *v44;
            *(a2 + 1) = v44 + 1;
          }

          v45 = *(a2 + 14);
          v46 = *(a2 + 15);
          *(a2 + 14) = v45 + 1;
          if (v45 >= v46)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::LSLLocation::MergePartialFromCodedStream(v43, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v47 = *(a2 + 14);
          v15 = __OFSUB__(v47, 1);
          v48 = v47 - 1;
          if (v48 < 0 == v15)
          {
            *(a2 + 14) = v48;
          }

          v49 = *(a2 + 1);
          if (v49 < *(a2 + 2) && *v49 == 66)
          {
            *(a2 + 1) = v49 + 1;
            goto LABEL_118;
          }
        }

        else
        {
          if (v6 != 8 || v7 != 2)
          {
            goto LABEL_36;
          }

LABEL_118:
          *(this + 18) |= 0x80u;
          v50 = *(this + 7);
          if (!v50)
          {
            operator new();
          }

          v56[0] = 0;
          v51 = *(a2 + 1);
          if (v51 >= *(a2 + 2) || *v51 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
            {
              return 0;
            }
          }

          else
          {
            v56[0] = *v51;
            *(a2 + 1) = v51 + 1;
          }

          v52 = *(a2 + 14);
          v53 = *(a2 + 15);
          *(a2 + 14) = v52 + 1;
          if (v52 >= v53)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergePartialFromCodedStream(v50, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v54 = *(a2 + 14);
          v15 = __OFSUB__(v54, 1);
          v55 = v54 - 1;
          if (v55 < 0 == v15)
          {
            *(a2 + 14) = v55;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if (v7 == 2)
          {
            goto LABEL_62;
          }
        }

        else if (v6 == 4 && v7 == 2)
        {
          goto LABEL_76;
        }

        goto LABEL_36;
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_36;
      }

      *(this + 18) |= 1u;
      v10 = *(this + 1);
      if (!v10)
      {
        operator new();
      }

      v56[0] = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
        {
          return 0;
        }
      }

      else
      {
        v56[0] = *v11;
        *(a2 + 1) = v11 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Vision::TimeStamp::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v14 = *(a2 + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(a2 + 14) = v16;
      }

      v17 = *(a2 + 1);
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_48:
        *(this + 18) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v56[0] = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
          {
            return 0;
          }
        }

        else
        {
          v56[0] = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v22 = *(a2 + 14);
        v15 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v23 < 0 == v15)
        {
          *(a2 + 14) = v23;
        }

        v24 = *(a2 + 1);
        if (v24 < *(a2 + 2) && *v24 == 26)
        {
          *(a2 + 1) = v24 + 1;
LABEL_62:
          *(this + 18) |= 4u;
          v25 = *(this + 3);
          if (!v25)
          {
            operator new();
          }

          v56[0] = 0;
          v26 = *(a2 + 1);
          if (v26 >= *(a2 + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
            {
              return 0;
            }
          }

          else
          {
            v56[0] = *v26;
            *(a2 + 1) = v26 + 1;
          }

          v27 = *(a2 + 14);
          v28 = *(a2 + 15);
          *(a2 + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v29 = *(a2 + 14);
          v15 = __OFSUB__(v29, 1);
          v30 = v29 - 1;
          if (v30 < 0 == v15)
          {
            *(a2 + 14) = v30;
          }

          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 34)
          {
            *(a2 + 1) = v31 + 1;
LABEL_76:
            *(this + 18) |= 8u;
            v32 = *(this + 4);
            if (!v32)
            {
              operator new();
            }

            v56[0] = 0;
            v33 = *(a2 + 1);
            if (v33 >= *(a2 + 2) || *v33 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56))
              {
                return 0;
              }
            }

            else
            {
              v56[0] = *v33;
              *(a2 + 1) = v33 + 1;
            }

            v34 = *(a2 + 14);
            v35 = *(a2 + 15);
            *(a2 + 14) = v34 + 1;
            if (v34 >= v35)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Vision::simd_doubleM::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v36 = *(a2 + 14);
            v15 = __OFSUB__(v36, 1);
            v37 = v36 - 1;
            if (v37 < 0 == v15)
            {
              *(a2 + 14) = v37;
            }

            v38 = *(a2 + 1);
            if (v38 < *(a2 + 2) && *v38 == 41)
            {
              *(a2 + 1) = v38 + 1;
LABEL_90:
              *v56 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v56) & 1) == 0)
              {
                return 0;
              }

              *(this + 5) = *v56;
              *(this + 18) |= 0x10u;
              v39 = *(a2 + 1);
              v8 = *(a2 + 2);
              if (v39 < v8 && *v39 == 48)
              {
                v9 = v39 + 1;
                *(a2 + 1) = v9;
LABEL_94:
                v56[0] = 0;
                if (v9 >= v8 || (v40 = *v9, (v40 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v56);
                  if (!result)
                  {
                    return result;
                  }

                  v40 = v56[0];
                }

                else
                {
                  *(a2 + 1) = v9 + 1;
                }

                if (v40 + 1 <= 3)
                {
                  *(this + 18) |= 0x20u;
                  *(this + 16) = v40;
                }

                v42 = *(a2 + 1);
                if (v42 < *(a2 + 2) && *v42 == 58)
                {
                  *(a2 + 1) = v42 + 1;
                  goto LABEL_104;
                }
              }
            }
          }
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_48;
    }

LABEL_36:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeading::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 72);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 64), a2, a4);
  v6 = *(v5 + 72);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 48);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  if ((*(v5 + 72) & 0x80) != 0)
  {
LABEL_27:
    v12 = *(v5 + 56);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 56);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v12, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLHeading::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 72);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_58;
  }

  if ((*(this + 72) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 72) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v5 = *(this + 8);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 8);
  }

  v6 = *(v5 + 36);
  if (*(v5 + 36))
  {
    v7 = (v6 << 31 >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    if ((v6 & 4) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  *(v5 + 32) = v6;
  v3 = v6 + 2;
  v2 = *(v1 + 72);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(v1 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      this = 1;
    }

    v3 += v10 + this + 1;
    v2 = *(v1 + 72);
  }

LABEL_21:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v11 = *(v1 + 24);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
    v11 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 24);
  }

  v12 = CoreNavigation::CLP::LogEntry::Vision::simd_doubleMxN::ByteSize(v11);
  v13 = v12;
  if (v12 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
  }

  else
  {
    this = 1;
  }

  v3 += v13 + this + 1;
  v2 = *(v1 + 72);
  if ((v2 & 8) != 0)
  {
LABEL_30:
    v14 = *(v1 + 32);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 32);
    }

    v15 = (9 * *(v14 + 16));
    *(v14 + 24) = v15;
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    }

    else
    {
      v16 = 1;
    }

    v3 += v15 + v16 + 1;
    v2 = *(v1 + 72);
  }

LABEL_36:
  if ((v2 & 0x10) != 0)
  {
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v17 = *(v1 + 64);
    if ((v17 & 0x80000000) != 0)
    {
      v18 = 11;
    }

    else if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
      v2 = *(v1 + 72);
    }

    else
    {
      v18 = 2;
    }

    v4 = (v18 + v4);
    if ((v2 & 0x40) == 0)
    {
LABEL_41:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_52;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_41;
  }

  v19 = *(v1 + 48);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
    v19 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 48);
  }

  v4 = v4 + CoreNavigation::CLP::LogEntry::Vision::LSLLocation::ByteSize(v19) + 2;
  if ((*(v1 + 72) & 0x80) != 0)
  {
LABEL_52:
    v20 = *(v1 + 56);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v20 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeading::default_instance_ + 56);
    }

    v21 = CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::ByteSize(v20);
    v22 = v21;
    if (v21 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    }

    else
    {
      v23 = 1;
    }

    v4 = (v4 + v22 + v23 + 1);
  }

LABEL_58:
  *(v1 + 68) = v4;
  return v4;
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeading::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(this + 5) |= 1u;
    v4 = *(this + 1);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::Vision::LSLHeadingSupplInfo::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergeFrom(v4, v5);
  }
}

void sub_1D0CB1280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLHeading::CopyFrom(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this, const CoreNavigation::CLP::LogEntry::Vision::LSLHeading *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::Vision::LSLHeading::MergeFrom(this, a2);
  }
}

double CoreNavigation::CLP::LogEntry::Vision::LSLHeading::Swap(CoreNavigation::CLP::LogEntry::Vision::LSLHeading *this, CoreNavigation::CLP::LogEntry::Vision::LSLHeading *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    LODWORD(v5) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v5;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::LSLMapRoadSegment(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this, const CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *a2)
{
  *(this + 5) = 0;
  *this = &unk_1F4CD8D48;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergeFrom(this, a2);
  return this;
}

void sub_1D0CB1450(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergeFrom(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this, const CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v6) = *(a2 + 6);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
      }

      v8 = *(*(a2 + 2) + 8 * v7);
      v9 = *(this + 7);
      v10 = *(this + 6);
      if (v10 >= v9)
      {
        if (v9 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v9 = *(this + 7);
        }

        *(this + 7) = v9 + 1;
        operator new();
      }

      v11 = *(this + 2);
      *(this + 6) = v10 + 1;
      CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 6);
    }

    while (v7 < v6);
  }

  if (*(a2 + 44))
  {
    v12 = *(a2 + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v12;
  }
}

void sub_1D0CB163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::~LSLMapRoadSegment(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this)
{
  *this = &unk_1F4CD8D48;
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::~LSLMapRoadSegment(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::Clear(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this)
{
  if (*(this + 44))
  {
    *(this + 1) = 0;
  }

  result = sub_1D0C77384(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v7 >= v8 || (v9 = *v7, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v7 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 11) |= 1u;
      if (v10 < v8 && *v10 == 18)
      {
        do
        {
          *(a2 + 1) = v10 + 1;
LABEL_21:
          v12 = *(this + 7);
          v13 = *(this + 6);
          if (v13 >= v12)
          {
            if (v12 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v12 = *(this + 7);
            }

            *(this + 7) = v12 + 1;
            operator new();
          }

          v14 = *(this + 2);
          *(this + 6) = v13 + 1;
          v15 = *(v14 + 8 * v13);
          v23 = 0;
          v16 = *(a2 + 1);
          if (v16 >= *(a2 + 2) || *v16 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
            {
              return 0;
            }
          }

          else
          {
            v23 = *v16;
            *(a2 + 1) = v16 + 1;
          }

          v17 = *(a2 + 14);
          v18 = *(a2 + 15);
          *(a2 + 14) = v17 + 1;
          if (v17 >= v18)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::LSLLocationCoordinate::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v19 = *(a2 + 14);
          v20 = __OFSUB__(v19, 1);
          v21 = v19 - 1;
          if (v21 < 0 == v20)
          {
            *(a2 + 14) = v21;
          }

          v10 = *(a2 + 1);
          v22 = *(a2 + 2);
        }

        while (v10 < v22 && *v10 == 18);
        if (v10 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 2)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Vision::LSLMapRoadSegment::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 44))
  {
    v2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 6);
  result = (v3 + v2);
  if (v3 >= 1)
  {
    v5 = this[2];
    do
    {
      v6 = *(*v5 + 28);
      if (*(*v5 + 28))
      {
        if ((v6 & 2) != 0)
        {
          v6 = ((v6 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v6 = (v6 << 31 >> 31) & 9;
        }
      }

      *(*v5 + 24) = v6;
      result = (result + v6 + 1);
      v5 = (v5 + 8);
      --v3;
    }

    while (v3);
  }

  *(this + 10) = result;
  return result;
}