void sub_1D0D01064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::Clear(uint64_t this)
{
  v1 = this;
  v2 = (this + 316);
  v3 = *(this + 316);
  if (v3)
  {
    if (v3)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Accel::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Gyro::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Baro::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 8) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Location::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      this = *(v1 + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionState::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v4 = *(v1 + 64);
      if (v4)
      {
        if (*(v4 + 20))
        {
          v5 = *(v4 + 8);
          if (v5)
          {
            if (*(v5 + 36))
            {
              *(v5 + 8) = 0;
              *(v5 + 16) = 0;
              *(v5 + 24) = 0;
            }

            *(v5 + 36) = 0;
          }
        }

        *(v4 + 20) = 0;
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MapVector::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      this = *(v1 + 104);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v6 = *(v1 + 120);
      if (v6)
      {
        if (*(v6 + 20))
        {
          v7 = *(v6 + 8);
          if (v7)
          {
            if (*(v7 + 36))
            {
              *(v7 + 8) = 0;
              *(v7 + 16) = 0;
              *(v7 + 24) = 0;
            }

            *(v7 + 36) = 0;
          }
        }

        *(v6 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      this = *(v1 + 128);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::StepCount::Clear(this);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      this = *(v1 + 160);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::Compass::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      this = *(v1 + 192);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::Clear(this);
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      this = *(v1 + 200);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      this = *(v1 + 216);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      this = *(v1 + 224);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WatchState::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      this = *(v1 + 232);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      this = *(v1 + 240);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      this = *(v1 + 248);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      v8 = *(v1 + 256);
      if (v8)
      {
        if (*(v8 + 56))
        {
          *(v8 + 48) = 0;
          *(v8 + 8) = 0u;
          *(v8 + 24) = 0u;
          *(v8 + 37) = 0;
        }

        *(v8 + 56) = 0;
      }
    }
  }

  LOBYTE(v9) = *(v1 + 320);
  if (v9)
  {
    if (*(v1 + 320))
    {
      v10 = *(v1 + 264);
      if (v10)
      {
        if (*(v10 + 20))
        {
          this = *(v10 + 8);
          if (this)
          {
            this = CoreNavigation::CLP::LogEntry::InternalToolData::GnssMsmtAnalysisToolData::GnssMsmtAnalysisToolDataCapture::Clear(this);
          }
        }

        *(v10 + 20) = 0;
        v9 = *(v1 + 320);
      }
    }

    if ((v9 & 2) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Raven::LogEntry::Clear(this);
        v9 = *(v1 + 320);
      }
    }

    if ((v9 & 4) != 0)
    {
      this = *(v1 + 280);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::Vision::LogEntry::Clear(this);
        v9 = *(v1 + 320);
      }
    }

    if ((v9 & 8) != 0)
    {
      v11 = *(v1 + 288);
      if (v11)
      {
        if (*(v11 + 20))
        {
          this = *(v11 + 8);
          if (this)
          {
            this = CoreNavigation::CLP::LogEntry::TropicalSavanna::TropicalSavannaHint::Clear(this);
          }
        }

        *(v11 + 20) = 0;
        v9 = *(v1 + 320);
      }
    }

    if ((v9 & 0x10) != 0)
    {
      v12 = *(v1 + 296);
      if (v12)
      {
        if (*(v12 + 20))
        {
          this = *(v12 + 8);
          if (this)
          {
            this = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::RayTracingTilesAvailabilityData::Clear(this);
          }
        }

        *(v12 + 20) = 0;
        v9 = *(v1 + 320);
      }
    }

    if ((v9 & 0x20) != 0)
    {
      this = *(v1 + 304);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::Clear(this);
      }
    }
  }

  *v2 = 0;
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, const CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 48);
    *(this + 48) = *(a2 + 6);
    *(a2 + 6) = v7;
    v8 = *(this + 56);
    *(this + 56) = *(a2 + 7);
    *(a2 + 7) = v8;
    v9 = *(this + 64);
    *(this + 64) = *(a2 + 8);
    *(a2 + 8) = v9;
    v10 = *(this + 72);
    *(this + 72) = *(a2 + 9);
    *(a2 + 9) = v10;
    v11 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v11;
    v12 = *(this + 88);
    *(this + 88) = *(a2 + 11);
    *(a2 + 11) = v12;
    v13 = *(this + 96);
    *(this + 96) = *(a2 + 12);
    *(a2 + 12) = v13;
    v14 = *(this + 104);
    *(this + 104) = *(a2 + 13);
    *(a2 + 13) = v14;
    v15 = *(this + 112);
    *(this + 112) = *(a2 + 14);
    *(a2 + 14) = v15;
    v16 = *(this + 120);
    *(this + 120) = *(a2 + 15);
    *(a2 + 15) = v16;
    v17 = *(this + 128);
    *(this + 128) = *(a2 + 16);
    *(a2 + 16) = v17;
    v18 = *(this + 136);
    *(this + 136) = *(a2 + 17);
    *(a2 + 17) = v18;
    v19 = *(this + 144);
    *(this + 144) = *(a2 + 18);
    *(a2 + 18) = v19;
    v20 = *(this + 152);
    *(this + 152) = *(a2 + 19);
    *(a2 + 19) = v20;
    v21 = *(this + 160);
    *(this + 160) = *(a2 + 20);
    *(a2 + 20) = v21;
    v22 = *(this + 168);
    *(this + 168) = *(a2 + 21);
    *(a2 + 21) = v22;
    v23 = *(this + 176);
    *(this + 176) = *(a2 + 22);
    *(a2 + 22) = v23;
    v24 = *(this + 184);
    *(this + 184) = *(a2 + 23);
    *(a2 + 23) = v24;
    v25 = *(this + 192);
    *(this + 192) = *(a2 + 24);
    *(a2 + 24) = v25;
    v26 = *(this + 200);
    *(this + 200) = *(a2 + 25);
    *(a2 + 25) = v26;
    v27 = *(this + 208);
    *(this + 208) = *(a2 + 26);
    *(a2 + 26) = v27;
    v28 = *(this + 216);
    *(this + 216) = *(a2 + 27);
    *(a2 + 27) = v28;
    v29 = *(this + 224);
    *(this + 224) = *(a2 + 28);
    *(a2 + 28) = v29;
    v30 = *(this + 232);
    *(this + 232) = *(a2 + 29);
    *(a2 + 29) = v30;
    v31 = *(this + 240);
    *(this + 240) = *(a2 + 30);
    *(a2 + 30) = v31;
    v32 = *(this + 248);
    *(this + 248) = *(a2 + 31);
    *(a2 + 31) = v32;
    v33 = *(this + 256);
    *(this + 256) = *(a2 + 32);
    *(a2 + 32) = v33;
    v34 = *(this + 264);
    *(this + 264) = *(a2 + 33);
    *(a2 + 33) = v34;
    v35 = *(this + 272);
    *(this + 272) = *(a2 + 34);
    *(a2 + 34) = v35;
    v36 = *(this + 280);
    *(this + 280) = *(a2 + 35);
    *(a2 + 35) = v36;
    v37 = *(this + 288);
    *(this + 288) = *(a2 + 36);
    *(a2 + 36) = v37;
    v38 = *(this + 296);
    *(this + 296) = *(a2 + 37);
    *(a2 + 37) = v38;
    v39 = *(this + 304);
    *(this + 304) = *(a2 + 38);
    *(a2 + 38) = v39;
    LODWORD(v39) = *(this + 316);
    *(this + 316) = *(a2 + 79);
    *(a2 + 79) = v39;
    LODWORD(v39) = *(this + 320);
    *(this + 320) = *(a2 + 80);
    *(a2 + 80) = v39;
    LODWORD(v39) = *(this + 312);
    *(this + 312) = *(a2 + 78);
    *(a2 + 78) = v39;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_ShutdownFile_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile *this)
{
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_;
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::SvId(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDC7C8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDC7C8;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::GpsTime(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDC840;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDC840;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SatellitePolynomialClock(uint64_t this)
{
  *this = &unk_1F4CDC8B8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDC8B8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SatelliteGroupDelay(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDC930;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDC930;
  return this;
}

double CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SatelliteClockData(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this)
{
  *this = &unk_1F4CDC9A8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

{
  *this = &unk_1F4CDC9A8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::GnssToGpsTimeOffset(uint64_t this)
{
  *this = &unk_1F4CDCA20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDCA20;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SpaceWeatherStatus(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, __n128 a2)
{
  *this = &unk_1F4CDCA98;
  *(this + 1) = 0;
  *(this + 4) = -1;
  a2.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a2;
  return a2.n128_f64[0];
}

{
  *this = &unk_1F4CDCA98;
  *(this + 1) = 0;
  *(this + 4) = -1;
  a2.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a2;
  return a2.n128_f64[0];
}

double CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::IonosphereVTECModel(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this)
{
  *this = &unk_1F4CDCB10;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

{
  *this = &unk_1F4CDCB10;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::IonosphereCorrections(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_1F4CDCB88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_1F4CDCB88;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::AssistanceFileContents(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  *this = &unk_1F4CDCC00;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CDCC00;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[7] = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  *(this + 40) = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::default_instance_;
  *(this + 16) = v1;
  return this;
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile *this)
{
  v1 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0D021C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::SvId(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDC7C8;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 5)
      {
        __assert_rtn("set_constellation", "CoreNavigationCLPRavenGnssAssistanceFile.pb.h", 1314, "::CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::Constellation_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0D02364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::~SvId(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this)
{
  *this = &unk_1F4CDC7C8;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::~SvId(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 4)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        if (v9 >= v8 || (v11 = *v9, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v11;
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 5) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
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

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_17:
  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::GpsTime(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDC840;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 20);
  if (v5)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 5);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = result;
    }
  }

  return result;
}

void sub_1D0D029E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::~GpsTime(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this)
{
  *this = &unk_1F4CDC840;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::~GpsTime(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 5) |= 1u;
      if (v10 < v7 && *v10 == 21)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 5) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v7, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this)
{
  LOBYTE(v2) = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 5);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SatellitePolynomialClock(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  *this = &unk_1F4CDC8B8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 4);
    *(this + 8) |= 2u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_16:
    result = *(a2 + 5);
    *(this + 8) |= 4u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 6);
    *(this + 8) |= 8u;
    *(this + 6) = result;
  }

  return result;
}

void sub_1D0D030D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::~SatellitePolynomialClock(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this)
{
  *this = &unk_1F4CDC8B8;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::~SatellitePolynomialClock(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SharedDtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this)
{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v19;
          *(this + 8) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 37)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v19;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && v7 == 5)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v19 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v9;
      *(a2 + 1) = v9 + 1;
    }

    v10 = *(a2 + 14);
    v11 = *(a2 + 15);
    *(a2 + 14) = v10 + 1;
    if (v10 >= v11)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v12 = *(a2 + 14);
    v13 = __OFSUB__(v12, 1);
    v14 = v12 - 1;
    if (v14 < 0 == v13)
    {
      *(a2 + 14) = v14;
    }

    v15 = *(a2 + 1);
    if (v15 < *(a2 + 2) && *v15 == 21)
    {
      *(a2 + 1) = v15 + 1;
LABEL_34:
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v19;
      *(this + 8) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 29)
      {
        *(a2 + 1) = v16 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this)
{
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    if (*(this + 32))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v5);
      v7 = v6;
      if (v6 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
      }

      else
      {
        v8 = 1;
      }

      v3 = v7 + v8 + 1;
      v2 = *(this + 8);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 7) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SatelliteGroupDelay(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDC930;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 20);
  if (v5)
  {
    if (*(a2 + 20))
    {
      v6 = *(a2 + 2);
      if (v6 >= 7)
      {
        __assert_rtn("set_signal_type", "CoreNavigationCLPRavenGnssAssistanceFile.pb.h", 1523, "::CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SignalType_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 5);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = result;
    }
  }

  return result;
}

void sub_1D0D039E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::~SatelliteGroupDelay(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this)
{
  *this = &unk_1F4CDC930;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::~SatelliteGroupDelay(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v11 = 0;
      v7 = *(a2 + 1);
      if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v11);
        if (!result)
        {
          return result;
        }

        v8 = v11;
      }

      else
      {
        *(a2 + 1) = v7 + 1;
      }

      if (v8 <= 6)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v8;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 21)
      {
        *(a2 + 1) = v10 + 1;
LABEL_23:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 5) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5)
    {
      goto LABEL_23;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v7, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this)
{
  LOBYTE(v2) = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v5 = *(this + 2);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 5);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 4) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SatelliteClockData(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  *this = &unk_1F4CDC9A8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 36) = 0u;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(this, a2);
  return this;
}

void sub_1D0D03F9C(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 4);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
  }

  v4 = *(this + 10);
  v5 = *(a2 + 10);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
  LODWORD(v8) = *(a2 + 10);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v23);
      }

      v10 = *(*(a2 + 4) + 8 * v9);
      v11 = *(this + 11);
      v12 = *(this + 10);
      if (v12 >= v11)
      {
        if (v11 == *(this + 12))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
          v11 = *(this + 11);
        }

        *(this + 11) = v11 + 1;
        operator new();
      }

      v13 = *(this + 4);
      *(this + 10) = v12 + 1;
      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
      v8 = *(a2 + 10);
    }

    while (v9 < v8);
  }

  LOBYTE(v14) = *(a2 + 72);
  if (!v14)
  {
    return result;
  }

  if (*(a2 + 72))
  {
    *(this + 18) |= 1u;
    v15 = *(this + 1);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 1);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v6);
      v16 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergeFrom(v15, v16);
    v14 = *(a2 + 18);
    if ((v14 & 2) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_31:
      *(this + 18) |= 4u;
      v19 = *(this + 3);
      if (!v19)
      {
        operator new();
      }

      v20 = *(a2 + 3);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v6);
        v20 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 24);
      }

      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(v19, v20);
      v14 = *(a2 + 18);
      if ((v14 & 0x10) == 0)
      {
LABEL_18:
        if ((v14 & 0x20) == 0)
        {
          return result;
        }

        goto LABEL_19;
      }

      goto LABEL_36;
    }
  }

  else if ((*(a2 + 72) & 2) == 0)
  {
    goto LABEL_16;
  }

  *(this + 18) |= 2u;
  v17 = *(this + 2);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 2);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v6);
    v18 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergeFrom(v17, v18);
  v14 = *(a2 + 18);
  if ((v14 & 4) != 0)
  {
    goto LABEL_31;
  }

