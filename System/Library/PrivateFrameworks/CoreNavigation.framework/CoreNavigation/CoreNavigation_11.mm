void raven::ConvertProtobufToRavenSolutionEvent(raven *this, const CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a2, raven::RavenSolutionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
  }

  raven::ConvertProtobufToRavenStatus(a2 + 104, v12, a9, a10, a3, a4, a5, a6, a7, a8);
  v22 = *(this + 3);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v13);
    v22 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
  }

  raven::ConvertProtobufToRavenSolution(a2 + 1168, v22, v20, v21, v14, v15, v16, v17, v18, v19);
  v32 = *(this + 2);
  if (!v32)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v23);
    v32 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
  }

  raven::ConvertProtobufToRavenActivity(a2 + 2032, v32, v30, v31, v24, v25, v26, v27, v28, v29);
}

void raven::ConvertProtobufToRavenStatus(uint64_t a1, uint64_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v109 = &unk_1F4CD9528;
  v12 = 0uLL;
  v110 = 0u;
  v111 = 0u;
  if (*(a2 + 292))
  {
    v13 = *(a2 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    if ((*(v13 + 52) & 2) != 0)
    {
      v14 = *(a2 + 8);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v15 = *(v14 + 16);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v15 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      v16 = *(v15 + 8);
      v17 = *(a2 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v18 = *(v17 + 16);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      a4.i64[0] = *(v18 + 16);
      *v12.i64 = *a4.i64 + v16;
      HIDWORD(v111) |= 1u;
      *&v110 = *v12.i64;
    }
  }

  if (*(a2 + 292))
  {
    v19 = *(a2 + 8);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v19 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    if (*(v19 + 52))
    {
      v20 = *(a2 + 8);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v20 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v21 = *(v20 + 8);
      if (!v21)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v21 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      v22 = *(v21 + 8);
      v23 = *(a2 + 8);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v23 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
      }

      v24 = *(v23 + 8);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v24 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      a4.i64[0] = *(v24 + 16);
      *v12.i64 = *a4.i64 + v22;
      HIDWORD(v111) |= 4u;
      *&v111 = *v12.i64;
    }
  }

  raven::ConvertProtobufToRavenTime(&v109, a1 + 8, 1, a6, a7, a8, a9, a10, v12, a4);
  v27 = *(a2 + 292);
  if ((v27 & 2) != 0)
  {
    v28 = *(a2 + 16);
    if (v28 >= 7)
    {
      v29 = 0;
    }

    else
    {
      v29 = 0x5040302010000uLL >> (8 * v28);
    }

    *(a1 + 104) = v29;
  }

  if ((v27 & 4) != 0)
  {
    v30 = *(a2 + 20);
    if (v30 == 3)
    {
      v31 = 2;
    }

    else
    {
      v31 = v30 == 2;
    }

    *(a1 + 105) = v31;
  }

  *(a1 + 112) = *(a2 + 24);
  v25.i64[0] = *(a2 + 32);
  v106 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v106, 0, v25, v26);
  *(a1 + 120) = v106;
  *(a1 + 136) = *(a2 + 40);
  *(a1 + 152) = *(a2 + 184);
  *(a1 + 160) = *(a2 + 56);
  *(a1 + 992) = *(a2 + 64);
  *(a1 + 1008) = *(a2 + 80);
  *(a1 + 1024) = *(a2 + 96);
  *(a1 + 1040) = *(a2 + 160);
  *(a1 + 1056) = *(a2 + 176);
  if (*(a2 + 120) >= 1)
  {
    v32 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v106, *(*(a2 + 112) + 8 * v32));
      v38 = 0;
      switch(v108)
      {
        case 0:
        case 26:
        case 34:
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'", v33, v34, v35, v36, v37, v105);
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified, %d", v39, v40, v41, v42, v43, 33);
          goto LABEL_74;
        case 1:
          v38 = 1;
          goto LABEL_73;
        case 2:
          v38 = 2;
          goto LABEL_73;
        case 3:
          v38 = 3;
          goto LABEL_73;
        case 4:
          v38 = 4;
          goto LABEL_73;
        case 5:
          v38 = 6;
          goto LABEL_73;
        case 6:
          v38 = 8;
          goto LABEL_73;
        case 7:
          v38 = 12;
          goto LABEL_73;
        case 8:
          v38 = 27;
          goto LABEL_73;
        case 9:
          v38 = 14;
          goto LABEL_73;
        case 10:
          v38 = 18;
          goto LABEL_73;
        case 11:
          v38 = 17;
          goto LABEL_73;
        case 12:
          v38 = 15;
          goto LABEL_73;
        case 13:
          v38 = 19;
          goto LABEL_73;
        case 14:
          v38 = 21;
          goto LABEL_73;
        case 15:
          v38 = 22;
          goto LABEL_73;
        case 16:
          v38 = 23;
          goto LABEL_73;
        case 17:
          v38 = 24;
          goto LABEL_73;
        case 18:
          v38 = 25;
          goto LABEL_73;
        case 19:
          v38 = 28;
          goto LABEL_73;
        case 20:
          v38 = 29;
          goto LABEL_73;
        case 21:
          v38 = 10;
          goto LABEL_73;
        case 22:
          v38 = 26;
          goto LABEL_73;
        case 23:
          v38 = 16;
          goto LABEL_73;
        case 24:
          v38 = 11;
          goto LABEL_73;
        case 25:
          v38 = 13;
          goto LABEL_73;
        case 27:
          v38 = 9;
          goto LABEL_73;
        case 29:
          v38 = 5;
          goto LABEL_73;
        case 30:
          v38 = 7;
          goto LABEL_73;
        case 31:
          v38 = 32;
          goto LABEL_73;
        case 32:
          v38 = 31;
          goto LABEL_73;
        case 33:
          v38 = 30;
          goto LABEL_73;
        case 35:
          v38 = 20;
          goto LABEL_73;
        default:
LABEL_73:
          *(a1 + 164 + 4 * v38) = v107;
LABEL_74:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v106);
          if (++v32 >= *(a2 + 120))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 144) >= 1)
  {
    v44 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v106, *(*(a2 + 136) + 8 * v44));
      v50 = 0;
      switch(v108)
      {
        case 0:
        case 26:
        case 34:
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'", v45, v46, v47, v48, v49, v105);
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified, %d", v51, v52, v53, v54, v55, 33);
          goto LABEL_112;
        case 1:
          v50 = 1;
          goto LABEL_111;
        case 2:
          v50 = 2;
          goto LABEL_111;
        case 3:
          v50 = 3;
          goto LABEL_111;
        case 4:
          v50 = 4;
          goto LABEL_111;
        case 5:
          v50 = 6;
          goto LABEL_111;
        case 6:
          v50 = 8;
          goto LABEL_111;
        case 7:
          v50 = 12;
          goto LABEL_111;
        case 8:
          v50 = 27;
          goto LABEL_111;
        case 9:
          v50 = 14;
          goto LABEL_111;
        case 10:
          v50 = 18;
          goto LABEL_111;
        case 11:
          v50 = 17;
          goto LABEL_111;
        case 12:
          v50 = 15;
          goto LABEL_111;
        case 13:
          v50 = 19;
          goto LABEL_111;
        case 14:
          v50 = 21;
          goto LABEL_111;
        case 15:
          v50 = 22;
          goto LABEL_111;
        case 16:
          v50 = 23;
          goto LABEL_111;
        case 17:
          v50 = 24;
          goto LABEL_111;
        case 18:
          v50 = 25;
          goto LABEL_111;
        case 19:
          v50 = 28;
          goto LABEL_111;
        case 20:
          v50 = 29;
          goto LABEL_111;
        case 21:
          v50 = 10;
          goto LABEL_111;
        case 22:
          v50 = 26;
          goto LABEL_111;
        case 23:
          v50 = 16;
          goto LABEL_111;
        case 24:
          v50 = 11;
          goto LABEL_111;
        case 25:
          v50 = 13;
          goto LABEL_111;
        case 27:
          v50 = 9;
          goto LABEL_111;
        case 29:
          v50 = 5;
          goto LABEL_111;
        case 30:
          v50 = 7;
          goto LABEL_111;
        case 31:
          v50 = 32;
          goto LABEL_111;
        case 32:
          v50 = 31;
          goto LABEL_111;
        case 33:
          v50 = 30;
          goto LABEL_111;
        case 35:
          v50 = 20;
          goto LABEL_111;
        default:
LABEL_111:
          *(a1 + 296 + 4 * v50) = v107;
LABEL_112:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v106);
          if (++v44 >= *(a2 + 144))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 200) >= 1)
  {
    v56 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v106, *(*(a2 + 192) + 8 * v56));
      v62 = 0;
      switch(v108)
      {
        case 0:
        case 26:
        case 34:
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'", v57, v58, v59, v60, v61, v105);
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified, %d", v63, v64, v65, v66, v67, 33);
          goto LABEL_150;
        case 1:
          v62 = 1;
          goto LABEL_149;
        case 2:
          v62 = 2;
          goto LABEL_149;
        case 3:
          v62 = 3;
          goto LABEL_149;
        case 4:
          v62 = 4;
          goto LABEL_149;
        case 5:
          v62 = 6;
          goto LABEL_149;
        case 6:
          v62 = 8;
          goto LABEL_149;
        case 7:
          v62 = 12;
          goto LABEL_149;
        case 8:
          v62 = 27;
          goto LABEL_149;
        case 9:
          v62 = 14;
          goto LABEL_149;
        case 10:
          v62 = 18;
          goto LABEL_149;
        case 11:
          v62 = 17;
          goto LABEL_149;
        case 12:
          v62 = 15;
          goto LABEL_149;
        case 13:
          v62 = 19;
          goto LABEL_149;
        case 14:
          v62 = 21;
          goto LABEL_149;
        case 15:
          v62 = 22;
          goto LABEL_149;
        case 16:
          v62 = 23;
          goto LABEL_149;
        case 17:
          v62 = 24;
          goto LABEL_149;
        case 18:
          v62 = 25;
          goto LABEL_149;
        case 19:
          v62 = 28;
          goto LABEL_149;
        case 20:
          v62 = 29;
          goto LABEL_149;
        case 21:
          v62 = 10;
          goto LABEL_149;
        case 22:
          v62 = 26;
          goto LABEL_149;
        case 23:
          v62 = 16;
          goto LABEL_149;
        case 24:
          v62 = 11;
          goto LABEL_149;
        case 25:
          v62 = 13;
          goto LABEL_149;
        case 27:
          v62 = 9;
          goto LABEL_149;
        case 29:
          v62 = 5;
          goto LABEL_149;
        case 30:
          v62 = 7;
          goto LABEL_149;
        case 31:
          v62 = 32;
          goto LABEL_149;
        case 32:
          v62 = 31;
          goto LABEL_149;
        case 33:
          v62 = 30;
          goto LABEL_149;
        case 35:
          v62 = 20;
          goto LABEL_149;
        default:
LABEL_149:
          *(a1 + 428 + 4 * v62) = v107;
LABEL_150:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v106);
          if (++v56 >= *(a2 + 200))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 224) >= 1)
  {
    v68 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v106, *(*(a2 + 216) + 8 * v68));
      v74 = 0;
      switch(v108)
      {
        case 0:
        case 26:
        case 34:
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'", v69, v70, v71, v72, v73, v105);
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified, %d", v75, v76, v77, v78, v79, 33);
          goto LABEL_188;
        case 1:
          v74 = 1;
          goto LABEL_187;
        case 2:
          v74 = 2;
          goto LABEL_187;
        case 3:
          v74 = 3;
          goto LABEL_187;
        case 4:
          v74 = 4;
          goto LABEL_187;
        case 5:
          v74 = 6;
          goto LABEL_187;
        case 6:
          v74 = 8;
          goto LABEL_187;
        case 7:
          v74 = 12;
          goto LABEL_187;
        case 8:
          v74 = 27;
          goto LABEL_187;
        case 9:
          v74 = 14;
          goto LABEL_187;
        case 10:
          v74 = 18;
          goto LABEL_187;
        case 11:
          v74 = 17;
          goto LABEL_187;
        case 12:
          v74 = 15;
          goto LABEL_187;
        case 13:
          v74 = 19;
          goto LABEL_187;
        case 14:
          v74 = 21;
          goto LABEL_187;
        case 15:
          v74 = 22;
          goto LABEL_187;
        case 16:
          v74 = 23;
          goto LABEL_187;
        case 17:
          v74 = 24;
          goto LABEL_187;
        case 18:
          v74 = 25;
          goto LABEL_187;
        case 19:
          v74 = 28;
          goto LABEL_187;
        case 20:
          v74 = 29;
          goto LABEL_187;
        case 21:
          v74 = 10;
          goto LABEL_187;
        case 22:
          v74 = 26;
          goto LABEL_187;
        case 23:
          v74 = 16;
          goto LABEL_187;
        case 24:
          v74 = 11;
          goto LABEL_187;
        case 25:
          v74 = 13;
          goto LABEL_187;
        case 27:
          v74 = 9;
          goto LABEL_187;
        case 29:
          v74 = 5;
          goto LABEL_187;
        case 30:
          v74 = 7;
          goto LABEL_187;
        case 31:
          v74 = 32;
          goto LABEL_187;
        case 32:
          v74 = 31;
          goto LABEL_187;
        case 33:
          v74 = 30;
          goto LABEL_187;
        case 35:
          v74 = 20;
          goto LABEL_187;
        default:
LABEL_187:
          *(a1 + 560 + 4 * v74) = v107;
LABEL_188:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v106);
          if (++v68 >= *(a2 + 224))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 248) >= 1)
  {
    v80 = 0;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v106, *(*(a2 + 240) + 8 * v80));
      v86 = 0;
      switch(v108)
      {
        case 0:
        case 26:
        case 34:
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'", v81, v82, v83, v84, v85, v105);
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified, %d", v87, v88, v89, v90, v91, 33);
          goto LABEL_226;
        case 1:
          v86 = 1;
          goto LABEL_225;
        case 2:
          v86 = 2;
          goto LABEL_225;
        case 3:
          v86 = 3;
          goto LABEL_225;
        case 4:
          v86 = 4;
          goto LABEL_225;
        case 5:
          v86 = 6;
          goto LABEL_225;
        case 6:
          v86 = 8;
          goto LABEL_225;
        case 7:
          v86 = 12;
          goto LABEL_225;
        case 8:
          v86 = 27;
          goto LABEL_225;
        case 9:
          v86 = 14;
          goto LABEL_225;
        case 10:
          v86 = 18;
          goto LABEL_225;
        case 11:
          v86 = 17;
          goto LABEL_225;
        case 12:
          v86 = 15;
          goto LABEL_225;
        case 13:
          v86 = 19;
          goto LABEL_225;
        case 14:
          v86 = 21;
          goto LABEL_225;
        case 15:
          v86 = 22;
          goto LABEL_225;
        case 16:
          v86 = 23;
          goto LABEL_225;
        case 17:
          v86 = 24;
          goto LABEL_225;
        case 18:
          v86 = 25;
          goto LABEL_225;
        case 19:
          v86 = 28;
          goto LABEL_225;
        case 20:
          v86 = 29;
          goto LABEL_225;
        case 21:
          v86 = 10;
          goto LABEL_225;
        case 22:
          v86 = 26;
          goto LABEL_225;
        case 23:
          v86 = 16;
          goto LABEL_225;
        case 24:
          v86 = 11;
          goto LABEL_225;
        case 25:
          v86 = 13;
          goto LABEL_225;
        case 27:
          v86 = 9;
          goto LABEL_225;
        case 29:
          v86 = 5;
          goto LABEL_225;
        case 30:
          v86 = 7;
          goto LABEL_225;
        case 31:
          v86 = 32;
          goto LABEL_225;
        case 32:
          v86 = 31;
          goto LABEL_225;
        case 33:
          v86 = 30;
          goto LABEL_225;
        case 35:
          v86 = 20;
          goto LABEL_225;
        default:
LABEL_225:
          *(a1 + 692 + 4 * v86) = v107;
LABEL_226:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v106);
          if (++v80 >= *(a2 + 248))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  if (*(a2 + 272) >= 1)
  {
    v92 = 0;
    v93 = a1 + 824;
    while (2)
    {
      CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(&v106, *(*(a2 + 264) + 8 * v92));
      v99 = 0;
      switch(v108)
      {
        case 0:
        case 26:
        case 34:
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified: 'MeasurementTypeCount_MeasurementType_MT_Unknown'", v94, v95, v96, v97, v98, v105);
          v113 = 12;
          v112 = 4;
          cnprint::CNPrinter::Print(&v113, &v112, "Invalid measurement type specified, %d", v100, v101, v102, v103, v104, 33);
          goto LABEL_264;
        case 1:
          v99 = 1;
          goto LABEL_263;
        case 2:
          v99 = 2;
          goto LABEL_263;
        case 3:
          v99 = 3;
          goto LABEL_263;
        case 4:
          v99 = 4;
          goto LABEL_263;
        case 5:
          v99 = 6;
          goto LABEL_263;
        case 6:
          v99 = 8;
          goto LABEL_263;
        case 7:
          v99 = 12;
          goto LABEL_263;
        case 8:
          v99 = 27;
          goto LABEL_263;
        case 9:
          v99 = 14;
          goto LABEL_263;
        case 10:
          v99 = 18;
          goto LABEL_263;
        case 11:
          v99 = 17;
          goto LABEL_263;
        case 12:
          v99 = 15;
          goto LABEL_263;
        case 13:
          v99 = 19;
          goto LABEL_263;
        case 14:
          v99 = 21;
          goto LABEL_263;
        case 15:
          v99 = 22;
          goto LABEL_263;
        case 16:
          v99 = 23;
          goto LABEL_263;
        case 17:
          v99 = 24;
          goto LABEL_263;
        case 18:
          v99 = 25;
          goto LABEL_263;
        case 19:
          v99 = 28;
          goto LABEL_263;
        case 20:
          v99 = 29;
          goto LABEL_263;
        case 21:
          v99 = 10;
          goto LABEL_263;
        case 22:
          v99 = 26;
          goto LABEL_263;
        case 23:
          v99 = 16;
          goto LABEL_263;
        case 24:
          v99 = 11;
          goto LABEL_263;
        case 25:
          v99 = 13;
          goto LABEL_263;
        case 27:
          v99 = 9;
          goto LABEL_263;
        case 29:
          v99 = 5;
          goto LABEL_263;
        case 30:
          v99 = 7;
          goto LABEL_263;
        case 31:
          v99 = 32;
          goto LABEL_263;
        case 32:
          v99 = 31;
          goto LABEL_263;
        case 33:
          v99 = 30;
          goto LABEL_263;
        case 35:
          v99 = 20;
          goto LABEL_263;
        default:
LABEL_263:
          *(v93 + 4 * v99) = v107;
LABEL_264:
          CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(&v106);
          if (++v92 >= *(a2 + 272))
          {
            break;
          }

          continue;
      }

      break;
    }
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(&v109);
}

