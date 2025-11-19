void proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(proto::gpsd *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(void)::already_here & 1) == 0)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(void)::already_here = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "Sources/Protobuf/Generated/GpsdProtocol.pb.cc", a4);
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(v4, v5, v6, v7);
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(v8, v9, v10, v11);
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(v12, v13, v14, v15);
    operator new();
  }
}

double proto::gpsd::Request::Request(proto::gpsd::Request *this)
{
  *this = &unk_285862088;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 31) = 0;
  *(this + 32) = v2;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

{
  *this = &unk_285862088;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 31) = 0;
  *(this + 32) = v2;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

void *proto::gpsd::Response::Response(void *this)
{
  *this = &unk_285862100;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_285862100;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

double proto::gpsd::Indication::Indication(proto::gpsd::Indication *this)
{
  *this = &unk_285862178;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v2;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

{
  *this = &unk_285862178;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 15) = 0;
  *(this + 16) = v2;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 196) = 0u;
  return result;
}

uint64_t proto::gpsd::Status::Status(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858621F0;
  *(this + 23) = 0;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858621F0;
  *(this + 23) = 0;
  return this;
}

uint64_t proto::gpsd::SetPvtmReport::SetPvtmReport(uint64_t this)
{
  *this = &unk_285862268;
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

{
  *this = &unk_285862268;
  *(this + 16) = 0;
  *(this + 8) = 1;
  *(this + 9) = 0;
  *(this + 13) = 0;
  return this;
}

void *proto::gpsd::InjectAssistanceFile::InjectAssistanceFile(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858622E0;
  this[1] = v1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858622E0;
  this[1] = v1;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *proto::gpsd::InjectRtiFile::InjectRtiFile(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862358;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862358;
  this[1] = v1;
  this[2] = 0;
  return this;
}

void *proto::gpsd::InjectRavenOrbitFile::InjectRavenOrbitFile(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858623D0;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858623D0;
  this[1] = v1;
  this[2] = 0;
  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::InjectSvidBlocklist(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862448;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862448;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::InjectAssistancePosition(uint64_t this)
{
  *this = &unk_2858624C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_2858624C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 20) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gpsd::InjectAssistanceTime::InjectAssistanceTime(proto::gpsd::InjectAssistanceTime *this)
{
  *this = &unk_285862538;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285862538;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gpsd::DeleteGnssData::DeleteGnssData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2858625B0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2858625B0;
  return this;
}

void *proto::gpsd::SetNmeaHandler::SetNmeaHandler(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862628;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862628;
  return this;
}

uint64_t proto::gpsd::SetAssistancePressure::SetAssistancePressure(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858626A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858626A0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceAccel::SetAssistanceAccel(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862718;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862718;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceGyro::SetAssistanceGyro(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862790;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862790;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double proto::gpsd::SetAssistanceDem::SetAssistanceDem(proto::gpsd::SetAssistanceDem *this)
{
  *this = &unk_285862808;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285862808;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double proto::gpsd::SetAssistanceMapVector::SetAssistanceMapVector(proto::gpsd::SetAssistanceMapVector *this)
{
  *this = &unk_285862880;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

{
  *this = &unk_285862880;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 54) = 0u;
  return result;
}

double proto::gpsd::SetAssistanceMotionActivityContext::SetAssistanceMotionActivityContext(proto::gpsd::SetAssistanceMotionActivityContext *this)
{
  *this = &unk_2858628F8;
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

{
  *this = &unk_2858628F8;
  *(this + 1) = 0;
  *&result = 0x400000000;
  *(this + 2) = 0x400000000;
  *(this + 3) = 0;
  *(this + 8) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceMountState::SetAssistanceMountState(uint64_t this)
{
  *this = &unk_285862970;
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_285862970;
  *(this + 8) = 0;
  *(this + 16) = 4;
  *(this + 24) = 0;
  return this;
}

double proto::gpsd::SetAssistanceSignalEnvironment::SetAssistanceSignalEnvironment(proto::gpsd::SetAssistanceSignalEnvironment *this)
{
  *this = &unk_2858629E8;
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

{
  *this = &unk_2858629E8;
  *&result = 15;
  *(this + 1) = 15;
  *(this + 4) = 0;
  return result;
}

double proto::gpsd::SetAssistanceSpeedConstraint::SetAssistanceSpeedConstraint(proto::gpsd::SetAssistanceSpeedConstraint *this)
{
  *this = &unk_285862A60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_285862A60;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double proto::gpsd::SetAssistanceAlongTrackVelocity::SetAssistanceAlongTrackVelocity(proto::gpsd::SetAssistanceAlongTrackVelocity *this)
{
  *this = &unk_285862AD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_285862AD8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t proto::gpsd::SetThermalRiskState::SetThermalRiskState(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862B50;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862B50;
  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::SetConfigSimulatorMode(uint64_t this)
{
  *this = &unk_285862BC8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_285862BC8;
  *(this + 8) = 0;
  *(this + 12) = 0;
  *(this + 20) = 0;
  return this;
}

void *proto::gpsd::SetConfigEnableGnssConstellations::SetConfigEnableGnssConstellations(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862C40;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285862C40;
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::SetConfigRfBandEnable(uint64_t this)
{
  *this = &unk_285862CB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_285862CB8;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::SetConfigDutyCycling(uint64_t this)
{
  *this = &unk_285862D30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = &unk_285862D30;
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

void *proto::gpsd::TerminationImminent::TerminationImminent(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862DA8;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862DA8;
  this[1] = v1;
  this[2] = 0;
  return this;
}

void *proto::gpsd::ExitMessage::ExitMessage(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862E20;
  this[1] = v1;
  this[2] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862E20;
  this[1] = v1;
  this[2] = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics::RecoveryStatistics(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862F88;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285862F88;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryStatus::RecoveryStatistics_RecoveryStatus(uint64_t this)
{
  *this = &unk_285862E98;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

{
  *this = &unk_285862E98;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *(this + 11) = 0;
  return this;
}

uint64_t proto::gpsd::RecoveryStatistics_RecoveryPoint::RecoveryStatistics_RecoveryPoint(uint64_t this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862F10;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285862F10;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfoRequest::LtlInfoRequest(uint64_t this)
{
  *this = &unk_285863000;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_285863000;
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

double proto::gpsd::LtlInfo::LtlInfo(proto::gpsd::LtlInfo *this)
{
  *this = &unk_285863258;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

{
  *this = &unk_285863258;
  *(this + 8) = 0;
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  return result;
}

double proto::gpsd::LtlInfo_LtlLutParams::LtlInfo_LtlLutParams(proto::gpsd::LtlInfo_LtlLutParams *this)
{
  *this = &unk_285863078;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_285863078;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::LtlInfo_LtlCurrentSrcCalibData(proto::gpsd::LtlInfo_LtlCurrentSrcCalibData *this)
{
  *this = &unk_2858630F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_2858630F0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void *proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::LtlInfo_LtlRacPmicAdcPreCalData(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285863168;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_285863168;
  return this;
}

uint64_t proto::gpsd::LtlInfo_LtlInitialParams::LtlInfo_LtlInitialParams(uint64_t this)
{
  *this = &unk_2858631E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

{
  *this = &unk_2858631E0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 52) = 0;
  *(this + 44) = 0;
  return this;
}

uint64_t proto::gpsd::Exception::Exception(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858632D0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2858632D0;
  *(this + 24) = 0;
  return this;
}

void *proto::gpsd::AskBasebandReset::AskBasebandReset(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285863348;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_285863348;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

void *proto::gpsd::LogEntry::LogEntry(void *this)
{
  this[6] = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858633C0;
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

{
  this[6] = 0;
  v1 = MEMORY[0x277D82C30];
  *this = &unk_2858633C0;
  this[1] = 0;
  this[2] = v1;
  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  return this;
}

uint64_t proto::gpsd::StartContext::StartContext(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285863438;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_285863438;
  *(this + 24) = 0;
  return this;
}

void proto::gpsd::Request::InitAsDefaultInstance(proto::gpsd::Request *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = this;
  v5 = proto::gpsd::InjectAssistancePosition::default_instance_;
  if (!proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v5 = proto::gpsd::InjectAssistancePosition::default_instance_;
  }

  *(v4 + 3) = v5;
  v6 = proto::gpsd::InjectAssistanceTime::default_instance_;
  if (!proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v6 = proto::gpsd::InjectAssistanceTime::default_instance_;
  }

  *(v4 + 4) = v6;
  v7 = proto::gpsd::SetAssistancePressure::default_instance_;
  if (!proto::gpsd::SetAssistancePressure::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v7 = proto::gpsd::SetAssistancePressure::default_instance_;
  }

  *(v4 + 5) = v7;
  v8 = proto::gpsd::SetAssistanceAccel::default_instance_;
  if (!proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v8 = proto::gpsd::SetAssistanceAccel::default_instance_;
  }

  *(v4 + 6) = v8;
  v9 = proto::gpsd::SetAssistanceGyro::default_instance_;
  if (!proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v9 = proto::gpsd::SetAssistanceGyro::default_instance_;
  }

  *(v4 + 7) = v9;
  v10 = proto::gpsd::SetAssistanceDem::default_instance_;
  if (!proto::gpsd::SetAssistanceDem::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v10 = proto::gpsd::SetAssistanceDem::default_instance_;
  }

  *(v4 + 8) = v10;
  v11 = proto::gpsd::SetAssistanceMapVector::default_instance_;
  if (!proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v11 = proto::gpsd::SetAssistanceMapVector::default_instance_;
  }

  *(v4 + 9) = v11;
  v12 = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  if (!proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v12 = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  }

  *(v4 + 10) = v12;
  v13 = proto::gpsd::SetAssistanceMountState::default_instance_;
  if (!proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v13 = proto::gpsd::SetAssistanceMountState::default_instance_;
  }

  *(v4 + 11) = v13;
  v14 = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  if (!proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v14 = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  }

  *(v4 + 12) = v14;
  v15 = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  if (!proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v15 = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  }

  *(v4 + 13) = v15;
  v16 = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  if (!proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v16 = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  }

  *(v4 + 14) = v16;
  v17 = proto::gpsd::InjectAssistanceFile::default_instance_;
  if (!proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v17 = proto::gpsd::InjectAssistanceFile::default_instance_;
  }

  *(v4 + 15) = v17;
  v18 = proto::gpsd::InjectRtiFile::default_instance_;
  if (!proto::gpsd::InjectRtiFile::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v18 = proto::gpsd::InjectRtiFile::default_instance_;
  }

  *(v4 + 16) = v18;
  v19 = proto::gpsd::InjectSvidBlocklist::default_instance_;
  if (!proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v19 = proto::gpsd::InjectSvidBlocklist::default_instance_;
  }

  *(v4 + 17) = v19;
  v20 = proto::gpsd::DeleteGnssData::default_instance_;
  if (!proto::gpsd::DeleteGnssData::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v20 = proto::gpsd::DeleteGnssData::default_instance_;
  }

  *(v4 + 18) = v20;
  v21 = proto::gpsd::SetPvtmReport::default_instance_;
  if (!proto::gpsd::SetPvtmReport::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v21 = proto::gpsd::SetPvtmReport::default_instance_;
  }

  *(v4 + 19) = v21;
  v22 = proto::gpsd::SetNmeaHandler::default_instance_;
  if (!proto::gpsd::SetNmeaHandler::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v22 = proto::gpsd::SetNmeaHandler::default_instance_;
  }

  *(v4 + 20) = v22;
  v23 = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  if (!proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v23 = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  }

  *(v4 + 21) = v23;
  v24 = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  if (!proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v24 = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  }

  *(v4 + 22) = v24;
  v25 = proto::gpsd::SetConfigDutyCycling::default_instance_;
  if (!proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v25 = proto::gpsd::SetConfigDutyCycling::default_instance_;
  }

  *(v4 + 23) = v25;
  v26 = proto::gpsd::TerminationImminent::default_instance_;
  if (!proto::gpsd::TerminationImminent::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v26 = proto::gpsd::TerminationImminent::default_instance_;
  }

  *(v4 + 24) = v26;
  v27 = proto::gpsd::ExitMessage::default_instance_;
  if (!proto::gpsd::ExitMessage::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v27 = proto::gpsd::ExitMessage::default_instance_;
  }

  *(v4 + 25) = v27;
  v28 = proto::gpsd::LtlInfo::default_instance_;
  if (!proto::gpsd::LtlInfo::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v28 = proto::gpsd::LtlInfo::default_instance_;
  }

  *(v4 + 26) = v28;
  v29 = proto::gpsd::StartContext::default_instance_;
  if (!proto::gpsd::StartContext::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v29 = proto::gpsd::StartContext::default_instance_;
  }

  *(v4 + 27) = v29;
  v30 = proto::gpsd::SetThermalRiskState::default_instance_;
  if (!proto::gpsd::SetThermalRiskState::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v30 = proto::gpsd::SetThermalRiskState::default_instance_;
  }

  *(v4 + 28) = v30;
  v31 = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  if (!proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v31 = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  }

  *(v4 + 29) = v31;
  v32 = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  if (!proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v32 = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  }

  *(v4 + 30) = v32;
  v33 = proto::gnss::Emergency::EmergConfig::default_instance_;
  if (!proto::gnss::Emergency::EmergConfig::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v33 = proto::gnss::Emergency::EmergConfig::default_instance_;
  }

  *(v4 + 31) = v33;
  v34 = proto::gnss::Emergency::PositionRequest::default_instance_;
  if (!proto::gnss::Emergency::PositionRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v34 = proto::gnss::Emergency::PositionRequest::default_instance_;
  }

  *(v4 + 33) = v34;
  v35 = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  if (!proto::gnss::Emergency::GpsReferenceTime::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v35 = proto::gnss::Emergency::GpsReferenceTime::default_instance_;
  }

  *(v4 + 34) = v35;
  v36 = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  if (!proto::gnss::Emergency::ReferenceLocation::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v36 = proto::gnss::Emergency::ReferenceLocation::default_instance_;
  }

  *(v4 + 35) = v36;
  v37 = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  if (!proto::gnss::Emergency::GpsNavigationModel::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v37 = proto::gnss::Emergency::GpsNavigationModel::default_instance_;
  }

  *(v4 + 36) = v37;
  v38 = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  if (!proto::gnss::Emergency::GpsAcqAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v38 = proto::gnss::Emergency::GpsAcqAssistance::default_instance_;
  }

  *(v4 + 37) = v38;
  v39 = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistance::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v39 = proto::gnss::Emergency::CellFTAssistance::default_instance_;
  }

  *(v4 + 39) = v39;
  v40 = proto::gnss::Emergency::CplaneContext::default_instance_;
  if (!proto::gnss::Emergency::CplaneContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v40 = proto::gnss::Emergency::CplaneContext::default_instance_;
  }

  *(v4 + 40) = v40;
  v41 = proto::gnss::Emergency::LocationId::default_instance_;
  if (!proto::gnss::Emergency::LocationId::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v41 = proto::gnss::Emergency::LocationId::default_instance_;
  }

  *(v4 + 43) = v41;
  v42 = proto::gnss::Emergency::SuplContext::default_instance_;
  if (!proto::gnss::Emergency::SuplContext::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v42 = proto::gnss::Emergency::SuplContext::default_instance_;
  }

  *(v4 + 47) = v42;
  v43 = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementList::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v43 = proto::gnss::Emergency::WlanMeasurementList::default_instance_;
  }

  *(v4 + 48) = v43;
}

void proto::gpsd::Indication::InitAsDefaultInstance(proto::gpsd::Indication *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = this;
  v5 = proto::gnss::Fix::default_instance_;
  if (!proto::gnss::Fix::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Fix::default_instance_;
  }

  *(v4 + 3) = v5;
  v6 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(this, a2, a3, a4);
    v6 = CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  }

  *(v4 + 4) = v6;
  v7 = proto::gnss::PwrMeasurement::default_instance_;
  if (!proto::gnss::PwrMeasurement::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v7 = proto::gnss::PwrMeasurement::default_instance_;
  }

  *(v4 + 5) = v7;
  v8 = proto::gpsd::Status::default_instance_;
  if (!proto::gpsd::Status::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v8 = proto::gpsd::Status::default_instance_;
  }

  *(v4 + 6) = v8;
  v9 = proto::gnss::TimeTransferDataExtend::default_instance_;
  if (!proto::gnss::TimeTransferDataExtend::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v9 = proto::gnss::TimeTransferDataExtend::default_instance_;
  }

  *(v4 + 7) = v9;
  v10 = proto::gpsd::RecoveryStatistics::default_instance_;
  if (!proto::gpsd::RecoveryStatistics::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v10 = proto::gpsd::RecoveryStatistics::default_instance_;
  }

  *(v4 + 8) = v10;
  v11 = proto::gpsd::LtlInfoRequest::default_instance_;
  if (!proto::gpsd::LtlInfoRequest::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v11 = proto::gpsd::LtlInfoRequest::default_instance_;
  }

  *(v4 + 9) = v11;
  v12 = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  if (!proto::gnss::DecodedExtendedEphemeris::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v12 = proto::gnss::DecodedExtendedEphemeris::default_instance_;
  }

  *(v4 + 10) = v12;
  v13 = proto::gnss::DecodedRti::default_instance_;
  if (!proto::gnss::DecodedRti::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v13 = proto::gnss::DecodedRti::default_instance_;
  }

  *(v4 + 11) = v13;
  v14 = proto::gpsd::Exception::default_instance_;
  if (!proto::gpsd::Exception::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v14 = proto::gpsd::Exception::default_instance_;
  }

  *(v4 + 13) = v14;
  v15 = proto::gpsd::AskBasebandReset::default_instance_;
  if (!proto::gpsd::AskBasebandReset::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v15 = proto::gpsd::AskBasebandReset::default_instance_;
  }

  *(v4 + 14) = v15;
  v16 = proto::gnss::Emergency::SummaryReport::default_instance_;
  if (!proto::gnss::Emergency::SummaryReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v16 = proto::gnss::Emergency::SummaryReport::default_instance_;
  }

  *(v4 + 15) = v16;
  v17 = proto::gnss::Emergency::PositionReport::default_instance_;
  if (!proto::gnss::Emergency::PositionReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v17 = proto::gnss::Emergency::PositionReport::default_instance_;
  }

  *(v4 + 17) = v17;
  v18 = proto::gnss::Emergency::MeasurementReport::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v18 = proto::gnss::Emergency::MeasurementReport::default_instance_;
  }

  *(v4 + 18) = v18;
  v19 = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  if (!proto::gnss::Emergency::AssistanceNeededReport::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v19 = proto::gnss::Emergency::AssistanceNeededReport::default_instance_;
  }

  *(v4 + 19) = v19;
  v20 = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  if (!proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v20 = proto::gnss::Emergency::CellFTAssistanceRequest::default_instance_;
  }

  *(v4 + 20) = v20;
  v21 = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  if (!proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v21 = proto::gnss::Emergency::MeasurementReportWithEstimate::default_instance_;
  }

  *(v4 + 21) = v21;
  v22 = proto::gnss::Emergency::SessionStatus::default_instance_;
  if (!proto::gnss::Emergency::SessionStatus::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v22 = proto::gnss::Emergency::SessionStatus::default_instance_;
  }

  *(v4 + 22) = v22;
  v23 = proto::gnss::Emergency::Init::default_instance_;
  if (!proto::gnss::Emergency::Init::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v23 = proto::gnss::Emergency::Init::default_instance_;
  }

  *(v4 + 23) = v23;
  v24 = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  if (!proto::gnss::Emergency::WlanMeasurementRequest::default_instance_)
  {
    proto::gnss::Emergency::protobuf_AddDesc_GnssEmergencyTypes_2eproto(this, a2, a3, a4);
    v24 = proto::gnss::Emergency::WlanMeasurementRequest::default_instance_;
  }

  *(v4 + 25) = v24;
}

void proto::gpsd::InjectAssistancePosition::InitAsDefaultInstance(proto::gpsd::InjectAssistancePosition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gnss::Position::default_instance_;
  if (!proto::gnss::Position::default_instance_)
  {
    proto::gnss::protobuf_AddDesc_GnssTypes_2eproto(this, a2, a3, a4);
    v5 = proto::gnss::Position::default_instance_;
  }

  *(this + 1) = v5;
}

void proto::gpsd::RecoveryStatistics::InitAsDefaultInstance(proto::gpsd::RecoveryStatistics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  if (!proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::RecoveryStatistics_RecoveryStatus::default_instance_;
  }

  *(this + 4) = v5;
}

proto::gpsd *proto::gpsd::LtlInfo::InitAsDefaultInstance(proto::gpsd *this)
{
  v1 = this;
  v2 = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlInitialParams::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v2 = proto::gpsd::LtlInfo_LtlInitialParams::default_instance_;
  }

  *(v1 + 2) = v2;
  v3 = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlLutParams::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v3 = proto::gpsd::LtlInfo_LtlLutParams::default_instance_;
  }

  *(v1 + 3) = v3;
  v4 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v4 = proto::gpsd::LtlInfo_LtlCurrentSrcCalibData::default_instance_;
  }

  *(v1 + 4) = v4;
  v5 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  if (!proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_)
  {
    this = proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this);
    v5 = proto::gpsd::LtlInfo_LtlRacPmicAdcPreCalData::default_instance_;
  }

  *(v1 + 5) = v5;
  return this;
}

void proto::gpsd::LogEntry::InitAsDefaultInstance(proto::gpsd::LogEntry *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = proto::gpsd::Request::default_instance_;
  if (!proto::gpsd::Request::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v5 = proto::gpsd::Request::default_instance_;
  }

  *(this + 3) = v5;
  v6 = proto::gpsd::Response::default_instance_;
  if (!proto::gpsd::Response::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v6 = proto::gpsd::Response::default_instance_;
  }

  *(this + 4) = v6;
  v7 = proto::gpsd::Indication::default_instance_;
  if (!proto::gpsd::Indication::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(this, a2, a3, a4);
    v7 = proto::gpsd::Indication::default_instance_;
  }

  *(this + 5) = v7;
}

BOOL proto::gpsd::Request_Type_IsValid(proto::gpsd *this)
{
  v1 = this;
  result = 1;
  if (v1 - 31 > 0x2D || ((1 << (v1 - 31)) & 0x3FFFE7F001FBLL) == 0)
  {
    return v1 < 0x1E;
  }

  return result;
}

double proto::gpsd::Request::SharedCtor(proto::gpsd::Request *this)
{
  *(this + 98) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  v2 = MEMORY[0x277D82C30];
  *(this + 31) = 0;
  *(this + 32) = v2;
  *(this + 43) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  return result;
}

uint64_t proto::gpsd::InjectAssistancePosition::default_instance(proto::gpsd::InjectAssistancePosition *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistancePosition::default_instance_;
  if (!proto::gpsd::InjectAssistancePosition::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistancePosition::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistanceTime::default_instance(proto::gpsd::InjectAssistanceTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistanceTime::default_instance_;
  if (!proto::gpsd::InjectAssistanceTime::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistanceTime::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistancePressure::default_instance(proto::gpsd::SetAssistancePressure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistancePressure::default_instance_;
  if (!proto::gpsd::SetAssistancePressure::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistancePressure::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceAccel::default_instance(proto::gpsd::SetAssistanceAccel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceAccel::default_instance_;
  if (!proto::gpsd::SetAssistanceAccel::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceAccel::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceGyro::default_instance(proto::gpsd::SetAssistanceGyro *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceGyro::default_instance_;
  if (!proto::gpsd::SetAssistanceGyro::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceGyro::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceDem::default_instance(proto::gpsd::SetAssistanceDem *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceDem::default_instance_;
  if (!proto::gpsd::SetAssistanceDem::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceDem::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMapVector::default_instance(proto::gpsd::SetAssistanceMapVector *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMapVector::default_instance_;
  if (!proto::gpsd::SetAssistanceMapVector::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMapVector::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::default_instance(proto::gpsd::SetAssistanceMotionActivityContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  if (!proto::gpsd::SetAssistanceMotionActivityContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMotionActivityContext::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceMountState::default_instance(proto::gpsd::SetAssistanceMountState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceMountState::default_instance_;
  if (!proto::gpsd::SetAssistanceMountState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceMountState::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::default_instance(proto::gpsd::SetAssistanceSignalEnvironment *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  if (!proto::gpsd::SetAssistanceSignalEnvironment::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceSignalEnvironment::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::default_instance(proto::gpsd::SetAssistanceSpeedConstraint *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  if (!proto::gpsd::SetAssistanceSpeedConstraint::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceSpeedConstraint::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance(proto::gpsd::SetAssistanceAlongTrackVelocity *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  if (!proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetAssistanceAlongTrackVelocity::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectAssistanceFile::default_instance(proto::gpsd::InjectAssistanceFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectAssistanceFile::default_instance_;
  if (!proto::gpsd::InjectAssistanceFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectAssistanceFile::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectRtiFile::default_instance(proto::gpsd::InjectRtiFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectRtiFile::default_instance_;
  if (!proto::gpsd::InjectRtiFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectRtiFile::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectSvidBlocklist::default_instance(proto::gpsd::InjectSvidBlocklist *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectSvidBlocklist::default_instance_;
  if (!proto::gpsd::InjectSvidBlocklist::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectSvidBlocklist::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::DeleteGnssData::default_instance(proto::gpsd::DeleteGnssData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::DeleteGnssData::default_instance_;
  if (!proto::gpsd::DeleteGnssData::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::DeleteGnssData::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetPvtmReport::default_instance(proto::gpsd::SetPvtmReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetPvtmReport::default_instance_;
  if (!proto::gpsd::SetPvtmReport::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetPvtmReport::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetNmeaHandler::default_instance(proto::gpsd::SetNmeaHandler *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetNmeaHandler::default_instance_;
  if (!proto::gpsd::SetNmeaHandler::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetNmeaHandler::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::default_instance(proto::gpsd::SetConfigSimulatorMode *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigSimulatorMode::default_instance_;
  if (!proto::gpsd::SetConfigSimulatorMode::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigSimulatorMode::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::default_instance(proto::gpsd::SetConfigEnableGnssConstellations *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  if (!proto::gpsd::SetConfigEnableGnssConstellations::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigEnableGnssConstellations::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigDutyCycling::default_instance(proto::gpsd::SetConfigDutyCycling *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigDutyCycling::default_instance_;
  if (!proto::gpsd::SetConfigDutyCycling::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigDutyCycling::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::TerminationImminent::default_instance(proto::gpsd::TerminationImminent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::TerminationImminent::default_instance_;
  if (!proto::gpsd::TerminationImminent::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::TerminationImminent::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::ExitMessage::default_instance(proto::gpsd::ExitMessage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::ExitMessage::default_instance_;
  if (!proto::gpsd::ExitMessage::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::ExitMessage::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::LtlInfo::default_instance(proto::gpsd::LtlInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::LtlInfo::default_instance_;
  if (!proto::gpsd::LtlInfo::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::LtlInfo::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::StartContext::default_instance(proto::gpsd::StartContext *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::StartContext::default_instance_;
  if (!proto::gpsd::StartContext::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::StartContext::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetThermalRiskState::default_instance(proto::gpsd::SetThermalRiskState *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetThermalRiskState::default_instance_;
  if (!proto::gpsd::SetThermalRiskState::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetThermalRiskState::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::default_instance(proto::gpsd::SetConfigRfBandEnable *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::SetConfigRfBandEnable::default_instance_;
  if (!proto::gpsd::SetConfigRfBandEnable::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::SetConfigRfBandEnable::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::default_instance(proto::gpsd::InjectRavenOrbitFile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::InjectRavenOrbitFile::default_instance_;
  if (!proto::gpsd::InjectRavenOrbitFile::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::InjectRavenOrbitFile::default_instance_;
  }

  return result;
}

proto::gpsd::Request *proto::gpsd::Request::Request(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  *this = &unk_285862088;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 45) = 0;
  *(this + 98) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  v3 = MEMORY[0x277D82C30];
  *(this + 232) = 0u;
  *(this + 31) = 0;
  *(this + 32) = v3;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 368) = 0;
  *(this + 396) = 0;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 97) = 0;
  *(this + 372) = 0;
  *(this + 380) = 0;
  proto::gpsd::Request::MergeFrom(this, a2);
  return this;
}

void sub_245544D14(_Unwind_Exception *a1)
{
  v3 = *(v1 + 44);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  v4 = *(v1 + 41);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::MergeFrom(proto::gpsd::Request *this, const proto::gpsd::Request *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v95);
  }

  v4 = *(a2 + 84);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 41, *(this + 84) + v4);
    memcpy((*(this + 41) + 4 * *(this + 84)), *(a2 + 41), 4 * *(a2 + 84));
    *(this + 84) += *(a2 + 84);
  }

  v5 = *(a2 + 90);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 44, *(this + 90) + v5);
    memcpy((*(this + 44) + 4 * *(this + 90)), *(a2 + 44), 4 * *(a2 + 90));
    *(this + 90) += *(a2 + 90);
  }

  v6 = *(a2 + 99);
  if (!v6)
  {
    goto LABEL_46;
  }

  if (v6)
  {
    v7 = *(a2 + 1);
    *(this + 99) |= 1u;
    *(this + 1) = v7;
    v6 = *(a2 + 99);
    if ((v6 & 2) == 0)
    {
LABEL_10:
      if ((v6 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_10;
  }

  v8 = *(a2 + 4);
  *(this + 99) |= 2u;
  *(this + 4) = v8;
  v6 = *(a2 + 99);
  if ((v6 & 4) == 0)
  {
LABEL_11:
    if ((v6 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  v9 = *(a2 + 5);
  if (!proto::gpsd::Request_Type_IsValid(v9))
  {
    __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
  }

  *(this + 99) |= 4u;
  *(this + 5) = v9;
  v6 = *(a2 + 99);
  if ((v6 & 8) == 0)
  {
LABEL_12:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_21:
  *(this + 99) |= 8u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    v11 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  proto::gpsd::InjectAssistancePosition::MergeFrom(v10, v11);
  v6 = *(a2 + 99);
  if ((v6 & 0x10) == 0)
  {
LABEL_13:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    *(this + 99) |= 0x20u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      v15 = *(proto::gpsd::Request::default_instance_ + 40);
    }

    proto::gpsd::SetAssistancePressure::MergeFrom(v14, v15);
    v6 = *(a2 + 99);
    if ((v6 & 0x40) == 0)
    {
LABEL_15:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_26:
  *(this + 99) |= 0x10u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  proto::gpsd::InjectAssistanceTime::MergeFrom(v12, v13);
  v6 = *(a2 + 99);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_36:
  *(this + 99) |= 0x40u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  proto::gpsd::SetAssistanceAccel::MergeFrom(v16, v17);
  v6 = *(a2 + 99);
  if ((v6 & 0x80) != 0)
  {
LABEL_41:
    *(this + 99) |= 0x80u;
    v18 = *(this + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      v19 = *(proto::gpsd::Request::default_instance_ + 56);
    }

    proto::gpsd::SetAssistanceGyro::MergeFrom(v18, v19);
    v6 = *(a2 + 99);
  }

LABEL_46:
  if ((v6 & 0xFF00) == 0)
  {
    goto LABEL_96;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 99) |= 0x100u;
    v20 = *(this + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      v21 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    proto::gpsd::SetAssistanceDem::MergeFrom(v20, v21);
    v6 = *(a2 + 99);
    if ((v6 & 0x200) == 0)
    {
LABEL_49:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_66;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_49;
  }

  *(this + 99) |= 0x200u;
  v22 = *(this + 9);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 9);
  if (!v23)
  {
    v23 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  proto::gpsd::SetAssistanceMapVector::MergeFrom(v22, v23);
  v6 = *(a2 + 99);
  if ((v6 & 0x400) == 0)
  {
LABEL_50:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_71;
  }

LABEL_66:
  *(this + 99) |= 0x400u;
  v24 = *(this + 10);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 10);
  if (!v25)
  {
    v25 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  proto::gpsd::SetAssistanceMotionActivityContext::MergeFrom(v24, v25);
  v6 = *(a2 + 99);
  if ((v6 & 0x800) == 0)
  {
LABEL_51:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_76;
  }

LABEL_71:
  *(this + 99) |= 0x800u;
  v26 = *(this + 11);
  if (!v26)
  {
    operator new();
  }

  v27 = *(a2 + 11);
  if (!v27)
  {
    v27 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  proto::gpsd::SetAssistanceMountState::MergeFrom(v26, v27);
  v6 = *(a2 + 99);
  if ((v6 & 0x1000) == 0)
  {
LABEL_52:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_81;
  }

LABEL_76:
  *(this + 99) |= 0x1000u;
  v28 = *(this + 12);
  if (!v28)
  {
    operator new();
  }

  v29 = *(a2 + 12);
  if (!v29)
  {
    v29 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  proto::gpsd::SetAssistanceSignalEnvironment::MergeFrom(v28, v29);
  v6 = *(a2 + 99);
  if ((v6 & 0x2000) == 0)
  {
LABEL_53:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_86;
  }

LABEL_81:
  *(this + 99) |= 0x2000u;
  v30 = *(this + 13);
  if (!v30)
  {
    operator new();
  }

  v31 = *(a2 + 13);
  if (!v31)
  {
    v31 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  proto::gpsd::SetAssistanceSpeedConstraint::MergeFrom(v30, v31);
  v6 = *(a2 + 99);
  if ((v6 & 0x4000) == 0)
  {
LABEL_54:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_91;
  }

LABEL_86:
  *(this + 99) |= 0x4000u;
  v32 = *(this + 14);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 14);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  proto::gpsd::SetAssistanceAlongTrackVelocity::MergeFrom(v32, v33);
  v6 = *(a2 + 99);
  if ((v6 & 0x8000) != 0)
  {
LABEL_91:
    *(this + 99) |= 0x8000u;
    v34 = *(this + 15);
    if (!v34)
    {
      operator new();
    }

    v35 = *(a2 + 15);
    if (!v35)
    {
      v35 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    proto::gpsd::InjectAssistanceFile::MergeFrom(v34, v35);
    v6 = *(a2 + 99);
  }

LABEL_96:
  if ((v6 & 0xFF0000) == 0)
  {
    goto LABEL_146;
  }

  if ((v6 & 0x10000) != 0)
  {
    *(this + 99) |= 0x10000u;
    v36 = *(this + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *(a2 + 16);
    if (!v37)
    {
      v37 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    proto::gpsd::InjectRtiFile::MergeFrom(v36, v37);
    v6 = *(a2 + 99);
    if ((v6 & 0x20000) == 0)
    {
LABEL_99:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_100;
      }

      goto LABEL_116;
    }
  }

  else if ((v6 & 0x20000) == 0)
  {
    goto LABEL_99;
  }

  *(this + 99) |= 0x20000u;
  v38 = *(this + 17);
  if (!v38)
  {
    operator new();
  }

  v39 = *(a2 + 17);
  if (!v39)
  {
    v39 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  proto::gpsd::InjectSvidBlocklist::MergeFrom(v38, v39);
  v6 = *(a2 + 99);
  if ((v6 & 0x40000) == 0)
  {
LABEL_100:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_121;
  }

LABEL_116:
  *(this + 99) |= 0x40000u;
  v40 = *(this + 18);
  if (!v40)
  {
    operator new();
  }

  v41 = *(a2 + 18);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  proto::gpsd::DeleteGnssData::MergeFrom(v40, v41);
  v6 = *(a2 + 99);
  if ((v6 & 0x80000) == 0)
  {
LABEL_101:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_126;
  }

LABEL_121:
  *(this + 99) |= 0x80000u;
  v42 = *(this + 19);
  if (!v42)
  {
    operator new();
  }

  v43 = *(a2 + 19);
  if (!v43)
  {
    v43 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  proto::gpsd::SetPvtmReport::MergeFrom(v42, v43);
  v6 = *(a2 + 99);
  if ((v6 & 0x100000) == 0)
  {
LABEL_102:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_131;
  }

LABEL_126:
  *(this + 99) |= 0x100000u;
  v44 = *(this + 20);
  if (!v44)
  {
    operator new();
  }

  v45 = *(a2 + 20);
  if (!v45)
  {
    v45 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  proto::gpsd::SetNmeaHandler::MergeFrom(v44, v45);
  v6 = *(a2 + 99);
  if ((v6 & 0x200000) == 0)
  {
LABEL_103:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_136;
  }

LABEL_131:
  *(this + 99) |= 0x200000u;
  v46 = *(this + 21);
  if (!v46)
  {
    operator new();
  }

  v47 = *(a2 + 21);
  if (!v47)
  {
    v47 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  proto::gpsd::SetConfigSimulatorMode::MergeFrom(v46, v47);
  v6 = *(a2 + 99);
  if ((v6 & 0x400000) == 0)
  {
LABEL_104:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

LABEL_136:
  *(this + 99) |= 0x400000u;
  v48 = *(this + 22);
  if (!v48)
  {
    operator new();
  }

  v49 = *(a2 + 22);
  if (!v49)
  {
    v49 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  proto::gpsd::SetConfigEnableGnssConstellations::MergeFrom(v48, v49);
  v6 = *(a2 + 99);
  if ((v6 & 0x800000) != 0)
  {
LABEL_141:
    *(this + 99) |= 0x800000u;
    v50 = *(this + 23);
    if (!v50)
    {
      operator new();
    }

    v51 = *(a2 + 23);
    if (!v51)
    {
      v51 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    proto::gpsd::SetConfigDutyCycling::MergeFrom(v50, v51);
    v6 = *(a2 + 99);
  }

LABEL_146:
  if (!HIBYTE(v6))
  {
    goto LABEL_196;
  }

  if ((v6 & 0x1000000) != 0)
  {
    *(this + 99) |= 0x1000000u;
    v52 = *(this + 24);
    if (!v52)
    {
      operator new();
    }

    v53 = *(a2 + 24);
    if (!v53)
    {
      v53 = *(proto::gpsd::Request::default_instance_ + 192);
    }

    proto::gpsd::TerminationImminent::MergeFrom(v52, v53);
    v6 = *(a2 + 99);
    if ((v6 & 0x2000000) == 0)
    {
LABEL_149:
      if ((v6 & 0x4000000) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_166;
    }
  }

  else if ((v6 & 0x2000000) == 0)
  {
    goto LABEL_149;
  }

  *(this + 99) |= 0x2000000u;
  v54 = *(this + 25);
  if (!v54)
  {
    operator new();
  }

  v55 = *(a2 + 25);
  if (!v55)
  {
    v55 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  proto::gpsd::ExitMessage::MergeFrom(v54, v55);
  v6 = *(a2 + 99);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_150:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_171;
  }

LABEL_166:
  *(this + 99) |= 0x4000000u;
  v56 = *(this + 26);
  if (!v56)
  {
    operator new();
  }

  v57 = *(a2 + 26);
  if (!v57)
  {
    v57 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  proto::gpsd::LtlInfo::MergeFrom(v56, v57);
  v6 = *(a2 + 99);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_151:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_176;
  }

LABEL_171:
  *(this + 99) |= 0x8000000u;
  v58 = *(this + 27);
  if (!v58)
  {
    operator new();
  }

  v59 = *(a2 + 27);
  if (!v59)
  {
    v59 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  proto::gpsd::StartContext::MergeFrom(v58, v59);
  v6 = *(a2 + 99);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_152:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_181;
  }

LABEL_176:
  *(this + 99) |= 0x10000000u;
  v60 = *(this + 28);
  if (!v60)
  {
    operator new();
  }

  v61 = *(a2 + 28);
  if (!v61)
  {
    v61 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  proto::gpsd::SetThermalRiskState::MergeFrom(v60, v61);
  v6 = *(a2 + 99);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_153:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_154;
    }

    goto LABEL_186;
  }

LABEL_181:
  *(this + 99) |= 0x20000000u;
  v62 = *(this + 29);
  if (!v62)
  {
    operator new();
  }

  v63 = *(a2 + 29);
  if (!v63)
  {
    v63 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  proto::gpsd::SetConfigRfBandEnable::MergeFrom(v62, v63);
  v6 = *(a2 + 99);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_154:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_196;
    }

    goto LABEL_191;
  }

LABEL_186:
  *(this + 99) |= 0x40000000u;
  v64 = *(this + 30);
  if (!v64)
  {
    operator new();
  }

  v65 = *(a2 + 30);
  if (!v65)
  {
    v65 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  proto::gpsd::InjectRavenOrbitFile::MergeFrom(v64, v65);
  if ((*(a2 + 99) & 0x80000000) != 0)
  {
LABEL_191:
    *(this + 99) |= 0x80000000;
    v66 = *(this + 31);
    if (!v66)
    {
      operator new();
    }

    v67 = *(a2 + 31);
    if (!v67)
    {
      v67 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    proto::gnss::Emergency::EmergConfig::MergeFrom(v66, v67);
  }

LABEL_196:
  v68 = *(a2 + 100);
  if (!v68)
  {
    goto LABEL_240;
  }

  if (v68)
  {
    v69 = *(a2 + 32);
    *(this + 100) |= 1u;
    v70 = *(this + 32);
    if (v70 == MEMORY[0x277D82C30])
    {
      operator new();
    }

    std::string::operator=(v70, v69);
    v68 = *(a2 + 100);
    if ((v68 & 2) == 0)
    {
LABEL_199:
      if ((v68 & 4) == 0)
      {
        goto LABEL_200;
      }

      goto LABEL_214;
    }
  }

  else if ((v68 & 2) == 0)
  {
    goto LABEL_199;
  }

  *(this + 100) |= 2u;
  v71 = *(this + 33);
  if (!v71)
  {
    operator new();
  }

  v72 = *(a2 + 33);
  if (!v72)
  {
    v72 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  proto::gnss::Emergency::PositionRequest::MergeFrom(v71, v72);
  v68 = *(a2 + 100);
  if ((v68 & 4) == 0)
  {
LABEL_200:
    if ((v68 & 8) == 0)
    {
      goto LABEL_201;
    }

    goto LABEL_215;
  }

LABEL_214:
  v73 = *(a2 + 76);
  *(this + 100) |= 4u;
  *(this + 76) = v73;
  v68 = *(a2 + 100);
  if ((v68 & 8) == 0)
  {
LABEL_201:
    if ((v68 & 0x10) == 0)
    {
      goto LABEL_202;
    }

    goto LABEL_220;
  }

LABEL_215:
  *(this + 100) |= 8u;
  v74 = *(this + 34);
  if (!v74)
  {
    operator new();
  }

  v75 = *(a2 + 34);
  if (!v75)
  {
    v75 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  proto::gnss::Emergency::GpsReferenceTime::MergeFrom(v74, v75);
  v68 = *(a2 + 100);
  if ((v68 & 0x10) == 0)
  {
LABEL_202:
    if ((v68 & 0x20) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_225;
  }

LABEL_220:
  *(this + 100) |= 0x10u;
  v76 = *(this + 35);
  if (!v76)
  {
    operator new();
  }

  v77 = *(a2 + 35);
  if (!v77)
  {
    v77 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  proto::gnss::Emergency::ReferenceLocation::MergeFrom(v76, v77);
  v68 = *(a2 + 100);
  if ((v68 & 0x20) == 0)
  {
LABEL_203:
    if ((v68 & 0x40) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_230;
  }

LABEL_225:
  *(this + 100) |= 0x20u;
  v78 = *(this + 36);
  if (!v78)
  {
    operator new();
  }

  v79 = *(a2 + 36);
  if (!v79)
  {
    v79 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  proto::gnss::Emergency::GpsNavigationModel::MergeFrom(v78, v79);
  v68 = *(a2 + 100);
  if ((v68 & 0x40) == 0)
  {
LABEL_204:
    if ((v68 & 0x80) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_235;
  }

LABEL_230:
  *(this + 100) |= 0x40u;
  v80 = *(this + 37);
  if (!v80)
  {
    operator new();
  }

  v81 = *(a2 + 37);
  if (!v81)
  {
    v81 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  proto::gnss::Emergency::GpsAcqAssistance::MergeFrom(v80, v81);
  v68 = *(a2 + 100);
  if ((v68 & 0x80) != 0)
  {
LABEL_235:
    *(this + 100) |= 0x80u;
    v82 = *(this + 39);
    if (!v82)
    {
      operator new();
    }

    v83 = *(a2 + 39);
    if (!v83)
    {
      v83 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    proto::gnss::Emergency::CellFTAssistance::MergeFrom(v82, v83);
    v68 = *(a2 + 100);
  }

LABEL_240:
  if ((v68 & 0xFF00) == 0)
  {
    goto LABEL_247;
  }

  if ((v68 & 0x100) != 0)
  {
    *(this + 100) |= 0x100u;
    v84 = *(this + 40);
    if (!v84)
    {
      operator new();
    }

    v85 = *(a2 + 40);
    if (!v85)
    {
      v85 = *(proto::gpsd::Request::default_instance_ + 320);
    }

    proto::gnss::Emergency::CplaneContext::MergeFrom(v84, v85);
    v68 = *(a2 + 100);
    if ((v68 & 0x400) == 0)
    {
LABEL_243:
      if ((v68 & 0x800) == 0)
      {
        goto LABEL_244;
      }

      goto LABEL_259;
    }
  }

  else if ((v68 & 0x400) == 0)
  {
    goto LABEL_243;
  }

  *(this + 100) |= 0x400u;
  v86 = *(this + 43);
  if (!v86)
  {
    operator new();
  }

  v87 = *(a2 + 43);
  if (!v87)
  {
    v87 = *(proto::gpsd::Request::default_instance_ + 344);
  }

  proto::gnss::Emergency::LocationId::MergeFrom(v86, v87);
  v68 = *(a2 + 100);
  if ((v68 & 0x800) == 0)
  {
LABEL_244:
    if ((v68 & 0x2000) == 0)
    {
      goto LABEL_245;
    }

    goto LABEL_260;
  }

LABEL_259:
  v88 = *(a2 + 77);
  *(this + 100) |= 0x800u;
  *(this + 77) = v88;
  v68 = *(a2 + 100);
  if ((v68 & 0x2000) == 0)
  {
LABEL_245:
    if ((v68 & 0x4000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_261;
  }

LABEL_260:
  v89 = *(a2 + 368);
  *(this + 100) |= 0x2000u;
  *(this + 368) = v89;
  v68 = *(a2 + 100);
  if ((v68 & 0x4000) == 0)
  {
LABEL_246:
    if ((v68 & 0x8000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_262;
  }

LABEL_261:
  v90 = *(a2 + 93);
  *(this + 100) |= 0x4000u;
  *(this + 93) = v90;
  v68 = *(a2 + 100);
  if ((v68 & 0x8000) == 0)
  {
LABEL_247:
    if ((v68 & 0x10000) == 0)
    {
      return;
    }

    goto LABEL_267;
  }

LABEL_262:
  *(this + 100) |= 0x8000u;
  v91 = *(this + 47);
  if (!v91)
  {
    operator new();
  }

  v92 = *(a2 + 47);
  if (!v92)
  {
    v92 = *(proto::gpsd::Request::default_instance_ + 376);
  }

  proto::gnss::Emergency::SuplContext::MergeFrom(v91, v92);
  if ((*(a2 + 100) & 0x10000) != 0)
  {
LABEL_267:
    *(this + 100) |= 0x10000u;
    v93 = *(this + 48);
    if (!v93)
    {
      operator new();
    }

    v94 = *(a2 + 48);
    if (!v94)
    {
      v94 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    proto::gnss::Emergency::WlanMeasurementList::MergeFrom(v93, v94);
  }
}

void sub_245546328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void proto::gpsd::Request::~Request(proto::gpsd::Request *this)
{
  *this = &unk_285862088;
  proto::gpsd::Request::SharedDtor(this);
  v2 = *(this + 44);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 41);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  proto::gpsd::Request::~Request(this);

  JUMPOUT(0x245D6AEE0);
}

void *proto::gpsd::Request::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[32];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x245D6AEE0](v2, 0x1012C40EC159624);
  }

  if (proto::gpsd::Request::default_instance_ != v1)
  {
    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = v1[8];
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = v1[9];
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = v1[10];
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = v1[11];
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = v1[12];
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = v1[13];
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = v1[14];
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = v1[15];
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = v1[16];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v1[17];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v1[18];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v1[19];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = v1[20];
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = v1[21];
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = v1[22];
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = v1[23];
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = v1[24];
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = v1[25];
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = v1[26];
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = v1[27];
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v1[28];
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = v1[29];
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = v1[30];
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = v1[31];
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = v1[33];
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = v1[34];
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = v1[35];
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = v1[36];
    if (v36)
    {
      (*(*v36 + 8))(v36);
    }

    v37 = v1[37];
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    v38 = v1[39];
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v39 = v1[40];
    if (v39)
    {
      (*(*v39 + 8))(v39);
    }

    v40 = v1[43];
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }

    v41 = v1[47];
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }

    this = v1[48];
    if (this)
    {
      v42 = *(*this + 8);

      return v42();
    }
  }

  return this;
}

uint64_t proto::gpsd::Request::default_instance(proto::gpsd::Request *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = proto::gpsd::Request::default_instance_;
  if (!proto::gpsd::Request::default_instance_)
  {
    proto::gpsd::protobuf_AddDesc_GpsdProtocol_2eproto(0, a2, a3, a4);
    return proto::gpsd::Request::default_instance_;
  }

  return result;
}

uint64_t proto::gpsd::Request::Clear(uint64_t this)
{
  v1 = this;
  v2 = (this + 396);
  v3 = *(this + 396);
  if (v3)
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    if ((v3 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = proto::gpsd::InjectAssistancePosition::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v5 + 8);
        *(v5 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      v6 = *(v1 + 48);
      if (v6)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v6 + 8);
        *(v6 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = *(v1 + 56);
      if (v7)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v7 + 8);
        *(v7 + 36) = 0;
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v8 = *(v1 + 64);
      if (v8)
      {
        if (*(v8 + 36))
        {
          *(v8 + 8) = 0;
          *(v8 + 16) = 0;
          *(v8 + 24) = 0;
        }

        *(v8 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      v9 = *(v1 + 72);
      if (v9)
      {
        v10 = *(v9 + 76);
        if (v10)
        {
          *(v9 + 49) = 0u;
          *(v9 + 40) = 0u;
          *(v9 + 24) = 0u;
          *(v9 + 8) = 0u;
        }

        if ((v10 & 0xFF00) != 0)
        {
          *(v9 + 69) = 0;
          *(v9 + 65) = 0;
        }

        *(v9 + 76) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v11 = *(v1 + 80);
      if (v11)
      {
        if (*(v11 + 32))
        {
          *(v11 + 8) = 0;
          *(v11 + 16) = 0x400000000;
          *(v11 + 24) = 0;
        }

        *(v11 + 32) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v12 = *(v1 + 88);
      if (v12)
      {
        if (*(v12 + 24))
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 4;
        }

        *(v12 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(v1 + 96);
      if (v13)
      {
        if (*(v13 + 16))
        {
          *(v13 + 8) = 15;
        }

        *(v13 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(v1 + 104);
      if (v14)
      {
        if (*(v14 + 44))
        {
          *(v14 + 24) = 0u;
          *(v14 + 8) = 0u;
        }

        *(v14 + 44) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v15 = *(v1 + 112);
      if (v15)
      {
        if (*(v15 + 36))
        {
          *(v15 + 8) = 0;
          *(v15 + 16) = 0;
          *(v15 + 24) = 0;
        }

        *(v15 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      this = *(v1 + 120);
      if (this)
      {
        this = proto::gpsd::InjectAssistanceFile::Clear(this);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v16 = *(v1 + 128);
      if (v16)
      {
        if (*(v16 + 20))
        {
          v17 = *(v16 + 8);
          if (v17 != MEMORY[0x277D82C30])
          {
            if (*(v17 + 23) < 0)
            {
              **v17 = 0;
              *(v17 + 8) = 0;
            }

            else
            {
              *v17 = 0;
              *(v17 + 23) = 0;
            }
          }
        }

        *(v16 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      v18 = *(v1 + 136);
      if (v18)
      {
        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v18 + 8);
        *(v18 + 36) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      v19 = *(v1 + 144);
      if (v19)
      {
        if (*(v19 + 20))
        {
          *(v19 + 8) = 0;
        }

        *(v19 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      v20 = *(v1 + 152);
      if (v20)
      {
        if (*(v20 + 20))
        {
          *(v20 + 8) = 1;
          *(v20 + 9) = 0;
          *(v20 + 13) = 0;
        }

        *(v20 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      v21 = *(v1 + 160);
      if (v21)
      {
        if (*(v21 + 20))
        {
          *(v21 + 8) = 0;
        }

        *(v21 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      v22 = *(v1 + 168);
      if (v22)
      {
        if (*(v22 + 20))
        {
          *(v22 + 8) = 0;
          *(v22 + 12) = 0;
        }

        *(v22 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      v23 = *(v1 + 176);
      if (v23)
      {
        if (*(v23 + 20))
        {
          *(v23 + 8) = 0;
        }

        *(v23 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      v24 = *(v1 + 184);
      if (v24)
      {
        if (*(v24 + 16))
        {
          *(v24 + 8) = 0;
        }

        *(v24 + 16) = 0;
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      v25 = *(v1 + 192);
      if (v25)
      {
        if (*(v25 + 20))
        {
          v26 = *(v25 + 8);
          if (v26 != MEMORY[0x277D82C30])
          {
            if (*(v26 + 23) < 0)
            {
              **v26 = 0;
              *(v26 + 8) = 0;
            }

            else
            {
              *v26 = 0;
              *(v26 + 23) = 0;
            }
          }
        }

        *(v25 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      v27 = *(v1 + 200);
      if (v27)
      {
        if (*(v27 + 20))
        {
          v28 = *(v27 + 8);
          if (v28 != MEMORY[0x277D82C30])
          {
            if (*(v28 + 23) < 0)
            {
              **v28 = 0;
              *(v28 + 8) = 0;
            }

            else
            {
              *v28 = 0;
              *(v28 + 23) = 0;
            }
          }
        }

        *(v27 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = proto::gpsd::LtlInfo::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      v29 = *(v1 + 216);
      if (v29)
      {
        if (*(v29 + 24))
        {
          *(v29 + 16) = 0;
          *(v29 + 8) = 0;
        }

        *(v29 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v30 = *(v1 + 224);
      if (v30)
      {
        if (*(v30 + 24))
        {
          *(v30 + 8) = 0;
          *(v30 + 16) = 0;
        }

        *(v30 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v31 = *(v1 + 232);
      if (v31)
      {
        if (*(v31 + 16))
        {
          *(v31 + 8) = 0;
        }

        *(v31 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v32 = *(v1 + 240);
      if (v32)
      {
        if (*(v32 + 20))
        {
          v33 = *(v32 + 8);
          if (v33 != MEMORY[0x277D82C30])
          {
            if (*(v33 + 23) < 0)
            {
              **v33 = 0;
              *(v33 + 8) = 0;
            }

            else
            {
              *v33 = 0;
              *(v33 + 23) = 0;
            }
          }
        }

        *(v32 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      this = *(v1 + 248);
      if (this)
      {
        this = proto::gnss::Emergency::EmergConfig::Clear(this);
      }
    }
  }

  v34 = *(v1 + 400);
  if (v34)
  {
    if (v34)
    {
      v35 = *(v1 + 256);
      if (v35 != MEMORY[0x277D82C30])
      {
        if (*(v35 + 23) < 0)
        {
          **v35 = 0;
          *(v35 + 8) = 0;
        }

        else
        {
          *v35 = 0;
          *(v35 + 23) = 0;
        }
      }
    }

    v34 = *(v1 + 400);
    if ((v34 & 2) != 0)
    {
      v36 = *(v1 + 264);
      if (v36)
      {
        v37 = *(v36 + 80);
        if (v37)
        {
          *(v36 + 24) = 0u;
          *(v36 + 8) = 0u;
        }

        if ((v37 & 0xFF00) != 0)
        {
          *(v36 + 56) = 0u;
          *(v36 + 40) = 0u;
        }

        if ((v37 & 0xFF0000) != 0)
        {
          *(v36 + 72) = 0;
        }

        *(v36 + 80) = 0;
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 304) = 0;
    if ((v34 & 8) != 0)
    {
      this = *(v1 + 272);
      if (this)
      {
        this = proto::gnss::Emergency::GpsReferenceTime::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x10) != 0)
    {
      v38 = *(v1 + 280);
      if (v38)
      {
        v39 = *(v38 + 68);
        if (v39)
        {
          *(v38 + 24) = 0u;
          *(v38 + 8) = 0u;
        }

        if ((v39 & 0xFF00) != 0)
        {
          *(v38 + 40) = 0;
          *(v38 + 48) = 0;
          *(v38 + 56) = 0;
        }

        *(v38 + 68) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x20) != 0)
    {
      v40 = *(v1 + 288);
      if (v40)
      {
        if (*(v40 + 52))
        {
          *(v40 + 32) = 0;
          *(v40 + 40) = 0;
        }

        this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v40 + 8);
        *(v40 + 52) = 0;
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x40) != 0)
    {
      this = *(v1 + 296);
      if (this)
      {
        this = proto::gnss::Emergency::GpsAcqAssistance::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x80) != 0)
    {
      this = *(v1 + 312);
      if (this)
      {
        this = proto::gnss::Emergency::CellFTAssistance::Clear(this);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0xFF00) != 0)
  {
    if ((v34 & 0x100) != 0)
    {
      this = *(v1 + 320);
      if (this)
      {
        this = proto::gnss::Emergency::CplaneContext::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    if ((v34 & 0x400) != 0)
    {
      this = *(v1 + 344);
      if (this)
      {
        this = proto::gnss::Emergency::LocationId::Clear(this);
        v34 = *(v1 + 400);
      }
    }

    *(v1 + 308) = 0;
    *(v1 + 368) = 0;
    *(v1 + 372) = 0;
    if ((v34 & 0x8000) != 0)
    {
      this = *(v1 + 376);
      if (this)
      {
        this = proto::gnss::Emergency::SuplContext::Clear(this);
        v34 = *(v1 + 400);
      }
    }
  }

  if ((v34 & 0x10000) != 0)
  {
    v41 = *(v1 + 384);
    if (v41)
    {
      if (*(v41 + 40))
      {
        *(v41 + 32) = 0;
      }

      this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v41 + 8);
      *(v41 + 40) = 0;
    }
  }

  *(v1 + 336) = 0;
  *(v1 + 360) = 0;
  *v2 = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistancePosition::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      v1 = *(this + 8);
      if (v1)
      {
        v2 = *(v1 + 96);
        if (v2)
        {
          *(v1 + 56) = 0u;
          *(v1 + 40) = 0u;
          *(v1 + 24) = 0u;
          *(v1 + 8) = 0u;
        }

        if ((v2 & 0xFF00) != 0)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 0;
          *(v1 + 88) = 0;
        }

        *(v1 + 96) = 0;
      }
    }

    *(this + 16) = 0;
    *(this + 20) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t proto::gpsd::InjectAssistanceTime::Clear(uint64_t this)
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

uint64_t proto::gpsd::SetAssistancePressure::Clear(proto::gpsd::SetAssistancePressure *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceAccel::Clear(proto::gpsd::SetAssistanceAccel *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceGyro::Clear(proto::gpsd::SetAssistanceGyro *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::SetAssistanceDem::Clear(uint64_t this)
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

uint64_t proto::gpsd::SetAssistanceMapVector::Clear(uint64_t this)
{
  v1 = *(this + 76);
  if (v1)
  {
    *(this + 49) = 0u;
    *(this + 40) = 0u;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 69) = 0;
    *(this + 65) = 0;
  }

  *(this + 76) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMotionActivityContext::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0x400000000;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceMountState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 4;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceSignalEnvironment::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 15;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceSpeedConstraint::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t proto::gpsd::SetAssistanceAlongTrackVelocity::Clear(uint64_t this)
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

uint64_t proto::gpsd::InjectAssistanceFile::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    if (*(this + 28))
    {
      v1 = *(this + 8);
      if (v1 != MEMORY[0x277D82C30])
      {
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
    }

    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t proto::gpsd::InjectRtiFile::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
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
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::InjectSvidBlocklist::Clear(proto::gpsd::InjectSvidBlocklist *this)
{
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t proto::gpsd::DeleteGnssData::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetPvtmReport::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 1;
    *(this + 9) = 0;
    *(this + 13) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetNmeaHandler::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigSimulatorMode::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigEnableGnssConstellations::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigDutyCycling::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::TerminationImminent::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
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
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::ExitMessage::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
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
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::LtlInfo::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 56);
  if (v1)
  {
    *(this + 8) = 0;
    *(this + 12) = 0;
    *(this + 48) = 0;
    if ((v1 & 8) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        v3 = *(v2 + 56);
        if (v3)
        {
          *(v2 + 36) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
          *(v2 + 8) = 0;
          *(v2 + 32) = 0;
        }

        if ((v3 & 0xFF00) != 0)
        {
          *(v2 + 40) = 0;
          *(v2 + 48) = 0;
        }

        *(v2 + 56) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x10) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 52))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 24) = 0;
        *(v4 + 40) = 0;
        *(v4 + 52) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x20) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if ((*(v5 + 36) & 0x1FE) != 0)
        {
          *(v5 + 24) = 0;
        }

        *(v5 + 16) = 0;
        *(v5 + 36) = 0;
        v1 = *(this + 56);
      }
    }

    if ((v1 & 0x40) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 20))
        {
          *(v6 + 8) = 0;
        }

        *(v6 + 20) = 0;
      }
    }
  }

  *(this + 56) = 0;
  return this;
}

uint64_t proto::gpsd::StartContext::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 16) = 0;
    *(this + 8) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetThermalRiskState::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t proto::gpsd::SetConfigRfBandEnable::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t proto::gpsd::InjectRavenOrbitFile::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    v1 = *(this + 8);
    if (v1 != MEMORY[0x277D82C30])
    {
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
  }

  *(this + 20) = 0;
  return this;
}

uint64_t proto::gpsd::Request::MergePartialFromCodedStream(proto::gpsd::Request *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = (this + 304);
  v5 = (this + 308);
  v6 = (this + 372);
LABEL_2:
  while (2)
  {
    v7 = *(a2 + 1);
    if (v7 >= *(a2 + 2) || (TagFallback = *v7, (TagFallback & 0x80000000) != 0))
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
      *(a2 + 1) = v7 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v9 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v11 >= v10 || (v12 = *v11, v12 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v13 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v12;
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 99) |= 1u;
        if (v13 < v10 && *v13 == 16)
        {
          v18 = v13 + 1;
          *(a2 + 1) = v18;
          goto LABEL_122;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_122:
        if (v18 >= v10 || (v28 = *v18, v28 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v29 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v28;
          v29 = v18 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 99) |= 2u;
        if (v29 >= v10 || *v29 != 24)
        {
          continue;
        }

        v17 = v29 + 1;
        *(a2 + 1) = v17;
LABEL_130:
        v337[0] = 0;
        if (v17 >= v10 || (v30 = *v17, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337);
          if (!result)
          {
            return result;
          }

          v30 = v337[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (proto::gpsd::Request_Type_IsValid(v30))
        {
          *(this + 99) |= 4u;
          *(this + 5) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_140:
        *(this + 99) |= 8u;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v337[0] = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v33;
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
        if (!proto::gpsd::InjectAssistancePosition::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v36 = *(a2 + 14);
        v37 = __OFSUB__(v36, 1);
        v38 = v36 - 1;
        if (v38 < 0 == v37)
        {
          *(a2 + 14) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 42)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_154:
        *(this + 99) |= 0x10u;
        v40 = *(this + 4);
        if (!v40)
        {
          operator new();
        }

        v337[0] = 0;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v41;
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
        if (!proto::gpsd::InjectAssistanceTime::MergePartialFromCodedStream(v40, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v44 = *(a2 + 14);
        v37 = __OFSUB__(v44, 1);
        v45 = v44 - 1;
        if (v45 < 0 == v37)
        {
          *(a2 + 14) = v45;
        }

        v46 = *(a2 + 1);
        if (v46 >= *(a2 + 2) || *v46 != 50)
        {
          continue;
        }

        *(a2 + 1) = v46 + 1;
LABEL_168:
        *(this + 99) |= 0x20u;
        v47 = *(this + 5);
        if (!v47)
        {
          operator new();
        }

        v337[0] = 0;
        v48 = *(a2 + 1);
        if (v48 >= *(a2 + 2) || *v48 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v48;
          *(a2 + 1) = v48 + 1;
        }

        v49 = *(a2 + 14);
        v50 = *(a2 + 15);
        *(a2 + 14) = v49 + 1;
        if (v49 >= v50)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistancePressure::MergePartialFromCodedStream(v47, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v51 = *(a2 + 14);
        v37 = __OFSUB__(v51, 1);
        v52 = v51 - 1;
        if (v52 < 0 == v37)
        {
          *(a2 + 14) = v52;
        }

        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 != 58)
        {
          continue;
        }

        *(a2 + 1) = v53 + 1;
LABEL_182:
        *(this + 99) |= 0x40u;
        v54 = *(this + 6);
        if (!v54)
        {
          operator new();
        }

        v337[0] = 0;
        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v55;
          *(a2 + 1) = v55 + 1;
        }

        v56 = *(a2 + 14);
        v57 = *(a2 + 15);
        *(a2 + 14) = v56 + 1;
        if (v56 >= v57)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceAccel::MergePartialFromCodedStream(v54, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v58 = *(a2 + 14);
        v37 = __OFSUB__(v58, 1);
        v59 = v58 - 1;
        if (v59 < 0 == v37)
        {
          *(a2 + 14) = v59;
        }

        v60 = *(a2 + 1);
        if (v60 >= *(a2 + 2) || *v60 != 66)
        {
          continue;
        }

        *(a2 + 1) = v60 + 1;
LABEL_196:
        *(this + 99) |= 0x80u;
        v61 = *(this + 7);
        if (!v61)
        {
          operator new();
        }

        v337[0] = 0;
        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v62;
          *(a2 + 1) = v62 + 1;
        }

        v63 = *(a2 + 14);
        v64 = *(a2 + 15);
        *(a2 + 14) = v63 + 1;
        if (v63 >= v64)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceGyro::MergePartialFromCodedStream(v61, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v65 = *(a2 + 14);
        v37 = __OFSUB__(v65, 1);
        v66 = v65 - 1;
        if (v66 < 0 == v37)
        {
          *(a2 + 14) = v66;
        }

        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 != 74)
        {
          continue;
        }

        *(a2 + 1) = v67 + 1;
LABEL_210:
        *(this + 99) |= 0x100u;
        v68 = *(this + 8);
        if (!v68)
        {
          operator new();
        }

        v337[0] = 0;
        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v69;
          *(a2 + 1) = v69 + 1;
        }

        v70 = *(a2 + 14);
        v71 = *(a2 + 15);
        *(a2 + 14) = v70 + 1;
        if (v70 >= v71)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceDem::MergePartialFromCodedStream(v68, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v72 = *(a2 + 14);
        v37 = __OFSUB__(v72, 1);
        v73 = v72 - 1;
        if (v73 < 0 == v37)
        {
          *(a2 + 14) = v73;
        }

        v74 = *(a2 + 1);
        if (v74 >= *(a2 + 2) || *v74 != 82)
        {
          continue;
        }

        *(a2 + 1) = v74 + 1;
LABEL_224:
        *(this + 99) |= 0x200u;
        v75 = *(this + 9);
        if (!v75)
        {
          operator new();
        }

        v337[0] = 0;
        v76 = *(a2 + 1);
        if (v76 >= *(a2 + 2) || *v76 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v76;
          *(a2 + 1) = v76 + 1;
        }

        v77 = *(a2 + 14);
        v78 = *(a2 + 15);
        *(a2 + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceMapVector::MergePartialFromCodedStream(v75, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v79 = *(a2 + 14);
        v37 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v37)
        {
          *(a2 + 14) = v80;
        }

        v81 = *(a2 + 1);
        if (v81 >= *(a2 + 2) || *v81 != 90)
        {
          continue;
        }

        *(a2 + 1) = v81 + 1;
LABEL_238:
        *(this + 99) |= 0x400u;
        v82 = *(this + 10);
        if (!v82)
        {
          operator new();
        }

        v337[0] = 0;
        v83 = *(a2 + 1);
        if (v83 >= *(a2 + 2) || *v83 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v83;
          *(a2 + 1) = v83 + 1;
        }

        v84 = *(a2 + 14);
        v85 = *(a2 + 15);
        *(a2 + 14) = v84 + 1;
        if (v84 >= v85)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceMotionActivityContext::MergePartialFromCodedStream(v82, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v86 = *(a2 + 14);
        v37 = __OFSUB__(v86, 1);
        v87 = v86 - 1;
        if (v87 < 0 == v37)
        {
          *(a2 + 14) = v87;
        }

        v88 = *(a2 + 1);
        if (v88 >= *(a2 + 2) || *v88 != 98)
        {
          continue;
        }

        *(a2 + 1) = v88 + 1;
LABEL_252:
        *(this + 99) |= 0x800u;
        v89 = *(this + 11);
        if (!v89)
        {
          operator new();
        }

        v337[0] = 0;
        v90 = *(a2 + 1);
        if (v90 >= *(a2 + 2) || *v90 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v90;
          *(a2 + 1) = v90 + 1;
        }

        v91 = *(a2 + 14);
        v92 = *(a2 + 15);
        *(a2 + 14) = v91 + 1;
        if (v91 >= v92)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceMountState::MergePartialFromCodedStream(v89, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v93 = *(a2 + 14);
        v37 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v37)
        {
          *(a2 + 14) = v94;
        }

        v95 = *(a2 + 1);
        if (v95 >= *(a2 + 2) || *v95 != 106)
        {
          continue;
        }

        *(a2 + 1) = v95 + 1;
LABEL_266:
        *(this + 99) |= 0x1000u;
        v96 = *(this + 12);
        if (!v96)
        {
          operator new();
        }

        v337[0] = 0;
        v97 = *(a2 + 1);
        if (v97 >= *(a2 + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v97;
          *(a2 + 1) = v97 + 1;
        }

        v98 = *(a2 + 14);
        v99 = *(a2 + 15);
        *(a2 + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceSignalEnvironment::MergePartialFromCodedStream(v96, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v100 = *(a2 + 14);
        v37 = __OFSUB__(v100, 1);
        v101 = v100 - 1;
        if (v101 < 0 == v37)
        {
          *(a2 + 14) = v101;
        }

        v102 = *(a2 + 1);
        if (v102 >= *(a2 + 2) || *v102 != 114)
        {
          continue;
        }

        *(a2 + 1) = v102 + 1;
LABEL_280:
        *(this + 99) |= 0x2000u;
        v103 = *(this + 13);
        if (!v103)
        {
          operator new();
        }

        v337[0] = 0;
        v104 = *(a2 + 1);
        if (v104 >= *(a2 + 2) || *v104 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v104;
          *(a2 + 1) = v104 + 1;
        }

        v105 = *(a2 + 14);
        v106 = *(a2 + 15);
        *(a2 + 14) = v105 + 1;
        if (v105 >= v106)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceSpeedConstraint::MergePartialFromCodedStream(v103, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v107 = *(a2 + 14);
        v37 = __OFSUB__(v107, 1);
        v108 = v107 - 1;
        if (v108 < 0 == v37)
        {
          *(a2 + 14) = v108;
        }

        v109 = *(a2 + 1);
        if (v109 >= *(a2 + 2) || *v109 != 122)
        {
          continue;
        }

        *(a2 + 1) = v109 + 1;
LABEL_294:
        *(this + 99) |= 0x4000u;
        v110 = *(this + 14);
        if (!v110)
        {
          operator new();
        }

        v337[0] = 0;
        v111 = *(a2 + 1);
        if (v111 >= *(a2 + 2) || *v111 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v111;
          *(a2 + 1) = v111 + 1;
        }

        v112 = *(a2 + 14);
        v113 = *(a2 + 15);
        *(a2 + 14) = v112 + 1;
        if (v112 >= v113)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetAssistanceAlongTrackVelocity::MergePartialFromCodedStream(v110, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v114 = *(a2 + 14);
        v37 = __OFSUB__(v114, 1);
        v115 = v114 - 1;
        if (v115 < 0 == v37)
        {
          *(a2 + 14) = v115;
        }

        v116 = *(a2 + 1);
        if (*(a2 + 4) - v116 <= 1 || *v116 != 130 || v116[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v116 + 2;
LABEL_309:
        *(this + 99) |= 0x8000u;
        v117 = *(this + 15);
        if (!v117)
        {
          operator new();
        }

        v337[0] = 0;
        v118 = *(a2 + 1);
        if (v118 >= *(a2 + 2) || *v118 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v118;
          *(a2 + 1) = v118 + 1;
        }

        v119 = *(a2 + 14);
        v120 = *(a2 + 15);
        *(a2 + 14) = v119 + 1;
        if (v119 >= v120)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectAssistanceFile::MergePartialFromCodedStream(v117, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v121 = *(a2 + 14);
        v37 = __OFSUB__(v121, 1);
        v122 = v121 - 1;
        if (v122 < 0 == v37)
        {
          *(a2 + 14) = v122;
        }

        v123 = *(a2 + 1);
        if (*(a2 + 4) - v123 <= 1 || *v123 != 138 || v123[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v123 + 2;
LABEL_324:
        *(this + 99) |= 0x10000u;
        v124 = *(this + 16);
        if (!v124)
        {
          operator new();
        }

        v337[0] = 0;
        v125 = *(a2 + 1);
        if (v125 >= *(a2 + 2) || *v125 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v125;
          *(a2 + 1) = v125 + 1;
        }

        v126 = *(a2 + 14);
        v127 = *(a2 + 15);
        *(a2 + 14) = v126 + 1;
        if (v126 >= v127)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectRtiFile::MergePartialFromCodedStream(v124, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v128 = *(a2 + 14);
        v37 = __OFSUB__(v128, 1);
        v129 = v128 - 1;
        if (v129 < 0 == v37)
        {
          *(a2 + 14) = v129;
        }

        v130 = *(a2 + 1);
        if (*(a2 + 4) - v130 <= 1 || *v130 != 146 || v130[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v130 + 2;
LABEL_339:
        *(this + 99) |= 0x20000u;
        v131 = *(this + 17);
        if (!v131)
        {
          operator new();
        }

        v337[0] = 0;
        v132 = *(a2 + 1);
        if (v132 >= *(a2 + 2) || *v132 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v132;
          *(a2 + 1) = v132 + 1;
        }

        v133 = *(a2 + 14);
        v134 = *(a2 + 15);
        *(a2 + 14) = v133 + 1;
        if (v133 >= v134)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectSvidBlocklist::MergePartialFromCodedStream(v131, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v135 = *(a2 + 14);
        v37 = __OFSUB__(v135, 1);
        v136 = v135 - 1;
        if (v136 < 0 == v37)
        {
          *(a2 + 14) = v136;
        }

        v137 = *(a2 + 1);
        if (*(a2 + 4) - v137 <= 1 || *v137 != 154 || v137[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v137 + 2;
LABEL_354:
        *(this + 99) |= 0x40000u;
        v138 = *(this + 18);
        if (!v138)
        {
          operator new();
        }

        v337[0] = 0;
        v139 = *(a2 + 1);
        if (v139 >= *(a2 + 2) || *v139 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v139;
          *(a2 + 1) = v139 + 1;
        }

        v140 = *(a2 + 14);
        v141 = *(a2 + 15);
        *(a2 + 14) = v140 + 1;
        if (v140 >= v141)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::DeleteGnssData::MergePartialFromCodedStream(v138, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v142 = *(a2 + 14);
        v37 = __OFSUB__(v142, 1);
        v143 = v142 - 1;
        if (v143 < 0 == v37)
        {
          *(a2 + 14) = v143;
        }

        v144 = *(a2 + 1);
        if (*(a2 + 4) - v144 <= 1 || *v144 != 162 || v144[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v144 + 2;
LABEL_369:
        *(this + 99) |= 0x80000u;
        v145 = *(this + 19);
        if (!v145)
        {
          operator new();
        }

        v337[0] = 0;
        v146 = *(a2 + 1);
        if (v146 >= *(a2 + 2) || *v146 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v146;
          *(a2 + 1) = v146 + 1;
        }

        v147 = *(a2 + 14);
        v148 = *(a2 + 15);
        *(a2 + 14) = v147 + 1;
        if (v147 >= v148)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetPvtmReport::MergePartialFromCodedStream(v145, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v149 = *(a2 + 14);
        v37 = __OFSUB__(v149, 1);
        v150 = v149 - 1;
        if (v150 < 0 == v37)
        {
          *(a2 + 14) = v150;
        }

        v151 = *(a2 + 1);
        if (*(a2 + 4) - v151 <= 1 || *v151 != 170 || v151[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v151 + 2;
LABEL_384:
        *(this + 99) |= 0x100000u;
        v152 = *(this + 20);
        if (!v152)
        {
          operator new();
        }

        v337[0] = 0;
        v153 = *(a2 + 1);
        if (v153 >= *(a2 + 2) || *v153 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v153;
          *(a2 + 1) = v153 + 1;
        }

        v154 = *(a2 + 14);
        v155 = *(a2 + 15);
        *(a2 + 14) = v154 + 1;
        if (v154 >= v155)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetNmeaHandler::MergePartialFromCodedStream(v152, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v156 = *(a2 + 14);
        v37 = __OFSUB__(v156, 1);
        v157 = v156 - 1;
        if (v157 < 0 == v37)
        {
          *(a2 + 14) = v157;
        }

        v158 = *(a2 + 1);
        if (*(a2 + 4) - v158 <= 1 || *v158 != 178 || v158[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v158 + 2;
LABEL_399:
        *(this + 99) |= 0x200000u;
        v159 = *(this + 21);
        if (!v159)
        {
          operator new();
        }

        v337[0] = 0;
        v160 = *(a2 + 1);
        if (v160 >= *(a2 + 2) || *v160 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v160;
          *(a2 + 1) = v160 + 1;
        }

        v161 = *(a2 + 14);
        v162 = *(a2 + 15);
        *(a2 + 14) = v161 + 1;
        if (v161 >= v162)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigSimulatorMode::MergePartialFromCodedStream(v159, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v163 = *(a2 + 14);
        v37 = __OFSUB__(v163, 1);
        v164 = v163 - 1;
        if (v164 < 0 == v37)
        {
          *(a2 + 14) = v164;
        }

        v165 = *(a2 + 1);
        if (*(a2 + 4) - v165 <= 1 || *v165 != 186 || v165[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v165 + 2;
LABEL_414:
        *(this + 99) |= 0x400000u;
        v166 = *(this + 22);
        if (!v166)
        {
          operator new();
        }

        v337[0] = 0;
        v167 = *(a2 + 1);
        if (v167 >= *(a2 + 2) || *v167 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v167;
          *(a2 + 1) = v167 + 1;
        }

        v168 = *(a2 + 14);
        v169 = *(a2 + 15);
        *(a2 + 14) = v168 + 1;
        if (v168 >= v169)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigEnableGnssConstellations::MergePartialFromCodedStream(v166, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v170 = *(a2 + 14);
        v37 = __OFSUB__(v170, 1);
        v171 = v170 - 1;
        if (v171 < 0 == v37)
        {
          *(a2 + 14) = v171;
        }

        v172 = *(a2 + 1);
        if (*(a2 + 4) - v172 <= 1 || *v172 != 194 || v172[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v172 + 2;
LABEL_429:
        *(this + 99) |= 0x800000u;
        v173 = *(this + 23);
        if (!v173)
        {
          operator new();
        }

        v337[0] = 0;
        v174 = *(a2 + 1);
        if (v174 >= *(a2 + 2) || *v174 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v174;
          *(a2 + 1) = v174 + 1;
        }

        v175 = *(a2 + 14);
        v176 = *(a2 + 15);
        *(a2 + 14) = v175 + 1;
        if (v175 >= v176)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigDutyCycling::MergePartialFromCodedStream(v173, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v177 = *(a2 + 14);
        v37 = __OFSUB__(v177, 1);
        v178 = v177 - 1;
        if (v178 < 0 == v37)
        {
          *(a2 + 14) = v178;
        }

        v179 = *(a2 + 1);
        if (*(a2 + 4) - v179 <= 1 || *v179 != 202 || v179[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v179 + 2;
LABEL_444:
        *(this + 99) |= 0x1000000u;
        v180 = *(this + 24);
        if (!v180)
        {
          operator new();
        }

        v337[0] = 0;
        v181 = *(a2 + 1);
        if (v181 >= *(a2 + 2) || *v181 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v181;
          *(a2 + 1) = v181 + 1;
        }

        v182 = *(a2 + 14);
        v183 = *(a2 + 15);
        *(a2 + 14) = v182 + 1;
        if (v182 >= v183)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::TerminationImminent::MergePartialFromCodedStream(v180, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v184 = *(a2 + 14);
        v37 = __OFSUB__(v184, 1);
        v185 = v184 - 1;
        if (v185 < 0 == v37)
        {
          *(a2 + 14) = v185;
        }

        v186 = *(a2 + 1);
        if (*(a2 + 4) - v186 <= 1 || *v186 != 210 || v186[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v186 + 2;
LABEL_459:
        *(this + 99) |= 0x2000000u;
        v187 = *(this + 25);
        if (!v187)
        {
          operator new();
        }

        v337[0] = 0;
        v188 = *(a2 + 1);
        if (v188 >= *(a2 + 2) || *v188 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v188;
          *(a2 + 1) = v188 + 1;
        }

        v189 = *(a2 + 14);
        v190 = *(a2 + 15);
        *(a2 + 14) = v189 + 1;
        if (v189 >= v190)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::ExitMessage::MergePartialFromCodedStream(v187, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v191 = *(a2 + 14);
        v37 = __OFSUB__(v191, 1);
        v192 = v191 - 1;
        if (v192 < 0 == v37)
        {
          *(a2 + 14) = v192;
        }

        v193 = *(a2 + 1);
        if (*(a2 + 4) - v193 <= 1 || *v193 != 218 || v193[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v193 + 2;
LABEL_474:
        *(this + 99) |= 0x4000000u;
        v194 = *(this + 26);
        if (!v194)
        {
          operator new();
        }

        v337[0] = 0;
        v195 = *(a2 + 1);
        if (v195 >= *(a2 + 2) || *v195 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v195;
          *(a2 + 1) = v195 + 1;
        }

        v196 = *(a2 + 14);
        v197 = *(a2 + 15);
        *(a2 + 14) = v196 + 1;
        if (v196 >= v197)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::LtlInfo::MergePartialFromCodedStream(v194, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v198 = *(a2 + 14);
        v37 = __OFSUB__(v198, 1);
        v199 = v198 - 1;
        if (v199 < 0 == v37)
        {
          *(a2 + 14) = v199;
        }

        v200 = *(a2 + 1);
        if (*(a2 + 4) - v200 <= 1 || *v200 != 226 || v200[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v200 + 2;
LABEL_489:
        *(this + 99) |= 0x8000000u;
        v201 = *(this + 27);
        if (!v201)
        {
          operator new();
        }

        v337[0] = 0;
        v202 = *(a2 + 1);
        if (v202 >= *(a2 + 2) || *v202 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v202;
          *(a2 + 1) = v202 + 1;
        }

        v203 = *(a2 + 14);
        v204 = *(a2 + 15);
        *(a2 + 14) = v203 + 1;
        if (v203 >= v204)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::StartContext::MergePartialFromCodedStream(v201, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v205 = *(a2 + 14);
        v37 = __OFSUB__(v205, 1);
        v206 = v205 - 1;
        if (v206 < 0 == v37)
        {
          *(a2 + 14) = v206;
        }

        v207 = *(a2 + 1);
        if (*(a2 + 4) - v207 <= 1 || *v207 != 242 || v207[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v207 + 2;
LABEL_504:
        *(this + 99) |= 0x10000000u;
        v208 = *(this + 28);
        if (!v208)
        {
          operator new();
        }

        v337[0] = 0;
        v209 = *(a2 + 1);
        if (v209 >= *(a2 + 2) || *v209 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v209;
          *(a2 + 1) = v209 + 1;
        }

        v210 = *(a2 + 14);
        v211 = *(a2 + 15);
        *(a2 + 14) = v210 + 1;
        if (v210 >= v211)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetThermalRiskState::MergePartialFromCodedStream(v208, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v212 = *(a2 + 14);
        v37 = __OFSUB__(v212, 1);
        v213 = v212 - 1;
        if (v213 < 0 == v37)
        {
          *(a2 + 14) = v213;
        }

        v214 = *(a2 + 1);
        if (*(a2 + 4) - v214 <= 1 || *v214 != 250 || v214[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v214 + 2;
LABEL_519:
        *(this + 99) |= 0x20000000u;
        v215 = *(this + 29);
        if (!v215)
        {
          operator new();
        }

        v337[0] = 0;
        v216 = *(a2 + 1);
        if (v216 >= *(a2 + 2) || *v216 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v216;
          *(a2 + 1) = v216 + 1;
        }

        v217 = *(a2 + 14);
        v218 = *(a2 + 15);
        *(a2 + 14) = v217 + 1;
        if (v217 >= v218)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::SetConfigRfBandEnable::MergePartialFromCodedStream(v215, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v219 = *(a2 + 14);
        v37 = __OFSUB__(v219, 1);
        v220 = v219 - 1;
        if (v220 < 0 == v37)
        {
          *(a2 + 14) = v220;
        }

        v221 = *(a2 + 1);
        if (*(a2 + 4) - v221 <= 1 || *v221 != 130 || v221[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v221 + 2;
LABEL_534:
        *(this + 99) |= 0x40000000u;
        v222 = *(this + 30);
        if (!v222)
        {
          operator new();
        }

        v337[0] = 0;
        v223 = *(a2 + 1);
        if (v223 >= *(a2 + 2) || *v223 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v223;
          *(a2 + 1) = v223 + 1;
        }

        v224 = *(a2 + 14);
        v225 = *(a2 + 15);
        *(a2 + 14) = v224 + 1;
        if (v224 >= v225)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gpsd::InjectRavenOrbitFile::MergePartialFromCodedStream(v222, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v226 = *(a2 + 14);
        v37 = __OFSUB__(v226, 1);
        v227 = v226 - 1;
        if (v227 < 0 == v37)
        {
          *(a2 + 14) = v227;
        }

        v228 = *(a2 + 1);
        if (*(a2 + 4) - v228 <= 1 || *v228 != 146 || v228[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v228 + 2;
LABEL_549:
        *(this + 99) |= 0x80000000;
        v229 = *(this + 31);
        if (!v229)
        {
          operator new();
        }

        v337[0] = 0;
        v230 = *(a2 + 1);
        if (v230 >= *(a2 + 2) || *v230 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v230;
          *(a2 + 1) = v230 + 1;
        }

        v231 = *(a2 + 14);
        v232 = *(a2 + 15);
        *(a2 + 14) = v231 + 1;
        if (v231 >= v232)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::EmergConfig::MergePartialFromCodedStream(v229, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v233 = *(a2 + 14);
        v37 = __OFSUB__(v233, 1);
        v234 = v233 - 1;
        if (v234 < 0 == v37)
        {
          *(a2 + 14) = v234;
        }

        v235 = *(a2 + 1);
        if (*(a2 + 4) - v235 <= 1 || *v235 != 154 || v235[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v235 + 2;
LABEL_564:
        *(this + 100) |= 1u;
        if (*(this + 32) == MEMORY[0x277D82C30])
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v236 = *(a2 + 1);
        if (*(a2 + 4) - v236 < 2 || *v236 != 226 || v236[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v236 + 2;
LABEL_571:
        *(this + 100) |= 2u;
        v237 = *(this + 33);
        if (!v237)
        {
          operator new();
        }

        v337[0] = 0;
        v238 = *(a2 + 1);
        if (v238 >= *(a2 + 2) || *v238 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v238;
          *(a2 + 1) = v238 + 1;
        }

        v239 = *(a2 + 14);
        v240 = *(a2 + 15);
        *(a2 + 14) = v239 + 1;
        if (v239 >= v240)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::PositionRequest::MergePartialFromCodedStream(v237, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v241 = *(a2 + 14);
        v37 = __OFSUB__(v241, 1);
        v242 = v241 - 1;
        if (v242 < 0 == v37)
        {
          *(a2 + 14) = v242;
        }

        v243 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v243 <= 1 || *v243 != 232 || v243[1] != 3)
        {
          continue;
        }

        v22 = (v243 + 2);
        *(a2 + 1) = v22;
LABEL_586:
        if (v22 >= v21 || (v244 = *v22, (v244 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v4);
          if (!result)
          {
            return result;
          }

          v245 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          *v4 = v244;
          v245 = (v22 + 1);
          *(a2 + 1) = v245;
        }

        v23 = *(this + 100) | 4;
        *(this + 100) = v23;
        if (v21 - v245 < 2 || *v245 != 242 || v245[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v245 + 2;
LABEL_595:
        *(this + 100) = v23 | 8;
        v246 = *(this + 34);
        if (!v246)
        {
          operator new();
        }

        v337[0] = 0;
        v247 = *(a2 + 1);
        if (v247 >= *(a2 + 2) || *v247 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v247;
          *(a2 + 1) = v247 + 1;
        }

        v248 = *(a2 + 14);
        v249 = *(a2 + 15);
        *(a2 + 14) = v248 + 1;
        if (v248 >= v249)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::GpsReferenceTime::MergePartialFromCodedStream(v246, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v250 = *(a2 + 14);
        v37 = __OFSUB__(v250, 1);
        v251 = v250 - 1;
        if (v251 < 0 == v37)
        {
          *(a2 + 14) = v251;
        }

        v252 = *(a2 + 1);
        if (*(a2 + 4) - v252 <= 1 || *v252 != 250 || v252[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v252 + 2;
LABEL_610:
        *(this + 100) |= 0x10u;
        v253 = *(this + 35);
        if (!v253)
        {
          operator new();
        }

        v337[0] = 0;
        v254 = *(a2 + 1);
        if (v254 >= *(a2 + 2) || *v254 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v254;
          *(a2 + 1) = v254 + 1;
        }

        v255 = *(a2 + 14);
        v256 = *(a2 + 15);
        *(a2 + 14) = v255 + 1;
        if (v255 >= v256)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::ReferenceLocation::MergePartialFromCodedStream(v253, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v257 = *(a2 + 14);
        v37 = __OFSUB__(v257, 1);
        v258 = v257 - 1;
        if (v258 < 0 == v37)
        {
          *(a2 + 14) = v258;
        }

        v259 = *(a2 + 1);
        if (*(a2 + 4) - v259 <= 1 || *v259 != 130 || v259[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v259 + 2;
LABEL_625:
        *(this + 100) |= 0x20u;
        v260 = *(this + 36);
        if (!v260)
        {
          operator new();
        }

        v337[0] = 0;
        v261 = *(a2 + 1);
        if (v261 >= *(a2 + 2) || *v261 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v261;
          *(a2 + 1) = v261 + 1;
        }

        v262 = *(a2 + 14);
        v263 = *(a2 + 15);
        *(a2 + 14) = v262 + 1;
        if (v262 >= v263)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::GpsNavigationModel::MergePartialFromCodedStream(v260, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v264 = *(a2 + 14);
        v37 = __OFSUB__(v264, 1);
        v265 = v264 - 1;
        if (v265 < 0 == v37)
        {
          *(a2 + 14) = v265;
        }

        v266 = *(a2 + 1);
        if (*(a2 + 4) - v266 <= 1 || *v266 != 138 || v266[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v266 + 2;
LABEL_640:
        *(this + 100) |= 0x40u;
        v267 = *(this + 37);
        if (!v267)
        {
          operator new();
        }

        v337[0] = 0;
        v268 = *(a2 + 1);
        if (v268 >= *(a2 + 2) || *v268 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v268;
          *(a2 + 1) = v268 + 1;
        }

        v269 = *(a2 + 14);
        v270 = *(a2 + 15);
        *(a2 + 14) = v269 + 1;
        if (v269 >= v270)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::GpsAcqAssistance::MergePartialFromCodedStream(v267, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v271 = *(a2 + 14);
        v37 = __OFSUB__(v271, 1);
        v272 = v271 - 1;
        if (v272 < 0 == v37)
        {
          *(a2 + 14) = v272;
        }

        v273 = *(a2 + 1);
        if (*(a2 + 4) - v273 <= 1 || *v273 != 146 || v273[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v273 + 2;
LABEL_655:
        *(this + 100) |= 0x80u;
        v274 = *(this + 39);
        if (!v274)
        {
          operator new();
        }

        v337[0] = 0;
        v275 = *(a2 + 1);
        if (v275 >= *(a2 + 2) || *v275 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v275;
          *(a2 + 1) = v275 + 1;
        }

        v276 = *(a2 + 14);
        v277 = *(a2 + 15);
        *(a2 + 14) = v276 + 1;
        if (v276 >= v277)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::CellFTAssistance::MergePartialFromCodedStream(v274, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v278 = *(a2 + 14);
        v37 = __OFSUB__(v278, 1);
        v279 = v278 - 1;
        if (v279 < 0 == v37)
        {
          *(a2 + 14) = v279;
        }

        v280 = *(a2 + 1);
        if (*(a2 + 4) - v280 <= 1 || *v280 != 154 || v280[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v280 + 2;
LABEL_670:
        *(this + 100) |= 0x100u;
        v281 = *(this + 40);
        if (!v281)
        {
          operator new();
        }

        v337[0] = 0;
        v282 = *(a2 + 1);
        if (v282 >= *(a2 + 2) || *v282 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
          {
            return 0;
          }
        }

        else
        {
          v337[0] = *v282;
          *(a2 + 1) = v282 + 1;
        }

        v283 = *(a2 + 14);
        v284 = *(a2 + 15);
        *(a2 + 14) = v283 + 1;
        if (v283 >= v284)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!proto::gnss::Emergency::CplaneContext::MergePartialFromCodedStream(v281, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v285 = *(a2 + 14);
        v37 = __OFSUB__(v285, 1);
        v286 = v285 - 1;
        if (v286 < 0 == v37)
        {
          *(a2 + 14) = v286;
        }

        v287 = *(a2 + 1);
        v26 = *(a2 + 2);
        if (v26 - v287 > 1)
        {
          v288 = *v287;
          goto LABEL_683;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_130;
      case 4u:
        if (v9 == 2)
        {
          goto LABEL_140;
        }

        goto LABEL_111;
      case 5u:
        if (v9 == 2)
        {
          goto LABEL_154;
        }

        goto LABEL_111;
      case 6u:
        if (v9 == 2)
        {
          goto LABEL_168;
        }

        goto LABEL_111;
      case 7u:
        if (v9 == 2)
        {
          goto LABEL_182;
        }

        goto LABEL_111;
      case 8u:
        if (v9 == 2)
        {
          goto LABEL_196;
        }

        goto LABEL_111;
      case 9u:
        if (v9 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_111;
      case 0xAu:
        if (v9 == 2)
        {
          goto LABEL_224;
        }

        goto LABEL_111;
      case 0xBu:
        if (v9 == 2)
        {
          goto LABEL_238;
        }

        goto LABEL_111;
      case 0xCu:
        if (v9 == 2)
        {
          goto LABEL_252;
        }

        goto LABEL_111;
      case 0xDu:
        if (v9 == 2)
        {
          goto LABEL_266;
        }

        goto LABEL_111;
      case 0xEu:
        if (v9 == 2)
        {
          goto LABEL_280;
        }

        goto LABEL_111;
      case 0xFu:
        if (v9 == 2)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      case 0x10u:
        if (v9 == 2)
        {
          goto LABEL_309;
        }

        goto LABEL_111;
      case 0x11u:
        if (v9 == 2)
        {
          goto LABEL_324;
        }

        goto LABEL_111;
      case 0x12u:
        if (v9 == 2)
        {
          goto LABEL_339;
        }

        goto LABEL_111;
      case 0x13u:
        if (v9 == 2)
        {
          goto LABEL_354;
        }

        goto LABEL_111;
      case 0x14u:
        if (v9 == 2)
        {
          goto LABEL_369;
        }

        goto LABEL_111;
      case 0x15u:
        if (v9 == 2)
        {
          goto LABEL_384;
        }

        goto LABEL_111;
      case 0x16u:
        if (v9 == 2)
        {
          goto LABEL_399;
        }

        goto LABEL_111;
      case 0x17u:
        if (v9 == 2)
        {
          goto LABEL_414;
        }

        goto LABEL_111;
      case 0x18u:
        if (v9 == 2)
        {
          goto LABEL_429;
        }

        goto LABEL_111;
      case 0x19u:
        if (v9 == 2)
        {
          goto LABEL_444;
        }

        goto LABEL_111;
      case 0x1Au:
        if (v9 == 2)
        {
          goto LABEL_459;
        }

        goto LABEL_111;
      case 0x1Bu:
        if (v9 == 2)
        {
          goto LABEL_474;
        }

        goto LABEL_111;
      case 0x1Cu:
        if (v9 == 2)
        {
          goto LABEL_489;
        }

        goto LABEL_111;
      case 0x1Eu:
        if (v9 == 2)
        {
          goto LABEL_504;
        }

        goto LABEL_111;
      case 0x1Fu:
        if (v9 == 2)
        {
          goto LABEL_519;
        }

        goto LABEL_111;
      case 0x20u:
        if (v9 == 2)
        {
          goto LABEL_534;
        }

        goto LABEL_111;
      case 0x32u:
        if (v9 == 2)
        {
          goto LABEL_549;
        }

        goto LABEL_111;
      case 0x33u:
        if (v9 == 2)
        {
          goto LABEL_564;
        }

        goto LABEL_111;
      case 0x3Cu:
        if (v9 == 2)
        {
          goto LABEL_571;
        }

        goto LABEL_111;
      case 0x3Du:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_586;
      case 0x3Eu:
        if (v9 != 2)
        {
          goto LABEL_111;
        }

        v23 = *(this + 100);
        goto LABEL_595;
      case 0x3Fu:
        if (v9 == 2)
        {
          goto LABEL_610;
        }

        goto LABEL_111;
      case 0x40u:
        if (v9 == 2)
        {
          goto LABEL_625;
        }

        goto LABEL_111;
      case 0x41u:
        if (v9 == 2)
        {
          goto LABEL_640;
        }

        goto LABEL_111;
      case 0x42u:
        if (v9 == 2)
        {
          goto LABEL_655;
        }

        goto LABEL_111;
      case 0x43u:
        if (v9 == 2)
        {
          goto LABEL_670;
        }

        goto LABEL_111;
      case 0x46u:
        if ((TagFallback & 7) == 0)
        {
          v27 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (1)
          {
            v336 = 0;
            if (v27 >= v26 || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
              {
                return 0;
              }
            }

            else
            {
              v336 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v289 = *(this + 84);
            if (v289 == *(this + 85))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 41, v289 + 1);
              v289 = *(this + 84);
            }

            v290 = v336;
            v291 = *(this + 41);
            *(this + 84) = v289 + 1;
            *(v291 + 4 * v289) = v290;
            v292 = *(this + 85) - *(this + 84);
            if (v292 >= 1)
            {
              v293 = v292 + 1;
              do
              {
                v294 = *(a2 + 1);
                v295 = *(a2 + 2);
                if (v295 - v294 < 2 || *v294 != 176 || v294[1] != 4)
                {
                  break;
                }

                *(a2 + 1) = v294 + 2;
                if ((v294 + 2) >= v295 || v294[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                  {
                    return 0;
                  }
                }

                else
                {
                  v336 = v294[2];
                  *(a2 + 1) = v294 + 3;
                }

                v296 = *(this + 84);
                if (v296 >= *(this + 85))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                  v296 = *(this + 84);
                }

                v297 = v336;
                v298 = *(this + 41);
                *(this + 84) = v296 + 1;
                *(v298 + 4 * v296) = v297;
                --v293;
              }

              while (v293 > 1);
            }

LABEL_704:
            v287 = *(a2 + 1);
            v26 = *(a2 + 2);
            if (v26 - v287 < 2)
            {
              goto LABEL_2;
            }

            v288 = *v287;
            if (v288 == 186)
            {
              break;
            }

LABEL_683:
            if (v288 != 176 || v287[1] != 4)
            {
              goto LABEL_2;
            }

            v27 = (v287 + 2);
            *(a2 + 1) = v27;
          }

          if (v287[1] == 4)
          {
            *(a2 + 1) = v287 + 2;
LABEL_708:
            *(this + 100) |= 0x400u;
            v299 = *(this + 43);
            if (!v299)
            {
              operator new();
            }

            v337[0] = 0;
            v300 = *(a2 + 1);
            if (v300 >= *(a2 + 2) || *v300 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
              {
                return 0;
              }
            }

            else
            {
              v337[0] = *v300;
              *(a2 + 1) = v300 + 1;
            }

            v301 = *(a2 + 14);
            v302 = *(a2 + 15);
            *(a2 + 14) = v301 + 1;
            if (v301 >= v302)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!proto::gnss::Emergency::LocationId::MergePartialFromCodedStream(v299, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v303 = *(a2 + 14);
            v37 = __OFSUB__(v303, 1);
            v304 = v303 - 1;
            if (v304 < 0 == v37)
            {
              *(a2 + 14) = v304;
            }

            v305 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v14 - v305 > 1 && *v305 == 192 && v305[1] == 4)
            {
              v15 = (v305 + 2);
              *(a2 + 1) = v15;
LABEL_723:
              if (v15 >= v14 || (v306 = *v15, (v306 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v5);
                if (!result)
                {
                  return result;
                }

                v307 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                *v5 = v306;
                v307 = (v15 + 1);
                *(a2 + 1) = v307;
              }

              *(this + 100) |= 0x800u;
              if (v14 - v307 >= 2)
              {
                v308 = *v307;
                goto LABEL_730;
              }
            }
          }

          continue;
        }

        if (v9 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 328);
          if (result)
          {
            goto LABEL_704;
          }

          return result;
        }

        goto LABEL_111;
      case 0x47u:
        if (v9 == 2)
        {
          goto LABEL_708;
        }

        goto LABEL_111;
      case 0x48u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_723;
      case 0x49u:
        if ((TagFallback & 7) == 0)
        {
          v25 = *(a2 + 1);
          v14 = *(a2 + 2);
          while (1)
          {
            v336 = 0;
            if (v25 >= v14 || *v25 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
              {
                return 0;
              }
            }

            else
            {
              v336 = *v25;
              *(a2 + 1) = v25 + 1;
            }

            v309 = *(this + 90);
            if (v309 == *(this + 91))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<int>::Reserve(this + 44, v309 + 1);
              v309 = *(this + 90);
            }

            v310 = v336;
            v311 = *(this + 44);
            *(this + 90) = v309 + 1;
            *(v311 + 4 * v309) = v310;
            v312 = *(this + 91) - *(this + 90);
            if (v312 >= 1)
            {
              v313 = v312 + 1;
              do
              {
                v314 = *(a2 + 1);
                v315 = *(a2 + 2);
                if (v315 - v314 < 2 || *v314 != 200 || v314[1] != 4)
                {
                  break;
                }

                *(a2 + 1) = v314 + 2;
                if ((v314 + 2) >= v315 || v314[2] < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v336))
                  {
                    return 0;
                  }
                }

                else
                {
                  v336 = v314[2];
                  *(a2 + 1) = v314 + 3;
                }

                v316 = *(this + 90);
                if (v316 >= *(this + 91))
                {
                  wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                  wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v337);
                  v316 = *(this + 90);
                }

                v317 = v336;
                v318 = *(this + 44);
                *(this + 90) = v316 + 1;
                *(v318 + 4 * v316) = v317;
                --v313;
              }

              while (v313 > 1);
            }

LABEL_751:
            v307 = *(a2 + 1);
            v14 = *(a2 + 2);
            if (v14 - v307 < 2)
            {
              goto LABEL_2;
            }

            v308 = *v307;
            if (v308 == 208)
            {
              break;
            }

LABEL_730:
            if (v308 != 200 || v307[1] != 4)
            {
              goto LABEL_2;
            }

            v25 = (v307 + 2);
            *(a2 + 1) = v25;
          }

          if (v307[1] == 4)
          {
            v19 = (v307 + 2);
            *(a2 + 1) = v19;
LABEL_755:
            v337[0] = 0;
            if (v19 >= v14 || (v319 = *v19, (v319 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337);
              if (!result)
              {
                return result;
              }

              v319 = v337[0];
              v320 = *(a2 + 1);
              v14 = *(a2 + 2);
            }

            else
            {
              v320 = (v19 + 1);
              *(a2 + 1) = v320;
            }

            *(this + 368) = v319 != 0;
            *(this + 100) |= 0x2000u;
            if (v14 - v320 >= 2 && *v320 == 216 && v320[1] == 4)
            {
              v20 = (v320 + 2);
              *(a2 + 1) = v20;
LABEL_764:
              if (v20 >= v14 || (v321 = *v20, (v321 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v6);
                if (!result)
                {
                  return result;
                }

                v322 = *(a2 + 1);
                v14 = *(a2 + 2);
              }

              else
              {
                *v6 = v321;
                v322 = (v20 + 1);
                *(a2 + 1) = v322;
              }

              v24 = *(this + 100) | 0x4000;
              *(this + 100) = v24;
              if (v14 - v322 >= 2 && *v322 == 226 && v322[1] == 4)
              {
                *(a2 + 1) = v322 + 2;
LABEL_773:
                *(this + 100) = v24 | 0x8000;
                v323 = *(this + 47);
                if (!v323)
                {
                  operator new();
                }

                v337[0] = 0;
                v324 = *(a2 + 1);
                if (v324 >= *(a2 + 2) || *v324 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
                  {
                    return 0;
                  }
                }

                else
                {
                  v337[0] = *v324;
                  *(a2 + 1) = v324 + 1;
                }

                v325 = *(a2 + 14);
                v326 = *(a2 + 15);
                *(a2 + 14) = v325 + 1;
                if (v325 >= v326)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!proto::gnss::Emergency::SuplContext::MergePartialFromCodedStream(v323, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v327 = *(a2 + 14);
                v37 = __OFSUB__(v327, 1);
                v328 = v327 - 1;
                if (v328 < 0 == v37)
                {
                  *(a2 + 14) = v328;
                }

                v329 = *(a2 + 1);
                if (*(a2 + 4) - v329 > 1 && *v329 == 234 && v329[1] == 4)
                {
                  *(a2 + 1) = v329 + 2;
LABEL_788:
                  *(this + 100) |= 0x10000u;
                  v330 = *(this + 48);
                  if (!v330)
                  {
                    operator new();
                  }

                  v337[0] = 0;
                  v331 = *(a2 + 1);
                  if (v331 >= *(a2 + 2) || *v331 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v337))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v337[0] = *v331;
                    *(a2 + 1) = v331 + 1;
                  }

                  v332 = *(a2 + 14);
                  v333 = *(a2 + 15);
                  *(a2 + 14) = v332 + 1;
                  if (v332 >= v333)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!proto::gnss::Emergency::WlanMeasurementList::MergePartialFromCodedStream(v330, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v334 = *(a2 + 14);
                  v37 = __OFSUB__(v334, 1);
                  v335 = v334 - 1;
                  if (v335 < 0 == v37)
                  {
                    *(a2 + 14) = v335;
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
          }

          continue;
        }

        if (v9 != 2)
        {
LABEL_111:
          if (v9 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)13>(a2, this + 352);
        if (result)
        {
          goto LABEL_751;
        }

        return result;
      case 0x4Au:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v19 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_755;
      case 0x4Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_111;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_764;
      case 0x4Cu:
        if (v9 != 2)
        {
          goto LABEL_111;
        }

        v24 = *(this + 100);
        goto LABEL_773;
      case 0x4Du:
        if (v9 == 2)
        {
          goto LABEL_788;
        }

        goto LABEL_111;
      default:
        goto LABEL_111;
    }
  }
}

void sub_24554AD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t proto::gpsd::Request::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 396);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 396);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_37:
  v7 = *(v5 + 24);
  if (!v7)
  {
    v7 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v7, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  v8 = *(v5 + 32);
  if (!v8)
  {
    v8 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_43:
  v9 = *(v5 + 40);
  if (!v9)
  {
    v9 = *(proto::gpsd::Request::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_46:
  v10 = *(v5 + 48);
  if (!v10)
  {
    v10 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_52;
  }

LABEL_49:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(proto::gpsd::Request::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_52:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(proto::gpsd::Request::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_55:
  v13 = *(v5 + 72);
  if (!v13)
  {
    v13 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_58:
  v14 = *(v5 + 80);
  if (!v14)
  {
    v14 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_61:
  v15 = *(v5 + 88);
  if (!v15)
  {
    v15 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_64:
  v16 = *(v5 + 96);
  if (!v16)
  {
    v16 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_67:
  v17 = *(v5 + 104);
  if (!v17)
  {
    v17 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_73;
  }

LABEL_70:
  v18 = *(v5 + 112);
  if (!v18)
  {
    v18 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_76;
  }

LABEL_73:
  v19 = *(v5 + 120);
  if (!v19)
  {
    v19 = *(proto::gpsd::Request::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_76:
  v20 = *(v5 + 128);
  if (!v20)
  {
    v20 = *(proto::gpsd::Request::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  v21 = *(v5 + 136);
  if (!v21)
  {
    v21 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_85;
  }

LABEL_82:
  v22 = *(v5 + 144);
  if (!v22)
  {
    v22 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_88;
  }

LABEL_85:
  v23 = *(v5 + 152);
  if (!v23)
  {
    v23 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_91;
  }

LABEL_88:
  v24 = *(v5 + 160);
  if (!v24)
  {
    v24 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_94;
  }

LABEL_91:
  v25 = *(v5 + 168);
  if (!v25)
  {
    v25 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_97;
  }

LABEL_94:
  v26 = *(v5 + 176);
  if (!v26)
  {
    v26 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_100;
  }

LABEL_97:
  v27 = *(v5 + 184);
  if (!v27)
  {
    v27 = *(proto::gpsd::Request::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_103;
  }

LABEL_100:
  v28 = *(v5 + 192);
  if (!v28)
  {
    v28 = *(proto::gpsd::Request::default_instance_ + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_103:
  v29 = *(v5 + 200);
  if (!v29)
  {
    v29 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_106:
  v30 = *(v5 + 208);
  if (!v30)
  {
    v30 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_112;
  }

LABEL_109:
  v31 = *(v5 + 216);
  if (!v31)
  {
    v31 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_115;
  }

LABEL_112:
  v32 = *(v5 + 224);
  if (!v32)
  {
    v32 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v32, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_118;
  }

LABEL_115:
  v33 = *(v5 + 232);
  if (!v33)
  {
    v33 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v33, a2, a4);
  v6 = *(v5 + 396);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_121;
  }

LABEL_118:
  v34 = *(v5 + 240);
  if (!v34)
  {
    v34 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v34, a2, a4);
  if ((*(v5 + 396) & 0x80000000) != 0)
  {
LABEL_121:
    v35 = *(v5 + 248);
    if (!v35)
    {
      v35 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x32, v35, a2, a4);
  }

LABEL_124:
  v36 = *(v5 + 400);
  if (v36)
  {
    v37 = *(v5 + 256);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
    v36 = *(v5 + 400);
    if ((v36 & 2) == 0)
    {
LABEL_126:
      if ((v36 & 4) == 0)
      {
        goto LABEL_127;
      }

      goto LABEL_138;
    }
  }

  else if ((v36 & 2) == 0)
  {
    goto LABEL_126;
  }

  v38 = *(v5 + 264);
  if (!v38)
  {
    v38 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3C, v38, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 4) == 0)
  {
LABEL_127:
    if ((v36 & 8) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_139;
  }

LABEL_138:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x3D, *(v5 + 304), a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 8) == 0)
  {
LABEL_128:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_142;
  }

LABEL_139:
  v39 = *(v5 + 272);
  if (!v39)
  {
    v39 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E, v39, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x10) == 0)
  {
LABEL_129:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_145;
  }

LABEL_142:
  v40 = *(v5 + 280);
  if (!v40)
  {
    v40 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F, v40, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x20) == 0)
  {
LABEL_130:
    if ((v36 & 0x40) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_148;
  }

LABEL_145:
  v41 = *(v5 + 288);
  if (!v41)
  {
    v41 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x40, v41, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x40) == 0)
  {
LABEL_131:
    if ((v36 & 0x80) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_151;
  }

LABEL_148:
  v42 = *(v5 + 296);
  if (!v42)
  {
    v42 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x41, v42, a2, a4);
  v36 = *(v5 + 400);
  if ((v36 & 0x80) == 0)
  {
LABEL_132:
    if ((v36 & 0x100) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_154;
  }

LABEL_151:
  v43 = *(v5 + 312);
  if (!v43)
  {
    v43 = *(proto::gpsd::Request::default_instance_ + 312);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x42, v43, a2, a4);
  if ((*(v5 + 400) & 0x100) != 0)
  {
LABEL_154:
    v44 = *(v5 + 320);
    if (!v44)
    {
      v44 = *(proto::gpsd::Request::default_instance_ + 320);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x43, v44, a2, a4);
  }

LABEL_157:
  if (*(v5 + 336) >= 1)
  {
    v45 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x46, *(*(v5 + 328) + 4 * v45++), a2, a4);
    }

    while (v45 < *(v5 + 336));
  }

  v46 = *(v5 + 400);
  if ((v46 & 0x400) != 0)
  {
    v47 = *(v5 + 344);
    if (!v47)
    {
      v47 = *(proto::gpsd::Request::default_instance_ + 344);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x47, v47, a2, a4);
    v46 = *(v5 + 400);
  }

  if ((v46 & 0x800) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x48, *(v5 + 308), a2, a4);
  }

  if (*(v5 + 360) >= 1)
  {
    v48 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x49, *(*(v5 + 352) + 4 * v48++), a2, a4);
    }

    while (v48 < *(v5 + 360));
  }

  v49 = *(v5 + 400);
  if ((v49 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x4A, *(v5 + 368), a2, a4);
    v49 = *(v5 + 400);
    if ((v49 & 0x4000) == 0)
    {
LABEL_171:
      if ((v49 & 0x8000) == 0)
      {
        goto LABEL_172;
      }

      goto LABEL_176;
    }
  }

  else if ((v49 & 0x4000) == 0)
  {
    goto LABEL_171;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x4B, *(v5 + 372), a2, a4);
  v49 = *(v5 + 400);
  if ((v49 & 0x8000) == 0)
  {
LABEL_172:
    if ((v49 & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_179;
  }

LABEL_176:
  v50 = *(v5 + 376);
  if (!v50)
  {
    v50 = *(proto::gpsd::Request::default_instance_ + 376);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4C, v50, a2, a4);
  if ((*(v5 + 400) & 0x10000) != 0)
  {
LABEL_179:
    v51 = *(v5 + 384);
    if (!v51)
    {
      v51 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x4D, v51, a2, a4);
  }

  return this;
}

uint64_t proto::gpsd::Request::ByteSize(proto::gpsd::Request *this)
{
  v2 = *(this + 99);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_54;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 99);
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
    v2 = *(this + 99);
  }

  else
  {
    v5 = 2;
  }

  v3 += v5;
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 5);
    if ((v6 & 0x80000000) != 0)
    {
      v7 = 11;
    }

    else if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      v2 = *(this + 99);
    }

    else
    {
      v7 = 2;
    }

    v3 += v7;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(proto::gpsd::Request::default_instance_ + 24);
  }

  v9 = proto::gpsd::InjectAssistancePosition::ByteSize(v8);
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
  v2 = *(this + 99);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_30:
  v12 = *(this + 4);
  if (!v12)
  {
    v12 = *(proto::gpsd::Request::default_instance_ + 32);
  }

  v13 = proto::gpsd::InjectAssistanceTime::ByteSize(v12);
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
  v2 = *(this + 99);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_36:
  v16 = *(this + 5);
  if (!v16)
  {
    v16 = *(proto::gpsd::Request::default_instance_ + 40);
  }

  v17 = proto::gpsd::SetAssistancePressure::ByteSize(v16);
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
  v2 = *(this + 99);
  if ((v2 & 0x40) == 0)
  {
LABEL_16:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_42:
  v20 = *(this + 6);
  if (!v20)
  {
    v20 = *(proto::gpsd::Request::default_instance_ + 48);
  }

  v21 = proto::gpsd::SetAssistanceAccel::ByteSize(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 += v22 + v23 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x80) != 0)
  {
LABEL_48:
    v24 = *(this + 7);
    if (!v24)
    {
      v24 = *(proto::gpsd::Request::default_instance_ + 56);
    }

    v25 = proto::gpsd::SetAssistanceGyro::ByteSize(v24);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v3 += v26 + v27 + 1;
    v2 = *(this + 99);
  }

LABEL_54:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_112;
  }

  if ((v2 & 0x100) != 0)
  {
    v28 = *(this + 8);
    if (!v28)
    {
      v28 = *(proto::gpsd::Request::default_instance_ + 64);
    }

    v29 = proto::gpsd::SetAssistanceDem::ByteSize(v28);
    v30 = v29;
    if (v29 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
    }

    else
    {
      v31 = 1;
    }

    v3 += v30 + v31 + 1;
    v2 = *(this + 99);
    if ((v2 & 0x200) == 0)
    {
LABEL_57:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_76;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_57;
  }

  v32 = *(this + 9);
  if (!v32)
  {
    v32 = *(proto::gpsd::Request::default_instance_ + 72);
  }

  v33 = proto::gpsd::SetAssistanceMapVector::ByteSize(v32);
  v34 = v33;
  if (v33 >= 0x80)
  {
    v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
  }

  else
  {
    v35 = 1;
  }

  v3 += v34 + v35 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x400) == 0)
  {
LABEL_58:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_82;
  }

LABEL_76:
  v36 = *(this + 10);
  if (!v36)
  {
    v36 = *(proto::gpsd::Request::default_instance_ + 80);
  }

  v37 = proto::gpsd::SetAssistanceMotionActivityContext::ByteSize(v36);
  v38 = v37;
  if (v37 >= 0x80)
  {
    v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
  }

  else
  {
    v39 = 1;
  }

  v3 += v38 + v39 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x800) == 0)
  {
LABEL_59:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_82:
  v40 = *(this + 11);
  if (!v40)
  {
    v40 = *(proto::gpsd::Request::default_instance_ + 88);
  }

  v41 = proto::gpsd::SetAssistanceMountState::ByteSize(v40);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v3 += v42 + v43 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x1000) == 0)
  {
LABEL_60:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_94;
  }

LABEL_88:
  v44 = *(this + 12);
  if (!v44)
  {
    v44 = *(proto::gpsd::Request::default_instance_ + 96);
  }

  v45 = proto::gpsd::SetAssistanceSignalEnvironment::ByteSize(v44);
  v46 = v45;
  if (v45 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
  }

  else
  {
    v47 = 1;
  }

  v3 += v46 + v47 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x2000) == 0)
  {
LABEL_61:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_100;
  }

LABEL_94:
  v48 = *(this + 13);
  if (!v48)
  {
    v48 = *(proto::gpsd::Request::default_instance_ + 104);
  }

  v49 = proto::gpsd::SetAssistanceSpeedConstraint::ByteSize(v48);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v3 += v50 + v51 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x4000) == 0)
  {
LABEL_62:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_106;
  }

LABEL_100:
  v52 = *(this + 14);
  if (!v52)
  {
    v52 = *(proto::gpsd::Request::default_instance_ + 112);
  }

  v53 = proto::gpsd::SetAssistanceAlongTrackVelocity::ByteSize(v52);
  v54 = v53;
  if (v53 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
  }

  else
  {
    v55 = 1;
  }

  v3 += v54 + v55 + 1;
  v2 = *(this + 99);
  if ((v2 & 0x8000) != 0)
  {
LABEL_106:
    v56 = *(this + 15);
    if (!v56)
    {
      v56 = *(proto::gpsd::Request::default_instance_ + 120);
    }

    v57 = proto::gpsd::InjectAssistanceFile::ByteSize(v56);
    v58 = v57;
    if (v57 >= 0x80)
    {
      v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
    }

    else
    {
      v59 = 1;
    }

    v3 += v58 + v59 + 2;
    v2 = *(this + 99);
  }

LABEL_112:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_171;
  }

  if ((v2 & 0x10000) != 0)
  {
    v60 = *(this + 16);
    if (!v60)
    {
      v60 = *(proto::gpsd::Request::default_instance_ + 128);
    }

    v61 = proto::gpsd::InjectRtiFile::ByteSize(v60);
    v62 = v61;
    if (v61 >= 0x80)
    {
      v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
    }

    else
    {
      v63 = 1;
    }

    v3 += v62 + v63 + 2;
    v2 = *(this + 99);
    if ((v2 & 0x20000) == 0)
    {
LABEL_115:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_116;
      }

      goto LABEL_134;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_115;
  }

  v64 = *(this + 17);
  if (!v64)
  {
    v64 = *(proto::gpsd::Request::default_instance_ + 136);
  }

  v65 = proto::gpsd::InjectSvidBlocklist::ByteSize(v64);
  v66 = v65;
  if (v65 >= 0x80)
  {
    v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
  }

  else
  {
    v67 = 1;
  }

  v3 += v66 + v67 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x40000) == 0)
  {
LABEL_116:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_142;
  }

LABEL_134:
  v68 = *(this + 18);
  if (!v68)
  {
    v68 = *(proto::gpsd::Request::default_instance_ + 144);
  }

  if ((*(v68 + 20) & 1) == 0)
  {
    v69 = 0;
    *(v68 + 16) = 0;
LABEL_139:
    v71 = 1;
    goto LABEL_141;
  }

  v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v68 + 8));
  v69 = v70 + 1;
  *(v68 + 16) = v70 + 1;
  if ((v70 + 1) < 0x80)
  {
    goto LABEL_139;
  }

  v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v70 + 1));
LABEL_141:
  v3 += v71 + v69 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x80000) == 0)
  {
LABEL_117:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_118;
    }

    goto LABEL_145;
  }

LABEL_142:
  v72 = *(this + 19);
  if (!v72)
  {
    v72 = *(proto::gpsd::Request::default_instance_ + 152);
  }

  v3 += proto::gpsd::SetPvtmReport::ByteSize(v72) + 3;
  v2 = *(this + 99);
  if ((v2 & 0x100000) == 0)
  {
LABEL_118:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_153;
  }

LABEL_145:
  v73 = *(this + 20);
  if (!v73)
  {
    v73 = *(proto::gpsd::Request::default_instance_ + 160);
  }

  if ((*(v73 + 20) & 1) == 0)
  {
    v74 = 0;
    *(v73 + 16) = 0;
LABEL_150:
    v76 = 1;
    goto LABEL_152;
  }

  v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v73 + 8));
  v74 = v75 + 1;
  *(v73 + 16) = v75 + 1;
  if ((v75 + 1) < 0x80)
  {
    goto LABEL_150;
  }

  v76 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((v75 + 1));
LABEL_152:
  v3 += v76 + v74 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x200000) == 0)
  {
LABEL_119:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_159;
  }

LABEL_153:
  v77 = *(this + 21);
  if (!v77)
  {
    v77 = *(proto::gpsd::Request::default_instance_ + 168);
  }

  v78 = proto::gpsd::SetConfigSimulatorMode::ByteSize(v77);
  v79 = v78;
  if (v78 >= 0x80)
  {
    v80 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v78);
  }

  else
  {
    v80 = 1;
  }

  v3 += v79 + v80 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x400000) == 0)
  {
LABEL_120:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_165;
  }

LABEL_159:
  v81 = *(this + 22);
  if (!v81)
  {
    v81 = *(proto::gpsd::Request::default_instance_ + 176);
  }

  v82 = proto::gpsd::SetConfigEnableGnssConstellations::ByteSize(v81);
  v83 = v82;
  if (v82 >= 0x80)
  {
    v84 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v82);
  }

  else
  {
    v84 = 1;
  }

  v3 += v83 + v84 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x800000) != 0)
  {
LABEL_165:
    v85 = *(this + 23);
    if (!v85)
    {
      v85 = *(proto::gpsd::Request::default_instance_ + 184);
    }

    if (*(v85 + 16))
    {
      v86 = 2 * (*(v85 + 16) & 1);
    }

    else
    {
      v86 = 0;
    }

    *(v85 + 12) = v86;
    v3 += v86 + 3;
    v2 = *(this + 99);
  }

LABEL_171:
  if (!HIBYTE(v2))
  {
    goto LABEL_229;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v87 = *(this + 24);
    if (!v87)
    {
      v87 = *(proto::gpsd::Request::default_instance_ + 192);
    }

    v88 = proto::gpsd::TerminationImminent::ByteSize(v87);
    v89 = v88;
    if (v88 >= 0x80)
    {
      v90 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v88);
    }

    else
    {
      v90 = 1;
    }

    v3 += v89 + v90 + 2;
    v2 = *(this + 99);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_174:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_175;
      }

      goto LABEL_193;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_174;
  }

  v91 = *(this + 25);
  if (!v91)
  {
    v91 = *(proto::gpsd::Request::default_instance_ + 200);
  }

  v92 = proto::gpsd::ExitMessage::ByteSize(v91);
  v93 = v92;
  if (v92 >= 0x80)
  {
    v94 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v92);
  }

  else
  {
    v94 = 1;
  }

  v3 += v93 + v94 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_175:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_199;
  }

LABEL_193:
  v95 = *(this + 26);
  if (!v95)
  {
    v95 = *(proto::gpsd::Request::default_instance_ + 208);
  }

  v96 = proto::gpsd::LtlInfo::ByteSize(v95);
  v97 = v96;
  if (v96 >= 0x80)
  {
    v98 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v96);
  }

  else
  {
    v98 = 1;
  }

  v3 += v97 + v98 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_176:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_205;
  }

LABEL_199:
  v99 = *(this + 27);
  if (!v99)
  {
    v99 = *(proto::gpsd::Request::default_instance_ + 216);
  }

  v100 = proto::gpsd::StartContext::ByteSize(v99);
  v101 = v100;
  if (v100 >= 0x80)
  {
    v102 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v100);
  }

  else
  {
    v102 = 1;
  }

  v3 += v101 + v102 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_177:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_211;
  }

LABEL_205:
  v103 = *(this + 28);
  if (!v103)
  {
    v103 = *(proto::gpsd::Request::default_instance_ + 224);
  }

  v104 = proto::gpsd::SetThermalRiskState::ByteSize(v103);
  v105 = v104;
  if (v104 >= 0x80)
  {
    v106 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v104);
  }

  else
  {
    v106 = 1;
  }

  v3 += v105 + v106 + 2;
  v2 = *(this + 99);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_178:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_217;
  }

LABEL_211:
  v107 = *(this + 29);
  if (!v107)
  {
    v107 = *(proto::gpsd::Request::default_instance_ + 232);
  }

  if (*(v107 + 16))
  {
    v108 = 2 * (*(v107 + 16) & 1) + (*(v107 + 16) & 2);
  }

  else
  {
    v108 = 0;
  }

  *(v107 + 12) = v108;
  v3 += v108 + 3;
  v2 = *(this + 99);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_179:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_223;
  }

LABEL_217:
  v109 = *(this + 30);
  if (!v109)
  {
    v109 = *(proto::gpsd::Request::default_instance_ + 240);
  }

  v110 = proto::gpsd::InjectRavenOrbitFile::ByteSize(v109);
  v111 = v110;
  if (v110 >= 0x80)
  {
    v112 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v110);
  }

  else
  {
    v112 = 1;
  }

  v3 += v111 + v112 + 2;
  if ((*(this + 99) & 0x80000000) != 0)
  {
LABEL_223:
    v113 = *(this + 31);
    if (!v113)
    {
      v113 = *(proto::gpsd::Request::default_instance_ + 248);
    }

    v114 = proto::gnss::Emergency::EmergConfig::ByteSize(v113);
    v115 = v114;
    if (v114 >= 0x80)
    {
      v116 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v114);
    }

    else
    {
      v116 = 1;
    }

    v3 += v115 + v116 + 2;
  }

LABEL_229:
  v117 = *(this + 100);
  if (!v117)
  {
    goto LABEL_288;
  }

  if (v117)
  {
    v118 = *(this + 32);
    v119 = *(v118 + 23);
    v120 = v119;
    v121 = *(v118 + 8);
    if ((v119 & 0x80u) == 0)
    {
      v122 = *(v118 + 23);
    }

    else
    {
      v122 = v121;
    }

    if (v122 >= 0x80)
    {
      v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v122);
      v119 = *(v118 + 23);
      v121 = *(v118 + 8);
      v117 = *(this + 100);
      v120 = *(v118 + 23);
    }

    else
    {
      v123 = 1;
    }

    if (v120 < 0)
    {
      v119 = v121;
    }

    v3 += v123 + v119 + 2;
    if ((v117 & 2) == 0)
    {
LABEL_232:
      if ((v117 & 4) == 0)
      {
        goto LABEL_233;
      }

      goto LABEL_254;
    }
  }

  else if ((v117 & 2) == 0)
  {
    goto LABEL_232;
  }

  v124 = *(this + 33);
  if (!v124)
  {
    v124 = *(proto::gpsd::Request::default_instance_ + 264);
  }

  v125 = proto::gnss::Emergency::PositionRequest::ByteSize(v124);
  v126 = v125;
  if (v125 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125);
  }

  else
  {
    v127 = 1;
  }

  v3 += v126 + v127 + 2;
  v117 = *(this + 100);
  if ((v117 & 4) == 0)
  {
LABEL_233:
    if ((v117 & 8) == 0)
    {
      goto LABEL_234;
    }

    goto LABEL_258;
  }

LABEL_254:
  v128 = *(this + 76);
  if (v128 >= 0x80)
  {
    v129 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v128) + 2;
    v117 = *(this + 100);
  }

  else
  {
    v129 = 3;
  }

  v3 += v129;
  if ((v117 & 8) == 0)
  {
LABEL_234:
    if ((v117 & 0x10) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_264;
  }

LABEL_258:
  v130 = *(this + 34);
  if (!v130)
  {
    v130 = *(proto::gpsd::Request::default_instance_ + 272);
  }

  v131 = proto::gnss::Emergency::GpsReferenceTime::ByteSize(v130);
  v132 = v131;
  if (v131 >= 0x80)
  {
    v133 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v131);
  }

  else
  {
    v133 = 1;
  }

  v3 += v132 + v133 + 2;
  v117 = *(this + 100);
  if ((v117 & 0x10) == 0)
  {
LABEL_235:
    if ((v117 & 0x20) == 0)
    {
      goto LABEL_236;
    }

    goto LABEL_270;
  }

LABEL_264:
  v134 = *(this + 35);
  if (!v134)
  {
    v134 = *(proto::gpsd::Request::default_instance_ + 280);
  }

  v135 = proto::gnss::Emergency::ReferenceLocation::ByteSize(v134);
  v136 = v135;
  if (v135 >= 0x80)
  {
    v137 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v135);
  }

  else
  {
    v137 = 1;
  }

  v3 += v136 + v137 + 2;
  v117 = *(this + 100);
  if ((v117 & 0x20) == 0)
  {
LABEL_236:
    if ((v117 & 0x40) == 0)
    {
      goto LABEL_237;
    }

    goto LABEL_276;
  }

LABEL_270:
  v138 = *(this + 36);
  if (!v138)
  {
    v138 = *(proto::gpsd::Request::default_instance_ + 288);
  }

  v139 = proto::gnss::Emergency::GpsNavigationModel::ByteSize(v138);
  v140 = v139;
  if (v139 >= 0x80)
  {
    v141 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v139);
  }

  else
  {
    v141 = 1;
  }

  v3 += v140 + v141 + 2;
  v117 = *(this + 100);
  if ((v117 & 0x40) == 0)
  {
LABEL_237:
    if ((v117 & 0x80) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_282;
  }

LABEL_276:
  v142 = *(this + 37);
  if (!v142)
  {
    v142 = *(proto::gpsd::Request::default_instance_ + 296);
  }

  v143 = proto::gnss::Emergency::GpsAcqAssistance::ByteSize(v142);
  v144 = v143;
  if (v143 >= 0x80)
  {
    v145 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v143);
  }

  else
  {
    v145 = 1;
  }

  v3 += v144 + v145 + 2;
  v117 = *(this + 100);
  if ((v117 & 0x80) != 0)
  {
LABEL_282:
    v146 = *(this + 39);
    if (!v146)
    {
      v146 = *(proto::gpsd::Request::default_instance_ + 312);
    }

    v147 = proto::gnss::Emergency::CellFTAssistance::ByteSize(v146);
    v148 = v147;
    if (v147 >= 0x80)
    {
      v149 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v147);
    }

    else
    {
      v149 = 1;
    }

    v3 += v148 + v149 + 2;
    v117 = *(this + 100);
  }

LABEL_288:
  if ((v117 & 0xFF00) == 0)
  {
    goto LABEL_323;
  }

  if ((v117 & 0x100) == 0)
  {
    if ((v117 & 0x400) == 0)
    {
      goto LABEL_291;
    }

LABEL_299:
    v154 = *(this + 43);
    if (!v154)
    {
      v154 = *(proto::gpsd::Request::default_instance_ + 344);
    }

    v155 = proto::gnss::Emergency::LocationId::ByteSize(v154);
    v156 = v155;
    if (v155 >= 0x80)
    {
      v157 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v155);
    }

    else
    {
      v157 = 1;
    }

    v3 += v156 + v157 + 2;
    v117 = *(this + 100);
    if ((v117 & 0x800) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_305;
  }

  v150 = *(this + 40);
  if (!v150)
  {
    v150 = *(proto::gpsd::Request::default_instance_ + 320);
  }

  v151 = proto::gnss::Emergency::CplaneContext::ByteSize(v150);
  v152 = v151;
  if (v151 >= 0x80)
  {
    v153 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v151);
  }

  else
  {
    v153 = 1;
  }

  v3 += v152 + v153 + 2;
  v117 = *(this + 100);
  if ((v117 & 0x400) != 0)
  {
    goto LABEL_299;
  }

LABEL_291:
  if ((v117 & 0x800) != 0)
  {
LABEL_305:
    v158 = *(this + 77);
    if (v158 >= 0x80)
    {
      v159 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v158) + 2;
      v117 = *(this + 100);
    }

    else
    {
      v159 = 3;
    }

    v3 += v159;
  }

LABEL_309:
  if ((v117 & 0x2000) != 0)
  {
    v3 += 3;
  }

  if ((v117 & 0x4000) != 0)
  {
    v160 = *(this + 93);
    if (v160 >= 0x80)
    {
      v161 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v160) + 2;
      v117 = *(this + 100);
    }

    else
    {
      v161 = 3;
    }

    v3 += v161;
  }

  if ((v117 & 0x8000) != 0)
  {
    v162 = *(this + 47);
    if (!v162)
    {
      v162 = *(proto::gpsd::Request::default_instance_ + 376);
    }

    v163 = proto::gnss::Emergency::SuplContext::ByteSize(v162);
    v164 = v163;
    if (v163 >= 0x80)
    {
      v165 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v163);
    }

    else
    {
      v165 = 1;
    }

    v3 += v164 + v165 + 2;
    v117 = *(this + 100);
  }

LABEL_323:
  if ((v117 & 0x10000) != 0)
  {
    v166 = *(this + 48);
    if (!v166)
    {
      v166 = *(proto::gpsd::Request::default_instance_ + 384);
    }

    v167 = proto::gnss::Emergency::WlanMeasurementList::ByteSize(v166);
    v168 = v167;
    if (v167 >= 0x80)
    {
      v169 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v167);
    }

    else
    {
      v169 = 1;
    }

    v3 += v168 + v169 + 2;
  }

  v170 = *(this + 84);
  if (v170 < 1)
  {
    v172 = 0;
  }

  else
  {
    v171 = 0;
    v172 = 0;
    do
    {
      v173 = *(*(this + 41) + 4 * v171);
      if (v173 >= 0x80)
      {
        v174 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v173);
        v170 = *(this + 84);
      }

      else
      {
        v174 = 1;
      }

      v172 += v174;
      ++v171;
    }

    while (v171 < v170);
  }

  v175 = *(this + 90);
  if (v175 < 1)
  {
    v177 = 0;
  }

  else
  {
    v176 = 0;
    v177 = 0;
    do
    {
      v178 = *(*(this + 44) + 4 * v176);
      if (v178 >= 0x80)
      {
        v179 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v178);
        v175 = *(this + 90);
      }

      else
      {
        v179 = 1;
      }

      v177 += v179;
      ++v176;
    }

    while (v176 < v175);
  }

  result = (v172 + v3 + v177 + 2 * (v175 + v170));
  *(this + 98) = result;
  return result;
}

void proto::gpsd::Request::CheckTypeAndMergeFrom(proto::gpsd::Request *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  proto::gpsd::Request::MergeFrom(this, lpsrc);
}

void proto::gpsd::InjectAssistancePosition::MergeFrom(proto::gpsd::InjectAssistancePosition *this, const proto::gpsd::InjectAssistancePosition *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        v6 = *(proto::gpsd::InjectAssistancePosition::default_instance_ + 8);
      }

      proto::gnss::Position::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 4)
      {
        __assert_rtn("set_position_assist_type", "GpsdProtocol.pb.h", 9430, "::proto::gnss::PositionAssistType_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 20);
      *(this + 9) |= 4u;
      *(this + 20) = v8;
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 3);
      *(this + 9) |= 8u;
      *(this + 3) = v9;
    }
  }
}