LABEL_17:
  if ((v14 & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_36:
  *(this + 18) |= 0x10u;
  v21 = *(this + 7);
  if (!v21)
  {
    operator new();
  }

  v22 = *(a2 + 7);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v6);
    v22 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 56);
  }

  result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v21, v22);
  if ((*(a2 + 18) & 0x20) != 0)
  {
LABEL_19:
    result = *(a2 + 16);
    *(this + 18) |= 0x20u;
    *(this + 16) = result;
  }

  return result;
}

void sub_1D0D04398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::~SatelliteClockData(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this)
{
  *this = &unk_1F4CDC9A8;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SharedDtor(this);
  sub_1D0B8CD0C(this + 4);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::~SatelliteClockData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SharedDtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this)
{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ != this)
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

    v5 = *(this + 7);
    if (v5)
    {
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::Clear(uint64_t this)
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
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 72);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::Clear(this);
        v2 = *(v1 + 72);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
      }
    }

    *(v1 + 64) = 0;
  }

  if (*(v1 + 40) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 32) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 40));
  }

  *(v1 + 40) = 0;
  *(v1 + 72) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v6 == 4)
          {
            if (v7 != 2)
            {
              goto LABEL_28;
            }

LABEL_68:
            v30 = *(this + 11);
            v31 = *(this + 10);
            if (v31 >= v30)
            {
              if (v30 == *(this + 12))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 32));
                v30 = *(this + 11);
              }

              *(this + 11) = v30 + 1;
              operator new();
            }

            v32 = *(this + 4);
            *(this + 10) = v31 + 1;
            v33 = *(v32 + 8 * v31);
            v48 = 0;
            v34 = *(a2 + 1);
            if (v34 >= *(a2 + 2) || *v34 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = *v34;
              *(a2 + 1) = v34 + 1;
            }

            v35 = *(a2 + 14);
            v36 = *(a2 + 15);
            *(a2 + 14) = v35 + 1;
            if (v35 >= v36)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::MergePartialFromCodedStream(v33, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v37 = *(a2 + 14);
            v13 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v13)
            {
              *(a2 + 14) = v38;
            }

            v29 = *(a2 + 1);
            if (v29 < *(a2 + 2))
            {
              v39 = *v29;
              if (v39 == 34)
              {
                goto LABEL_67;
              }

              if (v39 == 42)
              {
                *(a2 + 1) = v29 + 1;
                goto LABEL_86;
              }
            }
          }

          else
          {
            if (v6 != 5)
            {
              if (v6 == 6 && v7 == 5)
              {
                goto LABEL_100;
              }

              goto LABEL_28;
            }

            if (v7 != 2)
            {
              goto LABEL_28;
            }

LABEL_86:
            *(this + 18) |= 0x10u;
            v40 = *(this + 7);
            if (!v40)
            {
              operator new();
            }

            v48 = 0;
            v41 = *(a2 + 1);
            if (v41 >= *(a2 + 2) || *v41 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
              {
                return 0;
              }
            }

            else
            {
              v48 = *v41;
              *(a2 + 1) = v41 + 1;
            }

            v42 = *(a2 + 14);
            v43 = *(a2 + 15);
            *(a2 + 14) = v42 + 1;
            if (v42 >= v43)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v40, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v44 = *(a2 + 14);
            v13 = __OFSUB__(v44, 1);
            v45 = v44 - 1;
            if (v45 < 0 == v13)
            {
              *(a2 + 14) = v45;
            }

            v46 = *(a2 + 1);
            if (v46 < *(a2 + 2) && *v46 == 53)
            {
              *(a2 + 1) = v46 + 1;
LABEL_100:
              v48 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v48) & 1) == 0)
              {
                return 0;
              }

              *(this + 16) = v48;
              *(this + 18) |= 0x20u;
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

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_28;
        }

        *(this + 18) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v48 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
          {
            return 0;
          }
        }

        else
        {
          v48 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v10 = *(a2 + 14);
        v11 = *(a2 + 15);
        *(a2 + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v12 = *(a2 + 14);
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v14 < 0 == v13)
        {
          *(a2 + 14) = v14;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 18)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_40;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_28;
      }