void sub_1D0C2381C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(va);
  _Unwind_Resume(a1);
}

CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MeasurementTypeCount(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, const CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *a2)
{
  *this = &unk_1F4CD6900;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergeFrom(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, const CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v7 = *(a2 + 2);
    *(this + 10) |= 2u;
    *(this + 2) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v6 = *(a2 + 1);
  *(this + 10) |= 1u;
  *(this + 1) = v6;
  v4 = *(a2 + 10);
  if ((v4 & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  v8 = *(a2 + 8);
  if (v8 >= 0x24)
  {
    __assert_rtn("set_type", "CoreNavigationCLPRavenOutput.pb.h", 4707, "::CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount_MeasurementType_IsValid(value)");
  }

  *(this + 10) |= 4u;
  *(this + 8) = v8;
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_8:
    v5 = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = v5;
  }
}

void sub_1D0C23D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void raven::ConvertProtobufToRavenSolution(uint64_t a1, uint64_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = &unk_1F4CD9528;
  v12 = 0uLL;
  v38 = 0u;
  v39 = 0u;
  if (*(a2 + 92))
  {
    v13 = *(a2 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    if ((*(v13 + 52) & 2) != 0)
    {
      v14 = *(a2 + 8);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v15 = *(v14 + 16);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v15 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      v16 = *(v15 + 8);
      v17 = *(a2 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v18 = *(v17 + 16);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      a4.i64[0] = *(v18 + 16);
      *v12.i64 = *a4.i64 + v16;
      HIDWORD(v39) |= 1u;
      *&v38 = *v12.i64;
    }
  }

  if (*(a2 + 92))
  {
    v19 = *(a2 + 8);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v19 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    if (*(v19 + 52))
    {
      v20 = *(a2 + 8);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v20 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v21 = *(v20 + 8);
      if (!v21)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v21 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      v22 = *(v21 + 8);
      v23 = *(a2 + 8);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v23 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
      }

      v24 = *(v23 + 8);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v24 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      a4.i64[0] = *(v24 + 16);
      *v12.i64 = *a4.i64 + v22;
      HIDWORD(v39) |= 4u;
      *&v39 = *v12.i64;
    }
  }

  v25 = raven::ConvertProtobufToRavenTime(&v37, a1, 1, a6, a7, a8, a9, a10, v12, a4);
  v26 = *(a2 + 92);
  if ((v26 & 2) != 0)
  {
    v27 = *(a2 + 16);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v27 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
      v26 = *(a2 + 92);
    }

    *(a1 + 104) = *(v27 + 16);
    *(a1 + 120) = *(v27 + 32);
    *(a1 + 136) = *(v27 + 48);
    *(a1 + 152) = *(v27 + 64);
    *(a1 + 168) = *(v27 + 80);
    *(a1 + 96) = 1;
  }

  if ((v26 & 4) != 0)
  {
    v28 = *(a2 + 24);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v28 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
      v26 = *(a2 + 92);
    }

    *(a1 + 216) = *(v28 + 48);
    *(a1 + 176) = 257;
    *(a1 + 184) = *(v28 + 16);
    *(a1 + 200) = *(v28 + 32);
    *(a1 + 248) = *(v28 + 80);
    *(a1 + 264) = *(v28 + 96);
    *(a1 + 280) = *(v28 + 112);
    *(a1 + 224) = *(v28 + 56);
    *(a1 + 240) = *(v28 + 72);
  }

  if ((v26 & 8) != 0)
  {
    v29 = *(a2 + 32);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v29 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
      v26 = *(a2 + 92);
    }

    *(a1 + 304) = *(v29 + 16);
    *(a1 + 320) = *(v29 + 32);
    *(a1 + 336) = *(v29 + 48);
    *(a1 + 352) = *(v29 + 64);
    *(a1 + 368) = *(v29 + 80);
    *(a1 + 296) = 1;
  }

  if ((v26 & 0x10) != 0)
  {
    v30 = *(a2 + 40);
    if (!v30)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v30 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
      v26 = *(a2 + 92);
    }

    *(a1 + 384) = *(v30 + 16);
    *(a1 + 400) = *(v30 + 32);
    *(a1 + 416) = *(v30 + 48);
    *(a1 + 432) = *(v30 + 64);
    *(a1 + 448) = *(v30 + 80);
    *(a1 + 376) = 1;
  }

  if ((v26 & 0x20) != 0)
  {
    v31 = *(a2 + 48);
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v31 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
      v26 = *(a2 + 92);
    }

    *(a1 + 464) = *(v31 + 16);
    *(a1 + 480) = *(v31 + 32);
    *(a1 + 496) = *(v31 + 48);
    *(a1 + 512) = *(v31 + 64);
    *(a1 + 528) = *(v31 + 80);
    v32 = *(v31 + 120);
    *(a1 + 544) = v32;
    *(a1 + 552) = *(v31 + 104);
    *(a1 + 568) = v32;
    *(a1 + 456) = 1;
  }

  if ((v26 & 0x40) != 0)
  {
    v33 = *(a2 + 56);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v33 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
      v26 = *(a2 + 92);
    }

    *(a1 + 584) = *(v33 + 16);
    *(a1 + 600) = *(v33 + 32);
    *(a1 + 616) = *(v33 + 48);
    *(a1 + 632) = *(v33 + 64);
    *(a1 + 648) = *(v33 + 80);
    *(a1 + 576) = 1;
  }

  if ((v26 & 0x80) != 0)
  {
    v34 = *(a2 + 64);
    if (!v34)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v34 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
      v26 = *(a2 + 92);
    }

    *(a1 + 664) = *(v34 + 16);
    *(a1 + 680) = *(v34 + 32);
    *(a1 + 696) = *(v34 + 48);
    *(a1 + 712) = *(v34 + 64);
    *(a1 + 728) = *(v34 + 80);
    *(a1 + 656) = 1;
  }

  if ((v26 & 0x100) != 0)
  {
    v35 = *(a2 + 72);
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v35 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
      v26 = *(a2 + 92);
    }

    *(a1 + 744) = *(v35 + 16);
    *(a1 + 760) = *(v35 + 32);
    *(a1 + 776) = *(v35 + 48);
    *(a1 + 792) = *(v35 + 64);
    *(a1 + 808) = *(v35 + 80);
    *(a1 + 736) = 1;
  }

  if ((v26 & 0x200) != 0)
  {
    v36 = *(a2 + 80);
    if (!v36)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(v25);
      v36 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
    }

    *(a1 + 824) = *(v36 + 16);
    *(a1 + 840) = *(v36 + 32);
    *(a1 + 856) = *(v36 + 48);
    *(a1 + 816) = 1;
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(&v37);
}