LABEL_40:
      *(this + 18) |= 2u;
      v16 = *(this + 2);
      if (!v16)
      {
        operator new();
      }

      v48 = 0;
      v17 = *(a2 + 1);
      if (v17 >= *(a2 + 2) || *v17 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
        {
          return 0;
        }
      }

      else
      {
        v48 = *v17;
        *(a2 + 1) = v17 + 1;
      }

      v18 = *(a2 + 14);
      v19 = *(a2 + 15);
      *(a2 + 14) = v18 + 1;
      if (v18 >= v19)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v20 = *(a2 + 14);
      v13 = __OFSUB__(v20, 1);
      v21 = v20 - 1;
      if (v21 < 0 == v13)
      {
        *(a2 + 14) = v21;
      }

      v22 = *(a2 + 1);
      if (v22 < *(a2 + 2) && *v22 == 26)
      {
        *(a2 + 1) = v22 + 1;
LABEL_54:
        *(this + 18) |= 4u;
        v23 = *(this + 3);
        if (!v23)
        {
          operator new();
        }

        v48 = 0;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v48))
          {
            return 0;
          }
        }

        else
        {
          v48 = *v24;
          *(a2 + 1) = v24 + 1;
        }

        v25 = *(a2 + 14);
        v26 = *(a2 + 15);
        *(a2 + 14) = v25 + 1;
        if (v25 >= v26)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v27 = *(a2 + 14);
        v13 = __OFSUB__(v27, 1);
        v28 = v27 - 1;
        if (v28 < 0 == v13)
        {
          *(a2 + 14) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 < *(a2 + 2) && *v29 == 34)
        {
LABEL_67:
          *(a2 + 1) = v29 + 1;
          goto LABEL_68;
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_54;
    }

LABEL_28:
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

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 72);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 72);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  if ((*(v5 + 72) & 4) != 0)
  {
LABEL_11:
    v9 = *(v5 + 24);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 24);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  }

LABEL_14:
  if (*(v5 + 40) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 32) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 40));
  }

  v11 = *(v5 + 72);
  if ((v11 & 0x10) != 0)
  {
    v12 = *(v5 + 56);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 56);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v12, a2, a4);
    v11 = *(v5 + 72);
  }

  if ((v11 & 0x20) != 0)
  {
    v13 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, v13, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this)
{
  v2 = *(this + 72);
  if (*(this + 72))
  {
    if (v2)
    {
      v4 = *(this + 1);
      if (!v4)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
        v4 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 8);
      }

      v5 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SvId::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v3 = v6 + v7 + 1;
      v2 = *(this + 18);
      if ((v2 & 2) == 0)
      {
LABEL_17:
        if ((v2 & 4) != 0)
        {
          v12 = *(this + 3);
          if (!v12)
          {
            CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
            v12 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 24);
          }

          v13 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::ByteSize(v12);
          v14 = v13;
          if (v13 >= 0x80)
          {
            v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
          }

          else
          {
            v15 = 1;
          }

          v3 += v14 + v15 + 1;
          v2 = *(this + 18);
          if ((v2 & 0x10) == 0)
          {
            goto LABEL_32;
          }
        }

        else if ((v2 & 0x10) == 0)
        {
LABEL_32:
          if ((v2 & 0x20) != 0)
          {
            v2 = v3 + 5;
          }

          else
          {
            v2 = v3;
          }

          goto LABEL_35;
        }

        v16 = *(this + 7);
        if (!v16)
        {
          CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
          v16 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 56);
        }

        v17 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v16);
        v18 = v17;
        if (v17 >= 0x80)
        {
          v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
        }

        else
        {
          v19 = 1;
        }

        v3 += v18 + v19 + 1;
        v2 = *(this + 18);
        goto LABEL_32;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatellitePolynomialClock::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
    v2 = *(this + 18);
    goto LABEL_17;
  }

LABEL_35:
  v20 = *(this + 10);
  v21 = (v20 + v2);
  if (v20 >= 1)
  {
    v22 = 0;
    do
    {
      v23 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteGroupDelay::ByteSize(*(*(this + 4) + 8 * v22));
      v24 = v23;
      if (v23 >= 0x80)
      {
        v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
      }

      else
      {
        v25 = 1;
      }

      v21 = (v24 + v21 + v25);
      ++v22;
    }

    while (v22 < *(this + 10));
  }

  *(this + 17) = v21;
  return v21;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v7 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v7;
    result = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = result;
    LODWORD(v7) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
    LODWORD(v7) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v7;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::GnssToGpsTimeOffset(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  *this = &unk_1F4CDCA20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 4);
      if (v8 >= 5)
      {
        __assert_rtn("set_constellation", "CoreNavigationCLPRavenGnssAssistanceFile.pb.h", 1833, "::CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::Constellation_IsValid(value)");
      }

      *(this + 8) |= 2u;
      *(this + 4) = v8;
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      result = *(a2 + 5);
      *(this + 8) |= 4u;
      *(this + 5) = result;
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      result = *(a2 + 6);
      *(this + 8) |= 8u;
      *(this + 6) = result;
    }
  }

  return result;
}

void sub_1D0D054A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::~GnssToGpsTimeOffset(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this)
{
  *this = &unk_1F4CDCA20;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::~GnssToGpsTimeOffset(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SharedDtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this)
{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    if (*(this + 32))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 24) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_44:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v22;
          *(this + 8) |= 4u;
          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 37)
          {
            *(a2 + 1) = v21 + 1;
            goto LABEL_48;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_48:
          v22 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v22) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v22;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_34;
      }