void sub_1D0C24270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(va);
  _Unwind_Resume(a1);
}

void raven::ConvertProtobufToRavenActivity(uint64_t a1, uint64_t a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = &unk_1F4CD9528;
  v12 = 0uLL;
  v36 = 0u;
  v37 = 0u;
  if (*(a2 + 228))
  {
    v13 = *(a2 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    if ((*(v13 + 52) & 2) != 0)
    {
      v14 = *(a2 + 8);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v15 = *(v14 + 16);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v15 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      v16 = *(v15 + 8);
      v17 = *(a2 + 8);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v17 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v18 = *(v17 + 16);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v18 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
      }

      a4.i64[0] = *(v18 + 16);
      *v12.i64 = *a4.i64 + v16;
      HIDWORD(v37) |= 1u;
      *&v36 = *v12.i64;
    }
  }

  if (*(a2 + 228))
  {
    v19 = *(a2 + 8);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
      v19 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    if (*(v19 + 52))
    {
      v20 = *(a2 + 8);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v20 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v21 = *(v20 + 8);
      if (!v21)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v21 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      v22 = *(v21 + 8);
      v23 = *(a2 + 8);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v23 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
      }

      v24 = *(v23 + 8);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(a1);
        v24 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
      }

      a4.i64[0] = *(v24 + 16);
      *v12.i64 = *a4.i64 + v22;
      HIDWORD(v37) |= 4u;
      *&v37 = *v12.i64;
    }
  }

  raven::ConvertProtobufToRavenTime(&v35, a1, 1, a6, a7, a8, a9, a10, v12, a4);
  v25 = *(a2 + 228);
  if ((v25 & 2) != 0)
  {
    v26 = *(a2 + 24);
    if ((v26 - 1) >= 9)
    {
      LOBYTE(v26) = 0;
    }

    *(a1 + 96) = v26;
    *(a1 + 104) = *(a2 + 56);
    *(a1 + 120) = *(a2 + 72);
    *(a1 + 136) = *(a2 + 88);
    *(a1 + 152) = *(a2 + 104);
    *(a1 + 168) = *(a2 + 120);
  }

  if ((v25 & 8) != 0)
  {
    v29 = *(a2 + 28);
    if (v29 >= 4)
    {
      LOBYTE(v29) = 0;
    }

    *(a1 + 512) = v29;
    *(a1 + 520) = *(a2 + 144);
    *(a1 + 536) = *(a2 + 160);
    if ((v25 & 0x80) == 0)
    {
LABEL_33:
      if ((v25 & 0x40) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_47;
    }
  }

  else if ((v25 & 0x80) == 0)
  {
    goto LABEL_33;
  }

  v30 = *(a2 + 52);
  if (v30 >= 4)
  {
    LOBYTE(v30) = 0;
  }

  *(a1 + 552) = v30;
  *(a1 + 560) = *(a2 + 176);
  *(a1 + 576) = *(a2 + 192);
  if ((v25 & 0x40) == 0)
  {
LABEL_34:
    if ((v25 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

LABEL_47:
  v31 = *(a2 + 48) - 1;
  if (v31 > 8)
  {
    v32 = 0;
  }

  else
  {
    v32 = byte_1D0E9C95B[v31];
  }

  *(a1 + 184) = v32;
  if ((v25 & 0x100) == 0)
  {
LABEL_35:
    if ((v25 & 0x20000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

LABEL_51:
  v33 = *(a2 + 136);
  if (v33 == 2)
  {
    v34 = 2;
  }

  else
  {
    v34 = v33 == 1;
  }

  *(a1 + 592) = v34;
  *(a1 + 600) = *(a2 + 208);
  if ((v25 & 0x20000000) != 0)
  {
LABEL_36:
    v27 = *(a2 + 140);
    if (v27 >= 8)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x605040302010000uLL >> (8 * v27);
    }

    *(a1 + 616) = v28;
  }

LABEL_40:
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(&v35);
}

void sub_1D0C245B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::~TimeStamp(va);
  _Unwind_Resume(a1);
}

void cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(cnnavigation::ECEFToENUJacobian *this)
{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
}

{
  *this = &unk_1F4CD5D18;
  *(this + 2) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void raven::ConvertRavenSolutionEventToSerializedProtobufLogEntry(uint64_t a1)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v9);
  v12 |= 1u;
  v3 = v10;
  if (!v10)
  {
    operator new();
  }

  v4 = *(v10 + 44);
  *(v10 + 8) = *(a1 + 40) + *(a1 + 32);
  v5 = *(a1 + 16) + *(a1 + 8);
  *(v3 + 44) = v4 | 5;
  *(v3 + 24) = v5;
  v12 |= 2u;
  v6 = v11;
  if (!v11)
  {
    operator new();
  }

  *(v11 + 320) |= 2u;
  v7 = *(v6 + 272);
  if (!v7)
  {
    operator new();
  }

  v8 = *(v7 + 8);
  *(v7 + 28) |= 1u;
  if (!v8)
  {
    operator new();
  }

  raven::ConvertRavenSolutionEventToProtobuf(a1, v8, v2);
  wireless_diagnostics::google::protobuf::MessageLite::SerializeToString();
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v9);
}

void sub_1D0C24880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v6 == 3)
          {
            if (v7 != 2)
            {
              goto LABEL_39;
            }

LABEL_66:
            v24 = *(this + 9);
            v25 = *(this + 8);
            if (v25 >= v24)
            {
              if (v24 == *(this + 10))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
                v24 = *(this + 9);
              }

              *(this + 9) = v24 + 1;
              operator new();
            }

            v26 = *(this + 3);
            *(this + 8) = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v71[0] = 0;
            v28 = *(a2 + 1);
            if (v28 >= *(a2 + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
              {
                return 0;
              }
            }

            else
            {
              v71[0] = *v28;
              *(a2 + 1) = v28 + 1;
            }

            v29 = *(a2 + 14);
            v30 = *(a2 + 15);
            *(a2 + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v14 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v14)
            {
              *(a2 + 14) = v32;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2))
            {
              v33 = *v23;
              if (v33 == 26)
              {
                goto LABEL_65;
              }

              if (v33 == 34)
              {
                goto LABEL_83;
              }
            }
          }

          else
          {
            if (v6 != 4 || v7 != 2)
            {
              goto LABEL_39;
            }

            while (2)
            {
              v34 = *(this + 15);
              v35 = *(this + 14);
              if (v35 >= v34)
              {
                if (v34 == *(this + 16))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
                  v34 = *(this + 15);
                }

                *(this + 15) = v34 + 1;
                operator new();
              }

              v36 = *(this + 6);
              *(this + 14) = v35 + 1;
              v37 = *(v36 + 8 * v35);
              v71[0] = 0;
              v38 = *(a2 + 1);
              if (v38 >= *(a2 + 2) || *v38 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
                {
                  return 0;
                }
              }

              else
              {
                v71[0] = *v38;
                *(a2 + 1) = v38 + 1;
              }

              v39 = *(a2 + 14);
              v40 = *(a2 + 15);
              *(a2 + 14) = v39 + 1;
              if (v39 >= v40)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v41 = *(a2 + 14);
              v14 = __OFSUB__(v41, 1);
              v42 = v41 - 1;
              if (v42 < 0 == v14)
              {
                *(a2 + 14) = v42;
              }

              v23 = *(a2 + 1);
              if (v23 < *(a2 + 2))
              {
                v43 = *v23;
                if (v43 == 34)
                {
LABEL_83:
                  *(a2 + 1) = v23 + 1;
                  continue;
                }

                if (v43 == 42)
                {
                  *(a2 + 1) = v23 + 1;
LABEL_102:
                  *(this + 33) |= 0x10u;
                  v44 = *(this + 9);
                  if (!v44)
                  {
                    operator new();
                  }

                  v71[0] = 0;
                  v45 = *(a2 + 1);
                  if (v45 >= *(a2 + 2) || *v45 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v71[0] = *v45;
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
                  if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v48 = *(a2 + 14);
                  v14 = __OFSUB__(v48, 1);
                  v49 = v48 - 1;
                  if (v49 < 0 == v14)
                  {
                    *(a2 + 14) = v49;
                  }

                  v50 = *(a2 + 1);
                  if (v50 < *(a2 + 2) && *v50 == 49)
                  {
                    *(a2 + 1) = v50 + 1;
LABEL_116:
                    *v71 = 0;
                    if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
                    {
                      return 0;
                    }

                    *(this + 10) = *v71;
                    *(this + 33) |= 0x20u;
                    v51 = *(a2 + 1);
                    if (v51 < *(a2 + 2) && *v51 == 57)
                    {
                      *(a2 + 1) = v51 + 1;
LABEL_120:
                      *v71 = 0;
                      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
                      {
                        return 0;
                      }

                      *(this + 11) = *v71;
                      v10 = *(this + 33) | 0x40;
                      *(this + 33) = v10;
                      v52 = *(a2 + 1);
                      if (v52 < *(a2 + 2) && *v52 == 66)
                      {
                        *(a2 + 1) = v52 + 1;
                        goto LABEL_124;
                      }
                    }
                  }
                }
              }

              break;
            }
          }
        }

        else
        {
          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_39;
            }

            goto LABEL_52;
          }

          if (v7 != 2)
          {
            goto LABEL_39;
          }

          *(this + 33) |= 1u;
          v8 = *(this + 1);
          if (!v8)
          {
            operator new();
          }

          v71[0] = 0;
          v9 = *(a2 + 1);
          if (v9 >= *(a2 + 2) || *v9 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v9;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
          if (v16 < *(a2 + 2) && *v16 == 18)
          {
            *(a2 + 1) = v16 + 1;
LABEL_52:
            *(this + 33) |= 2u;
            v17 = *(this + 2);
            if (!v17)
            {
              operator new();
            }

            v71[0] = 0;
            v18 = *(a2 + 1);
            if (v18 >= *(a2 + 2) || *v18 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
              {
                return 0;
              }
            }

            else
            {
              v71[0] = *v18;
              *(a2 + 1) = v18 + 1;
            }

            v19 = *(a2 + 14);
            v20 = *(a2 + 15);
            *(a2 + 14) = v19 + 1;
            if (v19 >= v20)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v21 = *(a2 + 14);
            v14 = __OFSUB__(v21, 1);
            v22 = v21 - 1;
            if (v22 < 0 == v14)
            {
              *(a2 + 14) = v22;
            }

            v23 = *(a2 + 1);
            if (v23 < *(a2 + 2) && *v23 == 26)
            {
LABEL_65:
              *(a2 + 1) = v23 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v6 == 7)
      {
        if (v7 != 1)
        {
          goto LABEL_39;
        }

        goto LABEL_120;
      }

      if (v6 == 8)
      {
        if (v7 != 2)
        {
          goto LABEL_39;
        }

        v10 = *(this + 33);
LABEL_124:
        *(this + 33) = v10 | 0x80;
        v53 = *(this + 12);
        if (!v53)
        {
          operator new();
        }

        v71[0] = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
          {
            return 0;
          }
        }

        else
        {
          v71[0] = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v14 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v14)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 < *(a2 + 2) && *v59 == 74)
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v6 != 9 || v7 != 2)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v60 = *(this + 29);
          v61 = *(this + 28);
          if (v61 >= v60)
          {
            if (v60 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v60 = *(this + 29);
            }

            *(this + 29) = v60 + 1;
            operator new();
          }

          v62 = *(this + 13);
          *(this + 28) = v61 + 1;
          v63 = *(v62 + 8 * v61);
          v71[0] = 0;
          v64 = *(a2 + 1);
          if (v64 >= *(a2 + 2) || *v64 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
            {
              return 0;
            }
          }

          else
          {
            v71[0] = *v64;
            *(a2 + 1) = v64 + 1;
          }

          v65 = *(a2 + 14);
          v66 = *(a2 + 15);
          *(a2 + 14) = v65 + 1;
          if (v65 >= v66)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::AntennaPhaseCenterSvOffset::MergePartialFromCodedStream(v63, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v67 = *(a2 + 14);
          v14 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v68 < 0 == v14)
          {
            *(a2 + 14) = v68;
          }

          v59 = *(a2 + 1);
          v69 = *(a2 + 2);
          if (v59 >= v69 || *v59 != 74)
          {
            break;
          }

LABEL_137:
          *(a2 + 1) = v59 + 1;
        }

        if (v59 == v69 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      if (v7 != 2)
      {
        goto LABEL_39;
      }

      goto LABEL_102;
    }

    if (v6 == 6 && v7 == 1)
    {
      goto LABEL_116;
    }

LABEL_39:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceivedTimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v26 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
        {
          return 0;
        }
      }

      else
      {
        v26 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v11 = *(a2 + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(a2 + 14) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        do
        {
          *(a2 + 1) = v14 + 1;
LABEL_27:
          v15 = *(this + 7);
          v16 = *(this + 6);
          if (v16 >= v15)
          {
            if (v15 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v15 = *(this + 7);
            }

            *(this + 7) = v15 + 1;
            operator new();
          }

          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v27 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v19;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v12 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v12)
          {
            *(a2 + 14) = v23;
          }

          v14 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v14 < v24 && *v14 == 18);
        if (v14 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_27;
    }

LABEL_15:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Clock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v10 >= v9 || (v11 = *v10, v11 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v11;
              v12 = v10 + 1;
              *(a2 + 1) = v12;
            }

            v8 = *(this + 11) | 1;
            *(this + 11) = v8;
            if (v12 < v9 && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_20;
            }

            v8 = *(this + 11);
LABEL_28:
            *(this + 11) = v8 | 2;
            v14 = *(this + 2);
            if (!v14)
            {
              operator new();
            }

            v35 = 0;
            v15 = *(a2 + 1);
            if (v15 >= *(a2 + 2) || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v15;
              *(a2 + 1) = v15 + 1;
            }

            v16 = *(a2 + 14);
            v17 = *(a2 + 15);
            *(a2 + 14) = v16 + 1;
            if (v16 >= v17)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
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
            if (v21 < *(a2 + 2) && *v21 == 26)
            {
              *(a2 + 1) = v21 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(this + 11) |= 4u;
        v22 = *(this + 3);
        if (!v22)
        {
          operator new();
        }

        v36 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = *v23;
          *(a2 + 1) = v23 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v19 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v19)
        {
          *(a2 + 14) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 < *(a2 + 2) && *v28 == 34)
        {
          *(a2 + 1) = v28 + 1;
          goto LABEL_56;
        }
      }

      if (v6 != 4 || v7 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 11) |= 8u;
      v29 = *(this + 4);
      if (!v29)
      {
        operator new();
      }

      v37 = 0;
      v30 = *(a2 + 1);
      if (v30 >= *(a2 + 2) || *v30 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
        {
          return 0;
        }
      }

      else
      {
        v37 = *v30;
        *(a2 + 1) = v30 + 1;
      }

      v31 = *(a2 + 14);
      v32 = *(a2 + 15);
      *(a2 + 14) = v31 + 1;
      if (v31 >= v32)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v33 = *(a2 + 14);
      v19 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v19)
      {
        *(a2 + 14) = v34;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v6 == 4)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v13;
          *(this + 13) |= 8u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 41)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v13;
          *(this + 13) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v13;
      *(this + 13) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_28:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 13) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
LABEL_32:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v13;
          *(this + 13) |= 4u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 33)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_28;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v6 == 4)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v16;
          *(this + 10) |= 8u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 45)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v16[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v16[0];
          *(this + 10) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      *v16 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v16);
        if (!result)
        {
          return result;
        }

        v10 = *v16;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 1) = v10;
      *(this + 10) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        v16[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v16[0];
        *(this + 10) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 29)
        {
          *(a2 + 1) = v13 + 1;
LABEL_36:
          v16[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v16[0];
          *(this + 10) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 33)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 5)
    {
      goto LABEL_32;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Measurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    if (v4 < *(a2 + 2))
    {
      TagFallback = *v4;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        *(this + 28) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v85 = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v21 = *(a2 + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(a2 + 14) = v23;
        }

        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 18)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
        goto LABEL_50;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(this + 28) |= 2u;
        v25 = *(this + 2);
        if (!v25)
        {
          operator new();
        }

        v85 = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v26;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v22 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v22)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v31 >= v9 || *v31 != 24)
        {
          continue;
        }

        v13 = v31 + 1;
        *(a2 + 1) = v13;
LABEL_64:
        if (v13 >= v9 || (v32 = *v13, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v32;
          v33 = v13 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 28) |= 4u;
        if (v33 >= v9 || *v33 != 32)
        {
          continue;
        }

        v14 = v33 + 1;
        *(a2 + 1) = v14;
LABEL_72:
        if (v14 >= v9 || (v35 = *v14, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v35;
          v36 = v14 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 28) |= 8u;
        if (v36 >= v9 || *v36 != 40)
        {
          continue;
        }

        v10 = v36 + 1;
        *(a2 + 1) = v10;
LABEL_80:
        if (v10 >= v9 || (v37 = *v10, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v37;
          v38 = v10 + 1;
          *(a2 + 1) = v38;
        }

        v15 = *(this + 28) | 0x10;
        *(this + 28) = v15;
        if (v38 >= v9 || *v38 != 50)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_88:
        *(this + 28) = v15 | 0x20;
        v39 = *(this + 6);
        if (!v39)
        {
          operator new();
        }

        v85 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v43 = *(a2 + 14);
        v22 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v22)
        {
          *(a2 + 14) = v44;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 58)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_102:
        *(this + 28) |= 0x40u;
        v46 = *(this + 7);
        if (!v46)
        {
          operator new();
        }

        v85 = 0;
        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v47;
          *(a2 + 1) = v47 + 1;
        }

        v48 = *(a2 + 14);
        v49 = *(a2 + 15);
        *(a2 + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v50 = *(a2 + 14);
        v22 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v22)
        {
          *(a2 + 14) = v51;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 66)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_116:
        *(this + 28) |= 0x80u;
        v53 = *(this + 8);
        if (!v53)
        {
          operator new();
        }

        v85 = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v22 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v22)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 74)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_130:
        *(this + 28) |= 0x100u;
        v60 = *(this + 9);
        if (!v60)
        {
          operator new();
        }

        v85 = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v61;
          *(a2 + 1) = v61 + 1;
        }

        v62 = *(a2 + 14);
        v63 = *(a2 + 15);
        *(a2 + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v22 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v22)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (v66 >= *(a2 + 2) || *v66 != 85)
        {
          continue;
        }

        *(a2 + 1) = v66 + 1;
LABEL_144:
        v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v85) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v85;
        *(this + 28) |= 0x200u;
        v67 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v67 >= v17 || *v67 != 88)
        {
          continue;
        }

        v18 = v67 + 1;
        *(a2 + 1) = v18;
LABEL_148:
        v85 = 0;
        if (v18 >= v17 || (v68 = *v18, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
          if (!result)
          {
            return result;
          }

          v68 = v85;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v68 <= 4)
        {
          *(this + 28) |= 0x400u;
          *(this + 21) = v68;
        }

        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 != 98)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_158:
        *(this + 28) |= 0x800u;
        v70 = *(this + 11);
        if (!v70)
        {
          operator new();
        }

        v85 = 0;
        v71 = *(a2 + 1);
        if (v71 >= *(a2 + 2) || *v71 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v71;
          *(a2 + 1) = v71 + 1;
        }

        v72 = *(a2 + 14);
        v73 = *(a2 + 15);
        *(a2 + 14) = v72 + 1;
        if (v72 >= v73)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v70, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v74 = *(a2 + 14);
        v22 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v22)
        {
          *(a2 + 14) = v75;
        }

        v76 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v76 >= v11 || *v76 != 104)
        {
          continue;
        }

        v12 = v76 + 1;
        *(a2 + 1) = v12;