LABEL_22:
      if (v7 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v10 = *(this + 1);
    if (!v10)
    {
      operator new();
    }

    v22 = 0;
    v11 = *(a2 + 1);
    if (v11 >= *(a2 + 2) || *v11 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v11;
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
    if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
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
    v8 = *(a2 + 2);
    if (v17 < v8 && *v17 == 16)
    {
      v9 = v17 + 1;
      *(a2 + 1) = v9;
LABEL_34:
      v22 = 0;
      if (v9 >= v8 || (v18 = *v9, (v18 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22);
        if (!result)
        {
          return result;
        }

        v18 = v22;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v18 <= 4)
      {
        *(this + 8) |= 2u;
        *(this + 4) = v18;
      }

      v20 = *(a2 + 1);
      if (v20 < *(a2 + 2) && *v20 == 29)
      {
        *(a2 + 1) = v20 + 1;
        goto LABEL_44;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return this;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    result = 0;
    goto LABEL_23;
  }

  if (*(this + 32))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
      v5 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::default_instance_ + 8);
    }

    v6 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = v7 + v8 + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }
  }

  v9 = *(this + 4);
  if ((v9 & 0x80000000) != 0)
  {
    v10 = 11;
  }

  else if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v10 = 2;
  }

  v3 += v10;
LABEL_18:
  v11 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 8) != 0)
  {
    result = v11 + 5;
  }

  else
  {
    result = v11;
  }

LABEL_23:
  *(this + 7) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    result = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = result;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SharedCtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, __n128 a2)
{
  *(this + 1) = 0;
  *(this + 4) = -1;
  a2.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a2;
  return a2.n128_f64[0];
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SpaceWeatherStatus(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2, __n128 a3)
{
  *this = &unk_1F4CDCA98;
  *(this + 1) = 0;
  *(this + 4) = -1;
  a3.n128_u64[0] = 0;
  *(this + 20) = 0;
  *(this + 28) = 0xFFFFFFFFLL;
  *(this + 36) = a3;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 48);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 48))
  {
    *(this + 12) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v6, v7);
    v5 = *(a2 + 12);
  }

  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 4);
    if ((v8 + 1) >= 7)
    {
      __assert_rtn("set_solar_radiation_storm_scale", "CoreNavigationCLPRavenGnssAssistanceFile.pb.h", 1946, "::CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::StormScale_IsValid(value)");
    }

    *(this + 12) |= 2u;
    *(this + 4) = v8;
    v5 = *(a2 + 12);
  }

  if ((v5 & 4) != 0)
  {
    result = *(a2 + 5);
    *(this + 12) |= 4u;
    *(this + 5) = result;
    v5 = *(a2 + 12);
    if ((v5 & 8) == 0)
    {
LABEL_15:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_15;
  }

  result = *(a2 + 6);
  *(this + 12) |= 8u;
  *(this + 6) = result;
  v5 = *(a2 + 12);
  if ((v5 & 0x10) == 0)
  {
LABEL_16:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_25:
    v10 = *(a2 + 8);
    *(this + 12) |= 0x20u;
    *(this + 8) = v10;
    v5 = *(a2 + 12);
    if ((v5 & 0x40) == 0)
    {
LABEL_18:
      if ((v5 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(a2 + 7);
  if ((v9 + 1) >= 7)
  {
    __assert_rtn("set_geomagnetic_storm_scale", "CoreNavigationCLPRavenGnssAssistanceFile.pb.h", 2013, "::CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::StormScale_IsValid(value)");
  }

  *(this + 12) |= 0x10u;
  *(this + 7) = v9;
  v5 = *(a2 + 12);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_17:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_18;
  }

LABEL_26:
  result = *(a2 + 9);
  *(this + 12) |= 0x40u;
  *(this + 9) = result;
  if ((*(a2 + 12) & 0x80) != 0)
  {
LABEL_19:
    result = *(a2 + 10);
    *(this + 12) |= 0x80u;
    *(this + 10) = result;
  }

  return result;
}

void sub_1D0D05FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::~SpaceWeatherStatus(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this)
{
  *this = &unk_1F4CDCA98;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::~SpaceWeatherStatus(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SharedDtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this)
{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::Clear(uint64_t this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(this + 16) = -1;
    *(this + 20) = 0;
    *(this + 28) = 0xFFFFFFFFLL;
    *(this + 36) = 0;
  }

  *(this + 48) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v14 = *(a2 + 2);
              goto LABEL_66;
            }
          }

          else if (v6 == 6 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v10 = *(a2 + 2);
            goto LABEL_76;
          }

          goto LABEL_36;
        }

        if (v6 == 7)
        {
          if (v7 != 5)
          {
            goto LABEL_36;
          }

LABEL_84:
          v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = v32;
          *(this + 12) |= 0x40u;
          v31 = *(a2 + 1);
          if (v31 < *(a2 + 2) && *v31 == 69)
          {
            *(a2 + 1) = v31 + 1;
            goto LABEL_88;
          }
        }

        else
        {
          if (v6 != 8 || v7 != 5)
          {
            goto LABEL_36;
          }

LABEL_88:
          v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = v32;
          *(this + 12) |= 0x80u;
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
          if (v7 == 5)
          {
            goto LABEL_58;
          }
        }

        else if (v6 == 4 && v7 == 5)
        {
          goto LABEL_62;
        }

        goto LABEL_36;
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && (TagFallback & 7) == 0)
      {
        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
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

    if (v7 != 2)
    {
      goto LABEL_36;
    }

    *(this + 12) |= 1u;
    v12 = *(this + 1);
    if (!v12)
    {
      operator new();
    }

    v32 = 0;
    v13 = *(a2 + 1);
    if (v13 >= *(a2 + 2) || *v13 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
      {
        return 0;
      }
    }

    else
    {
      v32 = *v13;
      *(a2 + 1) = v13 + 1;
    }

    v16 = *(a2 + 14);
    v17 = *(a2 + 15);
    *(a2 + 14) = v16 + 1;
    if (v16 >= v17)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v18 = *(a2 + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(a2 + 14) = v20;
    }

    v21 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v21 < v8 && *v21 == 16)
    {
      v9 = v21 + 1;
      *(a2 + 1) = v9;
LABEL_48:
      v32 = 0;
      if (v9 >= v8 || (v22 = *v9, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
        if (!result)
        {
          return result;
        }

        v22 = v32;
      }

      else
      {
        *(a2 + 1) = v9 + 1;
      }

      if (v22 + 1 <= 6)
      {
        *(this + 12) |= 2u;
        *(this + 4) = v22;
      }

      v24 = *(a2 + 1);
      if (v24 < *(a2 + 2) && *v24 == 29)
      {
        *(a2 + 1) = v24 + 1;
LABEL_58:
        v32 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v32) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v32;
        *(this + 12) |= 4u;
        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 37)
        {
          *(a2 + 1) = v25 + 1;
LABEL_62:
          v32 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v32) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v32;
          *(this + 12) |= 8u;
          v26 = *(a2 + 1);
          v14 = *(a2 + 2);
          if (v26 < v14 && *v26 == 40)
          {
            v15 = v26 + 1;
            *(a2 + 1) = v15;
LABEL_66:
            v32 = 0;
            if (v15 >= v14 || (v27 = *v15, (v27 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32);
              if (!result)
              {
                return result;
              }

              v27 = v32;
            }

            else
            {
              *(a2 + 1) = v15 + 1;
            }

            if (v27 + 1 <= 6)
            {
              *(this + 12) |= 0x10u;
              *(this + 7) = v27;
            }

            v28 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v28 < v10 && *v28 == 48)
            {
              v11 = v28 + 1;
              *(a2 + 1) = v11;
LABEL_76:
              if (v11 >= v10 || (v29 = *v11, v29 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v30 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v29;
                v30 = v11 + 1;
                *(a2 + 1) = v30;
              }

              *(this + 12) |= 0x20u;
              if (v30 < v10 && *v30 == 61)
              {
                *(a2 + 1) = v30 + 1;
                goto LABEL_84;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 36), a3);
    if ((*(v5 + 48) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 32), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:
  v8 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this)
{
  LOBYTE(v2) = *(this + 48);
  if (!v2)
  {
    result = 0;
    goto LABEL_40;
  }

  if (*(this + 48))
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
      v5 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::default_instance_ + 8);
    }

    v6 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = v7 + v8 + 1;
    v2 = *(this + 12);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((*(this + 48) & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 4);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_18:
  v11 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v12 = v11 + 5;
  }

  else
  {
    v12 = v11;
  }

  if ((v2 & 0x10) != 0)
  {
    v13 = *(this + 7);
    if ((v13 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (v13 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v14 = 2;
    }

    v12 += v14;
  }

  if ((v2 & 0x20) != 0)
  {
    v15 = *(this + 8);
    if (v15 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
      v2 = *(this + 12);
    }

    else
    {
      v16 = 2;
    }

    v12 += v16;
  }

  v17 = v12 + 5;
  if ((v2 & 0x40) == 0)
  {
    v17 = v12;
  }

  if ((v2 & 0x80) != 0)
  {
    result = v17 + 5;
  }

  else
  {
    result = v17;
  }

LABEL_40:
  *(this + 11) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    LODWORD(v2) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    result = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = result;
    LODWORD(v2) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v2;
    LODWORD(v2) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v2;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::SharedCtor(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::IonosphereVTECModel(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  *this = &unk_1F4CDCB10;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(this, a2);
  return this;
}

void sub_1D0D06B5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 5);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 3);
  if (v4)
  {
    MEMORY[0x1D387EC80](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    sub_1D0CA6E90(this + 3, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    sub_1D0CA6E90(this + 5, *(this + 12) + v5);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  LOBYTE(v6) = *(a2 + 64);
  if (!v6)
  {
    return;
  }

  if (*(a2 + 64))
  {
    v7 = *(a2 + 2);
    if (v7 >= 3)
    {
      __assert_rtn("set_layer_number", "CoreNavigationCLPRavenGnssAssistanceFile.pb.h", 2106, "::CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereLayer_IsValid(value)");
    }

    *(this + 16) |= 1u;
    *(this + 2) = v7;
    v6 = *(a2 + 16);
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_18:
    v10 = *(a2 + 4);
    *(this + 16) |= 4u;
    *(this + 4) = v10;
    v6 = *(a2 + 16);
    if ((v6 & 8) == 0)
    {
LABEL_14:
      if ((v6 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v9 = *(a2 + 3);
  *(this + 16) |= 2u;
  *(this + 3) = v9;
  v6 = *(a2 + 16);
  if ((v6 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_13:
  if ((v6 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_19:
  v11 = *(a2 + 5);
  *(this + 16) |= 8u;
  *(this + 5) = v11;
  if ((*(a2 + 16) & 0x40) != 0)
  {
LABEL_15:
    v8 = *(a2 + 14);
    *(this + 16) |= 0x40u;
    *(this + 14) = v8;
  }
}

void sub_1D0D06D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::~IonosphereVTECModel(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this)
{
  *this = &unk_1F4CDCB10;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8052888210);
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::~IonosphereVTECModel(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::Clear(uint64_t this)
{
  if (*(this + 64))
  {
    *(this + 56) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v44[0] = 0;
            v10 = *(a2 + 1);
            if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v44);
              if (!result)
              {
                return result;
              }

              v11 = v44[0];
            }

            else
            {
              *(a2 + 1) = v10 + 1;
            }

            if (v11 <= 2)
            {
              *(this + 16) |= 1u;
              *(this + 2) = v11;
            }

            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v15 < v8 && *v15 == 16)
            {
              v13 = v15 + 1;
              *(a2 + 1) = v13;
              goto LABEL_47;
            }
          }

          else
          {
            if (v6 != 2)
            {
              if (v6 != 3 || (TagFallback & 7) != 0)
              {
                goto LABEL_32;
              }

              v9 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_55;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
LABEL_47:
            if (v13 >= v8 || (v16 = *v13, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v16;
              v17 = v13 + 1;
              *(a2 + 1) = v17;
            }

            *(this + 16) |= 2u;
            if (v17 < v8 && *v17 == 24)
            {
              v9 = v17 + 1;
              *(a2 + 1) = v9;
LABEL_55:
              if (v9 >= v8 || (v18 = *v9, v18 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v19 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 4) = v18;
                v19 = v9 + 1;
                *(a2 + 1) = v19;
              }

              *(this + 16) |= 4u;
              if (v19 < v8 && *v19 == 32)
              {
                v12 = v19 + 1;
                *(a2 + 1) = v12;
                goto LABEL_63;
              }
            }
          }
        }

        if (TagFallback >> 3 > 5)
        {
          break;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_63:
          if (v12 >= v8 || (v20 = *v12, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v20;
            v21 = v12 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 16) |= 8u;
          if (v21 < v8 && *v21 == 45)
          {
LABEL_70:
            *(a2 + 1) = v21 + 1;
LABEL_71:
            v44[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v44) & 1) == 0)
            {
              return 0;
            }

            v22 = v44[0];
            v23 = *(this + 8);
            if (v23 == *(this + 9))
            {
              sub_1D0CA6E90(this + 3, v23 + 1);
              v23 = *(this + 8);
            }

            v24 = *(this + 3);
            v25 = v23 + 1;
            *(this + 8) = v23 + 1;
            *(v24 + 4 * v23) = v22;
            v26 = *(a2 + 1);
            v27 = *(a2 + 4) - v26;
            if (v27 >= 1)
            {
              v28 = v27 / 5u;
              v29 = v28 >= *(this + 9) - v25 ? *(this + 9) - v25 : v28;
              if (v29 >= 1)
              {
                v30 = 0;
                while (*v26 == 45)
                {
                  v31 = *(v26 + 1);
                  if (v25 >= *(this + 9))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
                    v25 = *(this + 8);
                    v24 = *(this + 3);
                  }

                  *(this + 8) = v25 + 1;
                  *(v24 + 4 * v25) = v31;
                  ++v30;
                  v26 += 5;
                  ++v25;
                  if (v29 == v30)
                  {
                    goto LABEL_86;
                  }
                }

                if (!v30)
                {
                  goto LABEL_87;
                }

LABEL_86:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
              }
            }

            goto LABEL_87;
          }
        }

        else
        {
          if (v6 != 5)
          {
            goto LABEL_32;
          }

          if (v7 == 2)
          {
            result = sub_1D0CA8DB0(a2, this + 24);
            if (!result)
            {
              return result;
            }

LABEL_87:
            v21 = *(a2 + 1);
            if (v21 < *(a2 + 2))
            {
              v32 = *v21;
              if (v32 == 45)
              {
                goto LABEL_70;
              }

              if (v32 == 53)
              {
                goto LABEL_90;
              }
            }
          }

          else
          {
            if (v7 == 5)
            {
              goto LABEL_71;
            }

LABEL_32:
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
      }

      if (v6 != 6)
      {
        break;
      }

      if (v7 == 2)
      {
        result = sub_1D0CA8DB0(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_107;
      }

      if (v7 != 5)
      {
        goto LABEL_32;
      }

      while (2)
      {
        v44[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v44) & 1) == 0)
        {
          return 0;
        }

        v33 = v44[0];
        v34 = *(this + 12);
        if (v34 == *(this + 13))
        {
          sub_1D0CA6E90(this + 5, v34 + 1);
          v34 = *(this + 12);
        }

        v35 = *(this + 5);
        v36 = v34 + 1;
        *(this + 12) = v34 + 1;
        *(v35 + 4 * v34) = v33;
        v37 = *(a2 + 1);
        v38 = *(a2 + 4) - v37;
        if (v38 >= 1)
        {
          v39 = v38 / 5u;
          v40 = v39 >= *(this + 13) - v36 ? *(this + 13) - v36 : v39;
          if (v40 >= 1)
          {
            v41 = 0;
            while (*v37 == 53)
            {
              v42 = *(v37 + 1);
              if (v36 >= *(this + 13))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
                v36 = *(this + 12);
                v35 = *(this + 5);
              }

              *(this + 12) = v36 + 1;
              *(v35 + 4 * v36) = v42;
              ++v41;
              v37 += 5;
              ++v36;
              if (v40 == v41)
              {
                goto LABEL_106;
              }
            }

            if (!v41)
            {
              goto LABEL_107;
            }

LABEL_106:
            wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
          }
        }

LABEL_107:
        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2))
        {
          v43 = *v21;
          if (v43 == 53)
          {
LABEL_90:
            *(a2 + 1) = v21 + 1;
            continue;
          }

          if (v43 == 61)
          {
            *(a2 + 1) = v21 + 1;
            goto LABEL_111;
          }
        }

        break;
      }
    }

    if (v6 != 7 || v7 != 5)
    {
      goto LABEL_32;
    }

LABEL_111:
    v44[0] = 0;
    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v44) & 1) == 0)
    {
      return 0;
    }

    *(this + 14) = v44[0];
    *(this + 16) |= 0x40u;
    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

void sub_1D0D074D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 64);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 64);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 64);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  if ((*(v5 + 64) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 20), a2, a4);
  }

LABEL_6:
  if (*(v5 + 32) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(*(v5 + 24) + 4 * v7++), a3);
    }

    while (v7 < *(v5 + 32));
  }

  if (*(v5 + 48) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(*(v5 + 40) + 4 * v8++), a3);
    }

    while (v8 < *(v5 + 48));
  }

  if ((*(v5 + 64) & 0x40) != 0)
  {
    v9 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, v9, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this)
{
  v2 = *(this + 64);
  if (*(this + 64))
  {
    if (v2)
    {
      v4 = *(this + 2);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 16);
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(this + 3);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
LABEL_16:
    if ((v2 & 4) != 0)
    {
      v7 = *(this + 4);
      if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v2 = *(this + 16);
      }

      else
      {
        v8 = 2;
      }

      v3 += v8;
      if ((v2 & 8) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v2 & 8) == 0)
    {
LABEL_27:
      if ((v2 & 0x40) != 0)
      {
        v2 = v3 + 5;
      }

      else
      {
        v2 = v3;
      }

      goto LABEL_30;
    }

    v9 = *(this + 5);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 16);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
    goto LABEL_27;
  }