LABEL_172:
        v85 = 0;
        if (v12 >= v11 || (v77 = *v12, (v77 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
          if (!result)
          {
            return result;
          }

          v77 = v85;
          v78 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v78 = v12 + 1;
          *(a2 + 1) = v78;
        }

        *(this + 104) = v77 != 0;
        v16 = *(this + 28) | 0x1000;
        *(this + 28) = v16;
        if (v78 >= v11 || *v78 != 114)
        {
          continue;
        }

        *(a2 + 1) = v78 + 1;
LABEL_180:
        *(this + 28) = v16 | 0x2000;
        v79 = *(this + 12);
        if (!v79)
        {
          operator new();
        }

        v85 = 0;
        v80 = *(a2 + 1);
        if (v80 >= *(a2 + 2) || *v80 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v80;
          *(a2 + 1) = v80 + 1;
        }

        v81 = *(a2 + 14);
        v82 = *(a2 + 15);
        *(a2 + 14) = v81 + 1;
        if (v81 >= v82)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(v79, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v83 = *(a2 + 14);
        v22 = __OFSUB__(v83, 1);
        v84 = v83 - 1;
        if (v84 < 0 == v22)
        {
          *(a2 + 14) = v84;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        v15 = *(this + 28);
        goto LABEL_88;
      case 7u:
        if (v6 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v6 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v6 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_148;
      case 0xCu:
        if (v6 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_172;
      case 0xEu:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(this + 28);
        goto LABEL_180;
      default:
LABEL_38:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(this + 6);
          goto LABEL_22;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      v11 = *(this + 6) | 1;
      *(this + 6) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(a2 + 1) = v10 + 1;
LABEL_22:
    *(this + 6) = v11 | 2;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v20 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v14;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (TagFallback >> 3 > 5)
        {
          if (v6 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_77;
            }
          }

          else if (v6 == 7 && (TagFallback & 7) == 0)
          {
            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_85;
          }

          goto LABEL_30;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v16 = *(a2 + 1);
          v8 = *(a2 + 2);
LABEL_61:
          if (v16 >= v8 || (v30 = *v16, v30 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v31 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 6) = v30;
            v31 = v16 + 1;
            *(a2 + 1) = v31;
          }

          *(this + 11) |= 8u;
          if (v31 < v8 && *v31 == 40)
          {
            v9 = v31 + 1;
            *(a2 + 1) = v9;
LABEL_69:
            if (v9 >= v8 || (v32 = *v9, v32 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
              if (!result)
              {
                return result;
              }

              v33 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 7) = v32;
              v33 = v9 + 1;
              *(a2 + 1) = v33;
            }

            *(this + 11) |= 0x10u;
            if (v33 < v8 && *v33 == 48)
            {
              v17 = v33 + 1;
              *(a2 + 1) = v17;
LABEL_77:
              if (v17 >= v8 || (v34 = *v17, v34 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v35 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v34;
                v35 = v17 + 1;
                *(a2 + 1) = v35;
              }

              *(this + 11) |= 0x20u;
              if (v35 < v8 && *v35 == 56)
              {
                v11 = v35 + 1;
                *(a2 + 1) = v11;
LABEL_85:
                if (v11 >= v8 || (v36 = *v11, v36 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  *(this + 9) = v36;
                  v37 = v11 + 1;
                  *(a2 + 1) = v37;
                }

                *(this + 11) |= 0x40u;
                if (v37 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

        else
        {
          if (v6 == 5 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_69;
          }

LABEL_30:
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

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v13 = *(a2 + 1);
      v12 = *(a2 + 2);
      if (v13 >= v12 || (v14 = *v13, v14 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v12 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
      }

      v18 = *(this + 11) | 1;
      *(this + 11) = v18;
      if (v15 < v12 && *v15 == 18)
      {
        *(a2 + 1) = v15 + 1;
        goto LABEL_39;
      }
    }

    if (v6 != 2)
    {
      if (v6 != 3 || (TagFallback & 7) != 0)
      {
        goto LABEL_30;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_53;
    }

    if (v7 != 2)
    {
      goto LABEL_30;
    }

    v18 = *(this + 11);
LABEL_39:
    *(this + 11) = v18 | 2;
    v20 = *(this + 1);
    if (!v20)
    {
      operator new();
    }

    v38 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38))
      {
        return 0;
      }
    }

    else
    {
      v38 = *v21;
      *(a2 + 1) = v21 + 1;
    }

    v22 = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v24 = *(a2 + 14);
    v25 = __OFSUB__(v24, 1);
    v26 = v24 - 1;
    if (v26 < 0 == v25)
    {
      *(a2 + 14) = v26;
    }

    v27 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v27 < v8 && *v27 == 24)
    {
      v10 = v27 + 1;
      *(a2 + 1) = v10;
LABEL_53:
      if (v10 >= v8 || (v28 = *v10, v28 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v28;
        v29 = v10 + 1;
        *(a2 + 1) = v29;
      }

      *(this + 11) |= 4u;
      if (v29 < v8 && *v29 == 32)
      {
        v16 = v29 + 1;
        *(a2 + 1) = v16;
        goto LABEL_61;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 2)
          {
            if (v6 != 1)
            {
              if (v6 != 2 || v7 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_53;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_43;
            }

            v82 = 0;
            v8 = *(a2 + 1);
            if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82);
              if (!result)
              {
                return result;
              }

              v9 = v82;
            }

            else
            {
              *(a2 + 1) = v8 + 1;
            }

            if (v9 <= 0xC)
            {
              *(this + 24) |= 1u;
              *(this + 22) = v9;
            }

            v11 = *(a2 + 1);
            if (v11 < *(a2 + 2) && *v11 == 18)
            {
              *(a2 + 1) = v11 + 1;
LABEL_53:
              *(this + 24) |= 2u;
              v12 = *(this + 1);
              if (!v12)
              {
                operator new();
              }

              v82 = 0;
              v13 = *(a2 + 1);
              if (v13 >= *(a2 + 2) || *v13 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v13;
                *(a2 + 1) = v13 + 1;
              }

              v14 = *(a2 + 14);
              v15 = *(a2 + 15);
              *(a2 + 14) = v14 + 1;
              if (v14 >= v15)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v12, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v16 = *(a2 + 14);
              v17 = __OFSUB__(v16, 1);
              v18 = v16 - 1;
              if (v18 < 0 == v17)
              {
                *(a2 + 14) = v18;
              }

              v19 = *(a2 + 1);
              if (v19 < *(a2 + 2) && *v19 == 26)
              {
                *(a2 + 1) = v19 + 1;
LABEL_67:
                *(this + 24) |= 4u;
                v20 = *(this + 2);
                if (!v20)
                {
                  operator new();
                }

                v82 = 0;
                v21 = *(a2 + 1);
                if (v21 >= *(a2 + 2) || *v21 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                  {
                    return 0;
                  }
                }

                else
                {
                  v82 = *v21;
                  *(a2 + 1) = v21 + 1;
                }

                v22 = *(a2 + 14);
                v23 = *(a2 + 15);
                *(a2 + 14) = v22 + 1;
                if (v22 >= v23)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL2CSyncState::MergePartialFromCodedStream(v20, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v24 = *(a2 + 14);
                v17 = __OFSUB__(v24, 1);
                v25 = v24 - 1;
                if (v25 < 0 == v17)
                {
                  *(a2 + 14) = v25;
                }

                v26 = *(a2 + 1);
                if (v26 < *(a2 + 2) && *v26 == 34)
                {
                  *(a2 + 1) = v26 + 1;
                  goto LABEL_81;
                }
              }
            }
          }

          else
          {
            if (v6 == 3)
            {
              if (v7 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_67;
            }

            if (v6 != 4)
            {
              if (v6 != 5 || v7 != 2)
              {
                goto LABEL_43;
              }

              goto LABEL_95;
            }

            if (v7 != 2)
            {
              goto LABEL_43;
            }

LABEL_81:
            *(this + 24) |= 8u;
            v27 = *(this + 3);
            if (!v27)
            {
              operator new();
            }

            v82 = 0;
            v28 = *(a2 + 1);
            if (v28 >= *(a2 + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
              {
                return 0;
              }
            }

            else
            {
              v82 = *v28;
              *(a2 + 1) = v28 + 1;
            }

            v29 = *(a2 + 14);
            v30 = *(a2 + 15);
            *(a2 + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v17 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v17)
            {
              *(a2 + 14) = v32;
            }

            v33 = *(a2 + 1);
            if (v33 < *(a2 + 2) && *v33 == 42)
            {
              *(a2 + 1) = v33 + 1;
LABEL_95:
              *(this + 24) |= 0x10u;
              v34 = *(this + 4);
              if (!v34)
              {
                operator new();
              }

              v82 = 0;
              v35 = *(a2 + 1);
              if (v35 >= *(a2 + 2) || *v35 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                {
                  return 0;
                }
              }

              else
              {
                v82 = *v35;
                *(a2 + 1) = v35 + 1;
              }

              v36 = *(a2 + 14);
              v37 = *(a2 + 15);
              *(a2 + 14) = v36 + 1;
              if (v36 >= v37)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(v34, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v38 = *(a2 + 14);
              v17 = __OFSUB__(v38, 1);
              v39 = v38 - 1;
              if (v39 < 0 == v17)
              {
                *(a2 + 14) = v39;
              }

              v40 = *(a2 + 1);
              if (v40 < *(a2 + 2) && *v40 == 50)
              {
                *(a2 + 1) = v40 + 1;
LABEL_109:
                *(this + 24) |= 0x20u;
                v41 = *(this + 5);
                if (!v41)
                {
                  operator new();
                }

                v82 = 0;
                v42 = *(a2 + 1);
                if (v42 >= *(a2 + 2) || *v42 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
                  {
                    return 0;
                  }
                }

                else
                {
                  v82 = *v42;
                  *(a2 + 1) = v42 + 1;
                }

                v43 = *(a2 + 14);
                v44 = *(a2 + 15);
                *(a2 + 14) = v43 + 1;
                if (v43 >= v44)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v45 = *(a2 + 14);
                v17 = __OFSUB__(v45, 1);
                v46 = v45 - 1;
                if (v46 < 0 == v17)
                {
                  *(a2 + 14) = v46;
                }

                v47 = *(a2 + 1);
                if (v47 < *(a2 + 2) && *v47 == 58)
                {
                  *(a2 + 1) = v47 + 1;
                  goto LABEL_123;
                }
              }
            }
          }
        }

        if (TagFallback >> 3 <= 8)
        {
          break;
        }

        if (v6 == 9)
        {
          if (v7 != 2)
          {
            goto LABEL_43;
          }

LABEL_151:
          *(this + 24) |= 0x100u;
          v62 = *(this + 8);
          if (!v62)
          {
            operator new();
          }

          v82 = 0;
          v63 = *(a2 + 1);
          if (v63 >= *(a2 + 2) || *v63 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
            {
              return 0;
            }
          }

          else
          {
            v82 = *v63;
            *(a2 + 1) = v63 + 1;
          }

          v64 = *(a2 + 14);
          v65 = *(a2 + 15);
          *(a2 + 14) = v64 + 1;
          if (v64 >= v65)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(v62, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v66 = *(a2 + 14);
          v17 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (v67 < 0 == v17)
          {
            *(a2 + 14) = v67;
          }

          v68 = *(a2 + 1);
          if (v68 < *(a2 + 2) && *v68 == 82)
          {
            *(a2 + 1) = v68 + 1;
LABEL_165:
            *(this + 24) |= 0x200u;
            v69 = *(this + 9);
            if (!v69)
            {
              operator new();
            }

            v82 = 0;
            v70 = *(a2 + 1);
            if (v70 >= *(a2 + 2) || *v70 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
              {
                return 0;
              }
            }

            else
            {
              v82 = *v70;
              *(a2 + 1) = v70 + 1;
            }

            v71 = *(a2 + 14);
            v72 = *(a2 + 15);
            *(a2 + 14) = v71 + 1;
            if (v71 >= v72)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SbasL1SyncState::MergePartialFromCodedStream(v69, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v73 = *(a2 + 14);
            v17 = __OFSUB__(v73, 1);
            v74 = v73 - 1;
            if (v74 < 0 == v17)
            {
              *(a2 + 14) = v74;
            }

            v75 = *(a2 + 1);
            if (v75 < *(a2 + 2) && *v75 == 90)
            {
              *(a2 + 1) = v75 + 1;
              goto LABEL_179;
            }
          }
        }

        else
        {
          if (v6 == 10)
          {
            if (v7 == 2)
            {
              goto LABEL_165;
            }

            goto LABEL_43;
          }

          if (v6 != 11 || v7 != 2)
          {
            goto LABEL_43;
          }

LABEL_179:
          *(this + 24) |= 0x400u;
          v76 = *(this + 10);
          if (!v76)
          {
            operator new();
          }

          v82 = 0;
          v77 = *(a2 + 1);
          if (v77 >= *(a2 + 2) || *v77 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
            {
              return 0;
            }
          }

          else
          {
            v82 = *v77;
            *(a2 + 1) = v77 + 1;
          }

          v78 = *(a2 + 14);
          v79 = *(a2 + 15);
          *(a2 + 14) = v78 + 1;
          if (v78 >= v79)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(v76, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v80 = *(a2 + 14);
          v17 = __OFSUB__(v80, 1);
          v81 = v80 - 1;
          if (v81 < 0 == v17)
          {
            *(a2 + 14) = v81;
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

      if (v6 == 6)
      {
        if (v7 != 2)
        {
          goto LABEL_43;
        }

        goto LABEL_109;
      }

      if (v6 != 7)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_43;
      }

LABEL_123:
      *(this + 24) |= 0x40u;
      v48 = *(this + 6);
      if (!v48)
      {
        operator new();
      }

      v82 = 0;
      v49 = *(a2 + 1);
      if (v49 >= *(a2 + 2) || *v49 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
        {
          return 0;
        }
      }

      else
      {
        v82 = *v49;
        *(a2 + 1) = v49 + 1;
      }

      v50 = *(a2 + 14);
      v51 = *(a2 + 15);
      *(a2 + 14) = v50 + 1;
      if (v50 >= v51)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v52 = *(a2 + 14);
      v17 = __OFSUB__(v52, 1);
      v53 = v52 - 1;
      if (v53 < 0 == v17)
      {
        *(a2 + 14) = v53;
      }

      v54 = *(a2 + 1);
      if (v54 < *(a2 + 2) && *v54 == 66)
      {
        *(a2 + 1) = v54 + 1;
LABEL_137:
        *(this + 24) |= 0x80u;
        v55 = *(this + 7);
        if (!v55)
        {
          operator new();
        }

        v82 = 0;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v82))
          {
            return 0;
          }
        }

        else
        {
          v82 = *v56;
          *(a2 + 1) = v56 + 1;
        }

        v57 = *(a2 + 14);
        v58 = *(a2 + 15);
        *(a2 + 14) = v57 + 1;
        if (v57 >= v58)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(v55, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v59 = *(a2 + 14);
        v17 = __OFSUB__(v59, 1);
        v60 = v59 - 1;
        if (v60 < 0 == v17)
        {
          *(a2 + 14) = v60;
        }

        v61 = *(a2 + 1);
        if (v61 < *(a2 + 2) && *v61 == 74)
        {
          *(a2 + 1) = v61 + 1;
          goto LABEL_151;
        }
      }
    }

    if (v6 == 8 && v7 == 2)
    {
      goto LABEL_137;
    }

LABEL_43:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsL1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) = v11 != 0;
      *(this + 4) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 11) = v18 != 0;
            *(this + 4) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_24:
        v15[0] = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
          if (!result)
          {
            return result;
          }

          v12 = v15[0];
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 24) = v12 != 0;
        *(this + 8) |= 4u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v15;
      *(this + 8) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v15;
        *(this + 8) |= 2u;
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 < v9 && *v10 == 24)
        {
          v11 = v10 + 1;
          *(a2 + 1) = v11;
          goto LABEL_24;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_20;
        }

        v11 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_24:
        v15[0] = 0;
        if (v11 >= v9 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
          if (!result)
          {
            return result;
          }

          v12 = v15[0];
          v13 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v13 = v11 + 1;
          *(a2 + 1) = v13;
        }

        *(this + 24) = v12 != 0;
        *(this + 8) |= 4u;
        if (v13 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v15;
      *(this + 8) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v15;
        *(this + 8) |= 2u;
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 < v9 && *v10 == 24)
        {
          v11 = v10 + 1;
          *(a2 + 1) = v11;
          goto LABEL_24;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsL5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) = v11 != 0;
      *(this + 4) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 11) = v18 != 0;
            *(this + 4) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 == 2)
        {
          v11 = *(this + 6);
          goto LABEL_22;
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v20 = 0;
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20);
        if (!result)
        {
          return result;
        }

        v9 = v20;
        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 4) = v9;
      v11 = *(this + 6) | 1;
      *(this + 6) = v11;
    }

    while (v10 >= v7 || *v10 != 18);
    *(a2 + 1) = v10 + 1;
LABEL_22:
    *(this + 6) = v11 | 2;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v21 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v14;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSlotInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 5) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        v13 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v13);
          if (!result)
          {
            return result;
          }

          v11 = v13;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v11 <= 4)
        {
          *(this + 5) |= 2u;
          *(this + 3) = v11;
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

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassL1fSyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v24 = 0;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v13 = v24;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) = v13 != 0;
        *(this + 5) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_32:
          v24 = 0;
          if (v9 >= v7 || (v15 = *v9, (v15 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
            if (!result)
            {
              return result;
            }

            v15 = v24;
            v16 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v16 = v9 + 1;
            *(a2 + 1) = v16;
          }

          *(this + 9) = v15 != 0;
          *(this + 5) |= 2u;
          if (v16 < v7 && *v16 == 24)
          {
            v10 = v16 + 1;
            *(a2 + 1) = v10;
LABEL_40:
            v24 = 0;
            if (v10 >= v7 || (v17 = *v10, (v17 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
              if (!result)
              {
                return result;
              }

              v17 = v24;
              v18 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v18 = v10 + 1;
              *(a2 + 1) = v18;
            }

            *(this + 10) = v17 != 0;
            *(this + 5) |= 4u;
            if (v18 < v7 && *v18 == 32)
            {
              v11 = v18 + 1;
              *(a2 + 1) = v11;
              goto LABEL_48;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_48:
      v24 = 0;
      if (v11 >= v7 || (v19 = *v11, (v19 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
        if (!result)
        {
          return result;
        }

        v19 = v24;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v20 = v11 + 1;
        *(a2 + 1) = v20;
      }

      *(this + 11) = v19 != 0;
      *(this + 5) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v8;
LABEL_56:
        v24 = 0;
        if (v8 >= v7 || (v21 = *v8, (v21 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v21 = v24;
          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v22 = v8 + 1;
          *(a2 + 1) = v22;
        }

        *(this + 12) = v21 != 0;
        *(this + 5) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_56;
    }

LABEL_21:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PhaseTracking *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_32;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v12 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v12 >= v10 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 12) |= 1u;
        if (v14 < v10 && *v14 == 16)
        {
          v11 = v14 + 1;
          *(a2 + 1) = v11;
LABEL_32:
          if (v11 >= v10 || (v16 = *v11, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v10 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v16;
            v17 = v11 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 12) |= 2u;
          if (v17 < v10 && *v17 == 25)
          {
            *(a2 + 1) = v17 + 1;
LABEL_40:
            *v22 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v22) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v22;
            *(this + 12) |= 4u;
            v18 = *(a2 + 1);
            if (v18 < *(a2 + 2) && *v18 == 33)
            {
              *(a2 + 1) = v18 + 1;
              goto LABEL_44;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

LABEL_44:
      *v22 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v22) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v22;
      *(this + 12) |= 8u;
      v19 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v19 < v8 && *v19 == 40)
      {
        v9 = v19 + 1;
        *(a2 + 1) = v9;
LABEL_48:
        v22[0] = 0;
        if (v9 >= v8 || (v20 = *v9, (v20 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v22);
          if (!result)
          {
            return result;
          }

          v20 = v22[0];
          v21 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v21 = v9 + 1;
          *(a2 + 1) = v21;
        }

        *(this + 40) = v20 != 0;
        *(this + 12) |= 0x10u;
        if (v21 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_48;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB2SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) = v11 != 0;
      *(this + 4) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 11) = v18 != 0;
            *(this + 4) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementExtension *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  while (2)
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

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 5)
        {
          goto LABEL_50;
        }

        v77 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v77;
        *(this + 29) |= 1u;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 != 21)
        {
          continue;
        }

        *(a2 + 1) = v8 + 1;
        goto LABEL_32;
      case 2u:
        if (v7 != 5)
        {
          goto LABEL_50;
        }

LABEL_32:
        v77 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v77;
        v13 = *(this + 29) | 2;
        *(this + 29) = v13;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 != 26)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
LABEL_36:
        *(this + 29) = v13 | 4;
        v17 = *(this + 2);
        if (!v17)
        {
          operator new();
        }

        v77 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v28 < 0 == v27)
        {
          *(a2 + 14) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 34)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_63:
        *(this + 29) |= 8u;
        v30 = *(this + 3);
        if (!v30)
        {
          operator new();
        }

        v77 = 0;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v31;
          *(a2 + 1) = v31 + 1;
        }

        v32 = *(a2 + 14);
        v33 = *(a2 + 15);
        *(a2 + 14) = v32 + 1;
        if (v32 >= v33)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v34 = *(a2 + 14);
        v27 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v27)
        {
          *(a2 + 14) = v35;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 42)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_77:
        *(this + 29) |= 0x10u;
        v37 = *(this + 4);
        if (!v37)
        {
          operator new();
        }

        v77 = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v38;
          *(a2 + 1) = v38 + 1;
        }

        v39 = *(a2 + 14);
        v40 = *(a2 + 15);
        *(a2 + 14) = v39 + 1;
        if (v39 >= v40)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v41 = *(a2 + 14);
        v27 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v27)
        {
          *(a2 + 14) = v42;
        }

        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 50)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_91:
        *(this + 29) |= 0x20u;
        v44 = *(this + 5);
        if (!v44)
        {
          operator new();
        }

        v77 = 0;
        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v45;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v48 = *(a2 + 14);
        v27 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v27)
        {
          *(a2 + 14) = v49;
        }

        v50 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v50 >= v14 || *v50 != 56)
        {
          continue;
        }

        v20 = v50 + 1;
        *(a2 + 1) = v20;
LABEL_105:
        if (v20 >= v14 || (v51 = *v20, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v51;
          v52 = v20 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 29) |= 0x40u;
        if (v52 >= v14 || *v52 != 64)
        {
          continue;
        }

        v15 = v52 + 1;
        *(a2 + 1) = v15;
LABEL_113:
        if (v15 >= v14 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v54;
          v55 = v15 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 29) |= 0x80u;
        if (v55 >= v14 || *v55 != 72)
        {
          continue;
        }

        v23 = v55 + 1;
        *(a2 + 1) = v23;
LABEL_121:
        v77 = 0;
        if (v23 >= v14 || (v56 = *v23, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77);
          if (!result)
          {
            return result;
          }

          v56 = v77;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v56 <= 6)
        {
          *(this + 29) |= 0x100u;
          *(this + 14) = v56;
        }

        v57 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v57 >= v11 || *v57 != 80)
        {
          continue;
        }

        v12 = v57 + 1;
        *(a2 + 1) = v12;
LABEL_131:
        v77 = 0;
        if (v12 >= v11 || (v58 = *v12, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77);
          if (!result)
          {
            return result;
          }

          v58 = v77;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v58 <= 6)
        {
          *(this + 29) |= 0x200u;
          *(this + 15) = v58;
        }

        v59 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v59 >= v21 || *v59 != 88)
        {
          continue;
        }

        v22 = v59 + 1;
        *(a2 + 1) = v22;
LABEL_141:
        v77 = 0;
        if (v22 >= v21 || (v60 = *v22, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77);
          if (!result)
          {
            return result;
          }

          v60 = v77;
          v61 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v61 = v22 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 16) = v60;
        *(this + 29) |= 0x400u;
        if (v61 >= v21 || *v61 != 101)
        {
          continue;
        }

        *(a2 + 1) = v61 + 1;
LABEL_149:
        v77 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = v77;
        *(this + 29) |= 0x800u;
        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 != 109)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_153:
        v77 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77))
        {
          *(this + 18) = v77;
          v19 = *(this + 29) | 0x1000;
          *(this + 29) = v19;
          v63 = *(a2 + 1);
          if (v63 < *(a2 + 2) && *v63 == 114)
          {
            *(a2 + 1) = v63 + 1;
LABEL_157:
            *(this + 29) = v19 | 0x2000;
            if (*(this + 10) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v64 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v64 < v10 && *v64 == 120)
            {
              v9 = v64 + 1;
              *(a2 + 1) = v9;
LABEL_163:
              if (v9 >= v10 || (v65 = *v9, v65 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                if (!result)
                {
                  return result;
                }

                v66 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 19) = v65;
                v66 = (v9 + 1);
                *(a2 + 1) = v66;
              }

              *(this + 29) |= 0x4000u;
              if (v10 - v66 >= 2 && *v66 == 130 && v66[1] == 1)
              {
                do
                {
                  *(a2 + 1) = v66 + 2;
LABEL_172:
                  v67 = *(this + 25);
                  v68 = *(this + 24);
                  if (v68 >= v67)
                  {
                    if (v67 == *(this + 26))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
                      v67 = *(this + 25);
                    }

                    *(this + 25) = v67 + 1;
                    operator new();
                  }

                  v69 = *(this + 11);
                  *(this + 24) = v68 + 1;
                  v70 = *(v69 + 8 * v68);
                  v77 = 0;
                  v71 = *(a2 + 1);
                  if (v71 >= *(a2 + 2) || *v71 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v77 = *v71;
                    *(a2 + 1) = v71 + 1;
                  }

                  v72 = *(a2 + 14);
                  v73 = *(a2 + 15);
                  *(a2 + 14) = v72 + 1;
                  if (v72 >= v73)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(v70, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v74 = *(a2 + 14);
                  v27 = __OFSUB__(v74, 1);
                  v75 = v74 - 1;
                  if (v75 < 0 == v27)
                  {
                    *(a2 + 14) = v75;
                  }

                  v66 = *(a2 + 1);
                  v76 = *(a2 + 2);
                }

                while (v76 - v66 > 1 && *v66 == 130 && v66[1] == 1);
                if (v66 == v76 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_50;
        }

        v13 = *(this + 29);
        goto LABEL_36;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_63;
        }

        goto LABEL_50;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_50;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_91;
        }

        goto LABEL_50;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_113;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_121;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_131;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_141;
      case 0xCu:
        if (v7 == 5)
        {
          goto LABEL_149;
        }

        goto LABEL_50;
      case 0xDu:
        if (v7 == 5)
        {
          goto LABEL_153;
        }

        goto LABEL_50;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_50;
        }

        v19 = *(this + 29);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_163;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_50;
      default:
LABEL_50:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvMeasurementUsage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (v7 != 5)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v11;
        *(this + 6) |= 4u;
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

      if (v6 != 1 || v7 != 5)
      {
        goto LABEL_20;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = v13;
      *(this + 6) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 21)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v12;
        *(this + 6) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 29)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 5)
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SignalCorrelationPeak *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v7 == 5)
        {
          goto LABEL_44;
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

      *(this + 8) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v25 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
        {
          return 0;
        }
      }

      else
      {
        v25 = *v9;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
LABEL_30:
        *(this + 8) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v26 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v17;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
        if (v22 < *(a2 + 2) && *v22 == 29)
        {
          *(a2 + 1) = v22 + 1;
LABEL_44:
          v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v24) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v24;
          *(this + 8) |= 4u;
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

    if (v7 == 2)
    {
      goto LABEL_30;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BeidouB1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) = v11 != 0;
      *(this + 4) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 11) = v18 != 0;
            *(this + 4) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE1SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v13 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_45;
        }

        goto LABEL_20;
      }

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v21 = 0;
      v10 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v10 >= v7 || (v11 = *v10, (v11 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
        if (!result)
        {
          return result;
        }

        v11 = v21;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v12 = v10 + 1;
        *(a2 + 1) = v12;
      }

      *(this + 8) = v11 != 0;
      *(this + 4) |= 1u;
      if (v12 < v7 && *v12 == 16)
      {
        v8 = v12 + 1;
        *(a2 + 1) = v8;
LABEL_29:
        v21 = 0;
        if (v8 >= v7 || (v14 = *v8, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
          if (!result)
          {
            return result;
          }

          v14 = v21;
          v15 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v15 = v8 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 9) = v14 != 0;
        *(this + 4) |= 2u;
        if (v15 < v7 && *v15 == 24)
        {
          v13 = v15 + 1;
          *(a2 + 1) = v13;
LABEL_37:
          v21 = 0;
          if (v13 >= v7 || (v16 = *v13, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
            if (!result)
            {
              return result;
            }

            v16 = v21;
            v17 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v17 = v13 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 10) = v16 != 0;
          *(this + 4) |= 4u;
          if (v17 < v7 && *v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
LABEL_45:
            v21 = 0;
            if (v9 >= v7 || (v18 = *v9, (v18 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21);
              if (!result)
              {
                return result;
              }

              v18 = v21;
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v19 = v9 + 1;
              *(a2 + 1) = v19;
            }

            *(this + 11) = v18 != 0;
            *(this + 4) |= 8u;
            if (v19 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GalileoE5SyncState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 5)
        {
          if (TagFallback >> 3 <= 7)
          {
            if (v6 == 6)
            {
              if ((TagFallback & 7) == 0)
              {
                v15 = *(a2 + 1);
                v7 = *(a2 + 2);
                goto LABEL_81;
              }
            }

            else if (v6 == 7 && (TagFallback & 7) == 0)
            {
              v11 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_89;
            }
          }

          else if (v6 == 8)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_97;
            }
          }

          else if (v6 == 9)
          {
            if ((TagFallback & 7) == 0)
            {
              v19 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_105;
            }
          }

          else if (v6 == 10 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            goto LABEL_113;
          }

          goto LABEL_40;
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || (TagFallback & 7) != 0)
          {
            goto LABEL_40;
          }

          v10 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_49;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v39 = 0;
        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v13 = v39;
          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 8) = v13 != 0;
        *(this + 6) |= 1u;
        if (v14 < v7 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
LABEL_49:
          v39 = 0;
          if (v10 >= v7 || (v20 = *v10, (v20 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v20 = v39;
            v21 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v21 = v10 + 1;
            *(a2 + 1) = v21;
          }

          *(this + 9) = v20 != 0;
          *(this + 6) |= 2u;
          if (v21 < v7 && *v21 == 24)
          {
            v16 = v21 + 1;
            *(a2 + 1) = v16;
LABEL_57:
            v39 = 0;
            if (v16 >= v7 || (v22 = *v16, (v22 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v22 = v39;
              v23 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v23 = v16 + 1;
              *(a2 + 1) = v23;
            }

            *(this + 10) = v22 != 0;
            *(this + 6) |= 4u;
            if (v23 < v7 && *v23 == 32)
            {
              v18 = v23 + 1;
              *(a2 + 1) = v18;
              goto LABEL_65;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_57;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_40;
      }

      v18 = *(a2 + 1);
      v7 = *(a2 + 2);
LABEL_65:
      v39 = 0;
      if (v18 >= v7 || (v24 = *v18, (v24 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
        if (!result)
        {
          return result;
        }

        v24 = v39;
        v25 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        v25 = v18 + 1;
        *(a2 + 1) = v25;
      }

      *(this + 11) = v24 != 0;
      *(this + 6) |= 8u;
      if (v25 < v7 && *v25 == 40)
      {
        v8 = v25 + 1;
        *(a2 + 1) = v8;
LABEL_73:
        v39 = 0;
        if (v8 >= v7 || (v26 = *v8, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v26 = v39;
          v27 = *(a2 + 1);
          v7 = *(a2 + 2);
        }

        else
        {
          v27 = v8 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 12) = v26 != 0;
        *(this + 6) |= 0x10u;
        if (v27 < v7 && *v27 == 48)
        {
          v15 = v27 + 1;
          *(a2 + 1) = v15;
LABEL_81:
          v39 = 0;
          if (v15 >= v7 || (v28 = *v15, (v28 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v28 = v39;
            v29 = *(a2 + 1);
            v7 = *(a2 + 2);
          }

          else
          {
            v29 = v15 + 1;
            *(a2 + 1) = v29;
          }

          *(this + 13) = v28 != 0;
          *(this + 6) |= 0x20u;
          if (v29 < v7 && *v29 == 56)
          {
            v11 = v29 + 1;
            *(a2 + 1) = v11;
LABEL_89:
            v39 = 0;
            if (v11 >= v7 || (v30 = *v11, (v30 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v30 = v39;
              v31 = *(a2 + 1);
              v7 = *(a2 + 2);
            }

            else
            {
              v31 = v11 + 1;
              *(a2 + 1) = v31;
            }

            *(this + 14) = v30 != 0;
            *(this + 6) |= 0x40u;
            if (v31 < v7 && *v31 == 64)
            {
              v17 = v31 + 1;
              *(a2 + 1) = v17;
LABEL_97:
              v39 = 0;
              if (v17 >= v7 || (v32 = *v17, (v32 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v32 = v39;
                v33 = *(a2 + 1);
                v7 = *(a2 + 2);
              }

              else
              {
                v33 = v17 + 1;
                *(a2 + 1) = v33;
              }

              *(this + 15) = v32 != 0;
              *(this + 6) |= 0x80u;
              if (v33 < v7 && *v33 == 72)
              {
                v19 = v33 + 1;
                *(a2 + 1) = v19;
LABEL_105:
                v39 = 0;
                if (v19 >= v7 || (v34 = *v19, (v34 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v34 = v39;
                  v35 = *(a2 + 1);
                  v7 = *(a2 + 2);
                }

                else
                {
                  v35 = v19 + 1;
                  *(a2 + 1) = v35;
                }

                *(this + 16) = v34 != 0;
                *(this + 6) |= 0x100u;
                if (v35 < v7 && *v35 == 80)
                {
                  v9 = v35 + 1;
                  *(a2 + 1) = v9;
LABEL_113:
                  v39 = 0;
                  if (v9 >= v7 || (v36 = *v9, (v36 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                    if (!result)
                    {
                      return result;
                    }

                    v36 = v39;
                    v37 = *(a2 + 1);
                    v7 = *(a2 + 2);
                  }

                  else
                  {
                    v37 = v9 + 1;
                    *(a2 + 1) = v37;
                  }

                  *(this + 17) = v36 != 0;
                  *(this + 6) |= 0x200u;
                  if (v37 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      goto LABEL_73;
    }

LABEL_40:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
LABEL_1:
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_56;
        }

        *(this + 43) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v97[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
          {
            return 0;
          }
        }

        else
        {
          v97[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        *(a2 + 14) = v33 + 1;
        if (v33 >= v34)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v35 = *(a2 + 14);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v37 < 0 == v36)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 17)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
        goto LABEL_69;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v97;
        *(this + 43) |= 2u;
        v39 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v39 >= v15 || *v39 != 24)
        {
          continue;
        }

        v16 = v39 + 1;
        *(a2 + 1) = v16;
LABEL_73:
        v97[0] = 0;
        if (v16 >= v15 || (v40 = *v16, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v40 = v97[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v40 <= 6)
        {
          *(this + 43) |= 4u;
          *(this + 14) = v40;
        }

        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 34)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v42 + 1;
LABEL_83:
          v43 = *(this + 9);
          v44 = *(this + 8);
          if (v44 >= v43)
          {
            if (v43 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v43 = *(this + 9);
            }

            *(this + 9) = v43 + 1;
            operator new();
          }

          v45 = *(this + 3);
          *(this + 8) = v44 + 1;
          v46 = *(v45 + 8 * v44);
          v97[0] = 0;
          v47 = *(a2 + 1);
          if (v47 >= *(a2 + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
            {
              return 0;
            }
          }

          else
          {
            v97[0] = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v48 = *(a2 + 14);
          v49 = *(a2 + 15);
          *(a2 + 14) = v48 + 1;
          if (v48 >= v49)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v50 = *(a2 + 14);
          v36 = __OFSUB__(v50, 1);
          v51 = v50 - 1;
          if (v51 < 0 == v36)
          {
            *(a2 + 14) = v51;
          }

          v42 = *(a2 + 1);
          if (v42 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v52 = *v42;
        }

        while (v52 == 34);
        if (v52 != 41)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_101:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v97;
        *(this + 43) |= 0x10u;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 != 49)
        {
          continue;
        }

        *(a2 + 1) = v53 + 1;
LABEL_105:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v97;
        *(this + 43) |= 0x20u;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 57)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_109:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v97;
        *(this + 43) |= 0x40u;
        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 69)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_113:
        v97[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = v97[0];
        *(this + 43) |= 0x80u;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 77)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_117:
        v97[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v97[0];
        *(this + 43) |= 0x100u;
        v57 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v57 >= v25 || *v57 != 80)
        {
          continue;
        }

        v26 = v57 + 1;
        *(a2 + 1) = v26;
LABEL_121:
        v97[0] = 0;
        if (v26 >= v25 || (v58 = *v26, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v58 = v97[0];
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v58 <= 4)
        {
          *(this + 43) |= 0x200u;
          *(this + 21) = v58;
        }

        v59 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v59 >= v13 || *v59 != 88)
        {
          continue;
        }

        v14 = v59 + 1;
        *(a2 + 1) = v14;
LABEL_131:
        v97[0] = 0;
        if (v14 >= v13 || (v60 = *v14, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v60 = v97[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v60 <= 4)
        {
          *(this + 43) |= 0x400u;
          *(this + 22) = v60;
        }

        v61 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v61 >= v23 || *v61 != 96)
        {
          continue;
        }

        v24 = v61 + 1;
        *(a2 + 1) = v24;
LABEL_141:
        v97[0] = 0;
        if (v24 >= v23 || (v62 = *v24, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v62 = v97[0];
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v62 <= 4)
        {
          *(this + 43) |= 0x800u;
          *(this + 23) = v62;
        }

        v63 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v63 >= v19 || *v63 != 104)
        {
          continue;
        }

        v20 = v63 + 1;
        *(a2 + 1) = v20;
LABEL_151:
        v97[0] = 0;
        if (v20 >= v19 || (v64 = *v20, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v64 = v97[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v64 <= 4)
        {
          *(this + 43) |= 0x1000u;
          *(this + 24) = v64;
        }

        v65 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v65 >= v11 || *v65 != 112)
        {
          continue;
        }

        v12 = v65 + 1;
        *(a2 + 1) = v12;
LABEL_161:
        v97[0] = 0;
        if (v12 >= v11 || (v66 = *v12, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v66 = v97[0];
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v66 <= 4)
        {
          *(this + 43) |= 0x2000u;
          *(this + 25) = v66;
        }

        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v67 + 1;
LABEL_171:
          v68 = *(this + 29);
          v69 = *(this + 28);
          if (v69 >= v68)
          {
            if (v68 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v68 = *(this + 29);
            }

            *(this + 29) = v68 + 1;
            operator new();
          }

          v70 = *(this + 13);
          *(this + 28) = v69 + 1;
          v71 = *(v70 + 8 * v69);
          v97[0] = 0;
          v72 = *(a2 + 1);
          if (v72 >= *(a2 + 2) || *v72 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
            {
              return 0;
            }
          }

          else
          {
            v97[0] = *v72;
            *(a2 + 1) = v72 + 1;
          }

          v73 = *(a2 + 14);
          v74 = *(a2 + 15);
          *(a2 + 14) = v73 + 1;
          if (v73 >= v74)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v75 = *(a2 + 14);
          v36 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v36)
          {
            *(a2 + 14) = v76;
          }

          v67 = *(a2 + 1);
          v77 = *(a2 + 2);
        }

        while (v67 < v77 && *v67 == 122);
        if (v77 - v67 < 2 || *v67 != 130 || v67[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v67 + 2;
LABEL_191:
        *(this + 43) |= 0x8000u;
        v78 = *(this + 16);
        if (!v78)
        {
          operator new();
        }

        v97[0] = 0;
        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
          {
            return 0;
          }
        }

        else
        {
          v97[0] = *v79;
          *(a2 + 1) = v79 + 1;
        }

        v80 = *(a2 + 14);
        v81 = *(a2 + 15);
        *(a2 + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(v78, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v36 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v36)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v29 - v84 <= 1 || *v84 != 144 || v84[1] != 1)
        {
          continue;
        }

        v30 = (v84 + 2);
        *(a2 + 1) = v30;
LABEL_206:
        v97[0] = 0;
        if (v30 >= v29 || (v85 = *v30, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v85 = v97[0];
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (v85 <= 4)
        {
          *(this + 43) |= 0x10000u;
          *(this + 34) = v85;
        }

        v86 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v86 < 2 || *v86 != 152 || v86[1] != 1)
        {
          continue;
        }

        v28 = (v86 + 2);
        *(a2 + 1) = v28;
LABEL_217:
        v97[0] = 0;
        if (v28 >= v27 || (v87 = *v28, (v87 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v87 = v97[0];
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (v87 <= 4)
        {
          *(this + 43) |= 0x20000u;
          *(this + 35) = v87;
        }

        v88 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v88 < 2 || *v88 != 160 || v88[1] != 1)
        {
          continue;
        }

        v10 = (v88 + 2);
        *(a2 + 1) = v10;
LABEL_228:
        v97[0] = 0;
        if (v10 >= v9 || (v89 = *v10, (v89 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v89 = v97[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v89 <= 4)
        {
          *(this + 43) |= 0x40000u;
          *(this + 36) = v89;
        }

        v90 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v90 < 2 || *v90 != 168 || v90[1] != 1)
        {
          continue;
        }

        v22 = (v90 + 2);
        *(a2 + 1) = v22;
LABEL_239:
        v97[0] = 0;
        if (v22 >= v21 || (v91 = *v22, (v91 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v91 = v97[0];
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v91 <= 4)
        {
          *(this + 43) |= 0x80000u;
          *(this + 37) = v91;
        }

        v92 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v31 - v92 < 2 || *v92 != 176 || v92[1] != 1)
        {
          continue;
        }

        v32 = (v92 + 2);
        *(a2 + 1) = v32;
LABEL_250:
        v97[0] = 0;
        if (v32 >= v31 || (v93 = *v32, (v93 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v93 = v97[0];
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v93 <= 4)
        {
          *(this + 43) |= 0x100000u;
          *(this + 40) = v93;
        }

        v94 = *(a2 + 1);
        if (*(a2 + 4) - v94 < 2 || *v94 != 185 || v94[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v94 + 2;
LABEL_261:
        *v97 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97))
        {
          *(this + 19) = *v97;
          *(this + 43) |= 0x200000u;
          v95 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v17 - v95 >= 2 && *v95 == 192 && v95[1] == 1)
          {
            v18 = (v95 + 2);
            *(a2 + 1) = v18;
LABEL_266:
            v97[0] = 0;
            if (v18 >= v17 || (v96 = *v18, (v96 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
              if (!result)
              {
                return result;
              }

              v96 = v97[0];
            }

            else
            {
              *(a2 + 1) = v18 + 1;
            }

            if (v96 <= 3)
            {
              *(this + 43) |= 0x400000u;
              *(this + 41) = v96;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_73;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v6 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v6 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_161;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_250;
      case 0x17u:
        if (v6 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_266;
      default:
LABEL_56:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvPositionAtTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v6 != 1)
        {
          goto LABEL_14;
        }

        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v17;
        v7 = *(this + 7) | 1;
        *(this + 7) = v7;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2) && *v8 == 18)
        {
          *(a2 + 1) = v8 + 1;
          goto LABEL_18;
        }
      }

      if (v6 == 2)
      {
        break;
      }

LABEL_14:
      if (v6 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    v7 = *(this + 7);
LABEL_18:
    *(this + 7) = v7 | 2;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v18 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18))
      {
        return 0;
      }
    }

    else
    {
      v18 = *v10;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Wgs84Ecef *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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