LABEL_30:
  result = (5 * (*(this + 12) + *(this + 8)) + v2);
  *(this + 15) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(this, a2);
  }
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    v7 = *(a2 + 4);
    *(a2 + 3) = v6;
    v8 = *(this + 4);
    *(this + 4) = v7;
    *(a2 + 4) = v8;
    v9 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v10 = *(a2 + 6);
    *(a2 + 5) = v9;
    v11 = *(this + 6);
    *(this + 6) = v10;
    *(a2 + 6) = v11;
    result = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = result;
    LODWORD(v9) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v9;
    LODWORD(v9) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v9;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SharedCtor(void *this)
{
  this[1] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::IonosphereCorrections(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_1F4CDCB88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(this, a2);
  return this;
}

void sub_1D0D079A4(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v8) = *(a2 + 6);
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 >= v8)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
      }

      v10 = *(*(a2 + 2) + 8 * v9);
      v11 = *(this + 7);
      v12 = *(this + 6);
      if (v12 >= v11)
      {
        if (v11 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v11 = *(this + 7);
        }

        *(this + 7) = v11 + 1;
        operator new();
      }

      v13 = *(this + 2);
      *(this + 6) = v12 + 1;
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
      v8 = *(a2 + 6);
    }

    while (v9 < v8);
  }

  LOBYTE(v14) = *(a2 + 52);
  if (v14)
  {
    if (*(a2 + 52))
    {
      *(this + 13) |= 1u;
      v15 = *(this + 1);
      if (!v15)
      {
        operator new();
      }

      v16 = *(a2 + 1);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v6);
        v16 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v15, v16);
      v14 = *(a2 + 13);
    }

    if ((v14 & 4) != 0)
    {
      *(this + 13) |= 4u;
      v17 = *(this + 5);
      if (!v17)
      {
        operator new();
      }

      v18 = *(a2 + 5);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v6);
        v18 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 40);
      }

      return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergeFrom(v17, v18);
    }
  }

  return result;
}

void sub_1D0D07C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::~IonosphereCorrections(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this)
{
  *this = &unk_1F4CDCB88;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::~IonosphereCorrections(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SharedDtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this)
{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 5);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::Clear(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this)
{
  LOBYTE(v2) = *(this + 52);
  if (v2)
  {
    if (*(this + 52))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 13);
      }
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(this + 5);
      if (v4)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::Clear(v4);
      }
    }
  }

  result = sub_1D0C77384(this + 16);
  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        break;
      }

      if (v6 == 2)
      {
        if (v7 != 2)
        {
          goto LABEL_18;
        }

LABEL_30:
        v16 = *(this + 7);
        v17 = *(this + 6);
        if (v17 >= v16)
        {
          if (v16 == *(this + 8))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
            v16 = *(this + 7);
          }

          *(this + 7) = v16 + 1;
          operator new();
        }

        v18 = *(this + 2);
        *(this + 6) = v17 + 1;
        v19 = *(v18 + 8 * v17);
        v34 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
          {
            return 0;
          }
        }

        else
        {
          v34 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v13 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v13)
        {
          *(a2 + 14) = v24;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2))
        {
          v25 = *v15;
          if (v25 == 18)
          {
            goto LABEL_53;
          }

          if (v25 == 26)
          {
            *(a2 + 1) = v15 + 1;
LABEL_48:
            *(this + 13) |= 4u;
            v26 = *(this + 5);
            if (!v26)
            {
              operator new();
            }

            v35 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::MergePartialFromCodedStream(v26, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v30 = *(a2 + 14);
            v13 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 == v13)
            {
              *(a2 + 14) = v31;
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

      else
      {
        if (v6 != 1 || v7 != 2)
        {
          goto LABEL_18;
        }

        *(this + 13) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v33 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
          {
            return 0;
          }
        }

        else
        {
          v33 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v10 = *(a2 + 14);
        v11 = *(a2 + 15);
        *(a2 + 14) = v10 + 1;
        if (v10 >= v11)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v12 = *(a2 + 14);
        v13 = __OFSUB__(v12, 1);
        v14 = v12 - 1;
        if (v14 < 0 == v13)
        {
          *(a2 + 14) = v14;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 18)
        {
LABEL_53:
          *(a2 + 1) = v15 + 1;
          goto LABEL_30;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_48;
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

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 52))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if ((*(v5 + 52) & 4) != 0)
  {
    v8 = *(v5 + 40);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this)
{
  if (!*(this + 52))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 52) & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
    v3 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
  }

  v4 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v3);
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
  if ((*(this + 13) & 4) != 0)
  {
LABEL_12:
    v7 = *(this + 5);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 40);
    }

    v8 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SpaceWeatherStatus::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 6);
  v12 = (v11 + v2);
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereVTECModel::ByteSize(*(*(this + 2) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 = (v15 + v12 + v16);
      ++v13;
    }

    while (v13 < *(this + 6));
  }

  *(this + 12) = v12;
  return v12;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SharedCtor(void *this)
{
  this[9] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::AssistanceFileContents(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  *this = &unk_1F4CDCC00;
  *(this + 24) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(this, a2);
  return this;
}

void sub_1D0D087E0(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v3);
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v6) = *(a2 + 8);
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
      }

      v8 = *(*(a2 + 3) + 8 * v7);
      v9 = *(this + 9);
      v10 = *(this + 8);
      if (v10 >= v9)
      {
        if (v9 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v9 = *(this + 9);
        }

        *(this + 9) = v9 + 1;
        operator new();
      }

      v11 = *(this + 3);
      *(this + 8) = v10 + 1;
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  v12 = *(this + 14);
  v13 = *(a2 + 14);
  v14 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  LODWORD(v16) = *(a2 + 14);
  if (v16 >= 1)
  {
    v17 = 0;
    do
    {
      if (v17 >= v16)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
      }

      v18 = *(*(a2 + 6) + 8 * v17);
      v19 = *(this + 15);
      v20 = *(this + 14);
      if (v20 >= v19)
      {
        if (v19 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v19 = *(this + 15);
        }

        *(this + 15) = v19 + 1;
        operator new();
      }

      v21 = *(this + 6);
      *(this + 14) = v20 + 1;
      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergeFrom(*(v21 + 8 * v20), v18);
      ++v17;
      v16 = *(a2 + 14);
    }

    while (v17 < v16);
  }

  LOBYTE(v22) = *(a2 + 76);
  if (v22)
  {
    if (*(a2 + 76))
    {
      *(this + 19) |= 1u;
      v23 = *(this + 1);
      if (!v23)
      {
        operator new();
      }

      v24 = *(a2 + 1);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v14);
        v24 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
      }

      result = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergeFrom(v23, v24);
      v22 = *(a2 + 19);
    }

    if ((v22 & 2) != 0)
    {
      *(this + 19) |= 2u;
      v25 = *(this + 2);
      if (!v25)
      {
        operator new();
      }

      v26 = *(a2 + 2);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v14);
        v26 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
      }

      return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergeFrom(v25, v26);
    }
  }

  return result;
}

void sub_1D0D08C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  *this = &unk_1F4CDCC00;
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SharedDtor(this);
  sub_1D0B8CD0C(this + 6);
  sub_1D0B8CD0C(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::~AssistanceFileContents(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SharedDtor(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::Clear(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  LOBYTE(v2) = *(this + 76);
  if (v2)
  {
    if (*(this + 76))
    {
      v3 = *(this + 1);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(this + 19);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 2);
      if (v4)
      {
        CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::Clear(v4);
      }
    }
  }

  sub_1D0C77384(this + 24);
  result = sub_1D0C77384(this + 48);
  *(this + 19) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
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

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 == 2)
          {
            goto LABEL_48;
          }

          goto LABEL_22;
        }

        if (v6 != 4 || v7 != 2)
        {
          goto LABEL_22;
        }

        while (2)
        {
          v33 = *(this + 15);
          v34 = *(this + 14);
          if (v34 >= v33)
          {
            if (v33 == *(this + 16))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
              v33 = *(this + 15);
            }

            *(this + 15) = v33 + 1;
            operator new();
          }

          v35 = *(this + 6);
          *(this + 14) = v34 + 1;
          v36 = *(v35 + 8 * v34);
          v44 = 0;
          v37 = *(a2 + 1);
          if (v37 >= *(a2 + 2) || *v37 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v37;
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
          if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v40 = *(a2 + 14);
          v13 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v13)
          {
            *(a2 + 14) = v41;
          }

          v22 = *(a2 + 1);
          v42 = *(a2 + 2);
          if (v22 < v42 && *v22 == 34)
          {
LABEL_65:
            *(a2 + 1) = v22 + 1;
            continue;
          }

          break;
        }

        if (v22 == v42 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_22;
      }

      *(this + 19) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v44 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v12 = *(a2 + 14);
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v14 < 0 == v13)
      {
        *(a2 + 14) = v14;
      }

      v15 = *(a2 + 1);
      if (v15 < *(a2 + 2) && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
LABEL_34:
        *(this + 19) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v44 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v17;
          *(a2 + 1) = v17 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v13 = __OFSUB__(v20, 1);
        v21 = v20 - 1;
        if (v21 < 0 == v13)
        {
          *(a2 + 14) = v21;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 26)
        {
          while (1)
          {
            *(a2 + 1) = v22 + 1;
LABEL_48:
            v23 = *(this + 9);
            v24 = *(this + 8);
            if (v24 >= v23)
            {
              if (v23 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v23 = *(this + 9);
              }

              *(this + 9) = v23 + 1;
              operator new();
            }

            v25 = *(this + 3);
            *(this + 8) = v24 + 1;
            v26 = *(v25 + 8 * v24);
            v44 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
              {
                return 0;
              }
            }

            else
            {
              v44 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::MergePartialFromCodedStream(v26, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v30 = *(a2 + 14);
            v13 = __OFSUB__(v30, 1);
            v31 = v30 - 1;
            if (v31 < 0 == v13)
            {
              *(a2 + 14) = v31;
            }

            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2))
            {
              break;
            }

            v32 = *v22;
            if (v32 != 26)
            {
              if (v32 == 34)
              {
                goto LABEL_65;
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_34;
    }

LABEL_22:
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

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 76);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 76);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  if (*(v5 + 56) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, *(*(v5 + 48) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 56));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::ByteSize(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this)
{
  if (!*(this + 76))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 76) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 76) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
    v3 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
  }

  v4 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GpsTime::ByteSize(v3);
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
  if ((*(this + 19) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
    }

    v8 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 8);
  v12 = v11 + v2;
  if (v11 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::SatelliteClockData::ByteSize(*(*(this + 3) + 8 * v13));
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v12 += v15 + v16;
      ++v13;
    }

    while (v13 < *(this + 8));
  }

  v17 = *(this + 14);
  v18 = (v17 + v12);
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::GnssToGpsTimeOffset::ByteSize(*(*(this + 6) + 8 * v19));
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 = (v21 + v18 + v22);
      ++v19;
    }

    while (v19 < *(this + 14));
  }

  *(this + 18) = v18;
  return v18;
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::CopyFrom(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::Swap(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *this, CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    v7 = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v7;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::protobuf_ShutdownFile_CoreNavigationCLPGnssMeasApi_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SvTime::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SvTime::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SvTime::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::default_instance_);
  }

  if (CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_)
  {
    (*(*CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_ + 8))(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    v2 = *(*CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);

    return v2();
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::GlonassSlotInfo(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDCD68;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4CDCD68;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::GlonassId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDCDE0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDCDE0;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::ConstellationId(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *this = &unk_1F4CDCE58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CDCE58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::SvId(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDCED0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDCED0;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::GpsL1SyncState(uint64_t this)
{
  *this = &unk_1F4CDCF48;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CDCF48;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::GpsL2CSyncState(uint64_t this)
{
  *this = &unk_1F4CDCFC0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4CDCFC0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::GpsL5SyncState(uint64_t this)
{
  *this = &unk_1F4CDD038;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CDD038;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::GlonassL1fSyncState(uint64_t this)
{
  *this = &unk_1F4CDD0B0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4CDD0B0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 12) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::BeidouB1SyncState(uint64_t this)
{
  *this = &unk_1F4CDD128;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CDD128;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::BeidouB2SyncState(uint64_t this)
{
  *this = &unk_1F4CDD1A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CDD1A0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::GalileoE1SyncState(uint64_t this)
{
  *this = &unk_1F4CDD218;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4CDD218;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::GalileoE5SyncState(uint64_t this)
{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = &unk_1F4CDD290;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *(this + 20) = 0;
  *(this + 24) = 0;
  *this = &unk_1F4CDD290;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::SbasL1SyncState(uint64_t this)
{
  *this = &unk_1F4CDD308;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_1F4CDD308;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SyncState::SyncState(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this)
{
  *this = &unk_1F4CDD380;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

{
  *this = &unk_1F4CDD380;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 84) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::SvTime(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD3F8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD3F8;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::FrequencyOffset(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD470;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD470;
  *(this + 24) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::FrequencyOffsetFromPhaseTracking(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD4E8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD4E8;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::PhaseTracking(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this)
{
  *this = &unk_1F4CDD560;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

{
  *this = &unk_1F4CDD560;
  *(this + 11) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::SignalCorrelationPeak(uint64_t this)
{
  *this = &unk_1F4CDD5D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDD5D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::FullSvTime(uint64_t this)
{
  *this = &unk_1F4CDD650;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDD650;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::SvMeasurementUsage(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD6C8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD6C8;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MeasurementExtension(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  *this = &unk_1F4CDD740;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = v2;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4CDD740;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  v2 = MEMORY[0x1E69E5958];
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *(this + 10) = v2;
  *(this + 14) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Measurement::Measurement(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = &unk_1F4CDD7B8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

{
  *this = &unk_1F4CDD7B8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD830;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDD830;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = &unk_1F4CDD8A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CDD8A8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = &unk_1F4CDD920;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CDD920;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Clock::Clock(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this)
{
  *this = &unk_1F4CDD998;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CDD998;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_1F4CDDA10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_1F4CDDA10;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = &unk_1F4CDDA88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDDA88;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = &unk_1F4CDDB00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CDDB00;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(void *this)
{
  *this = &unk_1F4CDDB78;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CDDB78;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = &unk_1F4CDDBF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4CDDBF0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::SvInfo(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = &unk_1F4CDDC68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  return result;
}

{
  *this = &unk_1F4CDDC68;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::ReceiverBandCorrections(uint64_t this)
{
  *this = &unk_1F4CDDCE0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDDCE0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::LeapSecondChange(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDDD58;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDDD58;
  *(this + 24) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::LeapSecondInfo(void *this)
{
  *this = &unk_1F4CDDDD0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CDDDD0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::GpsToUtcConversion(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this)
{
  *this = &unk_1F4CDDE48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4CDDE48;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::GpsTimeInfo(uint64_t this)
{
  *this = &unk_1F4CDDEC0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_1F4CDDEC0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::GlonassSubsecondConversion(void *this)
{
  *this = &unk_1F4CDDF38;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4CDDF38;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::GlonassTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this)
{
  *this = &unk_1F4CDDFB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CDDFB0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::SubSecondConversion(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this)
{
  *this = &unk_1F4CDE028;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDE028;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::BeidouTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this)
{
  *this = &unk_1F4CDE0A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_1F4CDE0A0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::GalileoTimeInfo(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this)
{
  *this = &unk_1F4CDE118;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_1F4CDE118;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::NavicTimeInfo(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDE190;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_1F4CDE190;
  *(this + 24) = 0;
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::TimeConversionInfo(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this)
{
  *this = &unk_1F4CDE208;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CDE208;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::KlobucharModelParameters(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this)
{
  *this = &unk_1F4CDE280;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4CDE280;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::SfcfXyz(CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz *this)
{
  *this = &unk_1F4CDE2F8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDE2F8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::AntennaPhaseCenterSvOffset(CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset *this)
{
  *this = &unk_1F4CDE370;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDE370;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::ReceivedTimeStamp(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this)
{
  *this = &unk_1F4CDE3E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4CDE3E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MeasurementReportCallbackContents(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this)
{
  *this = &unk_1F4CDE460;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

{
  *this = &unk_1F4CDE460;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::SyncState::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::default_instance_;
  this[2] = v2;
  v3 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::default_instance_;
  this[4] = v3;
  v4 = CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::default_instance_;
  this[6] = v4;
  v5 = CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::default_instance_;
  this[7] = CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::default_instance_;
  this[8] = v5;
  this[9] = CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::default_instance_;
  this[10] = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::SvTime::default_instance_;
  *(this + 16) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::default_instance_;
  this[2] = CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::default_instance_;
  this[3] = v1;
  this[4] = v1;
  this[5] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::Measurement::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::default_instance_;
  this[6] = CoreNavigation::CLP::LogEntry::PrivateData::SvTime::default_instance_;
  this[7] = v2;
  v3 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  this[8] = CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::default_instance_;
  this[9] = v3;
  v4 = CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::default_instance_;
  this[11] = v2;
  this[12] = v4;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::Clock::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  this[2] = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  this[3] = v1;
  this[4] = CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_;
  *(this + 128) = CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::default_instance_;
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  *(this + 16) = v1;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::InitAsDefaultInstance(uint64_t this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  *(this + 16) = CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::default_instance_;
  *(this + 24) = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  this[2] = v1;
  this[3] = v1;
  this[4] = v1;
  this[5] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::default_instance_;
  this[2] = v1;
  this[3] = v1;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::default_instance_;
  this[4] = v2;
  this[5] = CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::default_instance_;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::InitAsDefaultInstance(uint64_t this)
{
  *(this + 8) = CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_;
  *(this + 24) = CoreNavigation::CLP::LogEntry::PrivateData::SfcfXyz::default_instance_;
  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::default_instance_;
  this[2] = v1;
  this[9] = CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::default_instance_;
  this[12] = CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::default_instance_;
  return this;
}

BOOL CoreNavigation::CLP::LogEntry::PrivateData::SatelliteSystem_IsValid(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  v1 = this;
  result = 1;
  if (v1 - 4 > 0x3C || ((1 << (v1 - 4)) & 0x1000000010001011) == 0)
  {
    return v1 < 3;
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::GlonassSlotInfo(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDCD68;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 5)
      {
        __assert_rtn("set_slot_source", "CoreNavigationCLPGnssMeasApi.pb.h", 6607, "::CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotSource_IsValid(value)");
      }

      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0D0C0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(this + 3);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::GlonassId(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDCDE0;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergeFrom(v6, v7);
    }
  }
}

void sub_1D0D0C570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 16) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 8);
      if (v2)
      {
        if (*(v2 + 20))
        {
          *(v2 + 8) = 0;
        }

        *(v2 + 20) = 0;
      }
    }
  }

  *(this + 24) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[6];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, this[4], a2, a4);
    v6 = v5[6];
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    v6 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(this + 5) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this, const CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::ConstellationId(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this, const CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  *this = &unk_1F4CDCE58;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this, const CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 4);
      *(this + 11) |= 1u;
      *(this + 4) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 11) |= 2u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 1);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergeFrom(v7, v8);
    v4 = *(a2 + 11);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

LABEL_19:
    v9 = *(a2 + 5);
    *(this + 11) |= 4u;
    *(this + 5) = v9;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

LABEL_20:
    v10 = *(a2 + 6);
    *(this + 11) |= 8u;
    *(this + 6) = v10;
    v4 = *(a2 + 11);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_21:
    v11 = *(a2 + 7);
    *(this + 11) |= 0x10u;
    *(this + 7) = v11;
    v4 = *(a2 + 11);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_22:
    v12 = *(a2 + 8);
    *(this + 11) |= 0x20u;
    *(this + 8) = v12;
    if ((*(a2 + 11) & 0x40) == 0)
    {
      return;
    }

LABEL_11:
    v5 = *(a2 + 9);
    *(this + 11) |= 0x40u;
    *(this + 9) = v5;
  }
}

void sub_1D0D0CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::Clear(this);
      }
    }

    *(v1 + 28) = 0;
    *(v1 + 20) = 0;
    *(v1 + 36) = 0;
  }

  *(v1 + 44) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[11];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[4], a2, a4);
    v6 = v5[11];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = v5[11];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[11];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
    if ((v5[11] & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[11];
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = v5[9];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_42;
  }

  if (*(this + 44))
  {
    v4 = *(this + 4);
    if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 11);
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::ByteSize(v5);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  }

  else
  {
    v8 = 1;
  }

  v3 = (v3 + v7 + v8 + 1);
  v2 = *(this + 11);
LABEL_16:
  if ((v2 & 4) != 0)
  {
    v9 = *(this + 5);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 11);
    }

    else
    {
      v10 = 2;
    }

    v3 = (v10 + v3);
    if ((v2 & 8) == 0)
    {
LABEL_18:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_18;
  }

  v11 = *(this + 6);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v12 = 2;
  }

  v3 = (v12 + v3);
  if ((v2 & 0x10) == 0)
  {
LABEL_19:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_34;
  }

LABEL_30:
  v13 = *(this + 7);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v14 = 2;
  }

  v3 = (v14 + v3);
  if ((v2 & 0x20) == 0)
  {
LABEL_20:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_38;
  }

LABEL_34:
  v15 = *(this + 8);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
    v2 = *(this + 11);
  }

  else
  {
    v16 = 2;
  }

  v3 = (v16 + v3);
  if ((v2 & 0x40) != 0)
  {
LABEL_38:
    v17 = *(this + 9);
    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17) + 1;
    }

    else
    {
      v18 = 2;
    }

    v3 = (v18 + v3);
  }

LABEL_42:
  *(this + 10) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this, const CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::SvId *CoreNavigation::CLP::LogEntry::PrivateData::SvId::SvId(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvId *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDCED0;
  *(this + 6) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 4);
      *(this + 6) |= 1u;
      *(this + 4) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      *(this + 6) |= 2u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergeFrom(v6, v7);
    }
  }
}

void sub_1D0D0D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 16) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 8);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::Clear(this);
      }
    }
  }

  *(v1 + 24) = 0;
  return this;
}

unsigned int *CoreNavigation::CLP::LogEntry::PrivateData::SvId::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[6];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[4], a2, a4);
    v6 = v5[6];
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v4 = *(this + 4);
      if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 6) & 2) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 24) & 2) == 0)
      {
        goto LABEL_16;
      }
    }

    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
    }

    v6 = CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = (v3 + v7 + v8 + 1);
  }

  else
  {
    v3 = 0;
  }

LABEL_16:
  *(this + 5) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvId::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::SvId::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this, const CoreNavigation::CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::SvId *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v3;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::SharedCtor(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::GpsL1SyncState(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this, const CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *a2)
{
  *this = &unk_1F4CDCF48;
  *(this + 1) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergeFrom(this, a2);
  return this;
}