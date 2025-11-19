double CoreNavigation::CLP::LogEntry::Raven::RavenOutput::RavenOutput(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  *this = &unk_1F4CD6798;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4CD6798;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

double sub_1D0C075F4(uint64_t *a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v3 = *(a2 + 8);
  if (!v3)
  {
    operator new();
  }

  v4 = *a1;
  *(v3 + 28) |= 1u;
  *(v3 + 8) = v4;
  *(a2 + 52) |= 1u;
  LOBYTE(v4) = *(a1 + 16);
  result = *(a1 + 1);
  *(v3 + 28) |= 2u;
  *(v3 + 16) = result;
  if (v4)
  {
    *(a2 + 52) |= 2u;
    v6 = *(a2 + 16);
    if (!v6)
    {
      operator new();
    }

    v7 = a1[3];
    *(v6 + 28) |= 1u;
    *(v6 + 8) = v7;
    *(a2 + 52) |= 2u;
    result = *(a1 + 4);
    *(v6 + 28) |= 2u;
    *(v6 + 16) = result;
  }

  if (*(a1 + 40) == 1)
  {
    *(a2 + 52) |= 4u;
    v8 = *(a2 + 24);
    if (!v8)
    {
      operator new();
    }

    v9 = a1[6];
    *(v8 + 28) |= 1u;
    *(v8 + 8) = v9;
    *(a2 + 52) |= 4u;
    result = *(a1 + 7);
    *(v8 + 28) |= 2u;
    *(v8 + 16) = result;
  }

  if (*(a1 + 64) == 1)
  {
    *(a2 + 52) |= 8u;
    v10 = *(a2 + 32);
    if (!v10)
    {
      operator new();
    }

    v11 = a1[9];
    *(v10 + 28) |= 1u;
    *(v10 + 8) = v11;
    *(a2 + 52) |= 8u;
    result = *(a1 + 10);
    *(v10 + 28) |= 2u;
    *(v10 + 16) = result;
  }

  return result;
}

uint64_t sub_1D0C07848(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 29;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 30;
      break;
    case 8:
      result = 6;
      break;
    case 9:
      result = 27;
      break;
    case 10:
      result = 21;
      break;
    case 11:
      result = 24;
      break;
    case 12:
      result = 7;
      break;
    case 13:
      result = 25;
      break;
    case 14:
      result = 9;
      break;
    case 15:
      result = 12;
      break;
    case 16:
      result = 23;
      break;
    case 17:
      result = 11;
      break;
    case 18:
      result = 10;
      break;
    case 19:
      result = 13;
      break;
    case 20:
      result = 35;
      break;
    case 21:
      result = 14;
      break;
    case 22:
      result = 15;
      break;
    case 23:
      result = 16;
      break;
    case 24:
      result = 17;
      break;
    case 25:
      result = 18;
      break;
    case 26:
      result = 22;
      break;
    case 27:
      result = 8;
      break;
    case 28:
      result = 19;
      break;
    case 29:
      result = 20;
      break;
    case 30:
      result = 33;
      break;
    case 31:
      result = 32;
      break;
    case 32:
      result = 31;
      break;
    case 33:
      v14 = v8;
      v15 = v9;
      v13 = 12;
      v12 = 4;
      cnprint::CNPrinter::Print(&v13, &v12, "Invalid measurement type specified: 'RavenMeasurementTypeMax'", a4, a5, a6, a7, a8, v11);
      result = 0;
      break;
    default:
      result = 28;
      break;
  }

  return result;
}

uint64_t raven::ConvertRavenActivityStateEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 < 9)
  {
    return (*a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::ConvertRavenSignalEnvironmentEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 >= 6)
  {
    return 1;
  }

  else
  {
    return (*a1 - 1) + 2;
  }
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  if (!*(this + 52))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 4);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(0);
    v3 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
  }

  v4 = CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::ByteSize(v3);
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
  if ((*(this + 13) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 5);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v8 = CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::ByteSize(v7);
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
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ByteSize((this + 8)) + v2;
  *(this + 12) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  v2 = *(this + 44);
  if (*(this + 44))
  {
    v3 = (v2 << 31 >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[4]) + 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

void raven::RavenPassThroughEstimator::GetRavenSolution(raven::RavenPassThroughEstimator *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  v4 = (a2 + 264);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x7FF8000000000000;
  *(a2 + 96) = 0;
  v5 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a2 + 104) = v5;
  *(a2 + 120) = v5;
  *(a2 + 136) = v5;
  *(a2 + 152) = v5;
  *(a2 + 168) = 0x7FF8000000000000;
  *(a2 + 176) = 0;
  *(a2 + 184) = v5;
  *(a2 + 200) = v5;
  *(a2 + 216) = v5;
  *(a2 + 232) = v5;
  *(a2 + 248) = v5;
  *(a2 + 264) = v5;
  *(a2 + 280) = v5;
  *(a2 + 296) = 0;
  *(a2 + 304) = v5;
  *(a2 + 320) = v5;
  *(a2 + 336) = v5;
  *(a2 + 352) = v5;
  *(a2 + 368) = 0x7FF8000000000000;
  *(a2 + 376) = 0;
  *(a2 + 384) = v5;
  *(a2 + 400) = v5;
  *(a2 + 416) = v5;
  *(a2 + 432) = v5;
  *(a2 + 448) = 0x7FF8000000000000;
  *(a2 + 456) = 0;
  *(a2 + 464) = v5;
  *(a2 + 480) = v5;
  *(a2 + 496) = v5;
  *(a2 + 512) = v5;
  *(a2 + 528) = v5;
  *(a2 + 544) = v5;
  *(a2 + 560) = v5;
  *(a2 + 576) = 0;
  *(a2 + 584) = 0x7FF8000000000000;
  *(a2 + 592) = v5;
  *(a2 + 608) = v5;
  *(a2 + 624) = v5;
  *(a2 + 640) = v5;
  *(a2 + 656) = 0;
  *(a2 + 664) = 0x7FF8000000000000;
  *(a2 + 672) = v5;
  *(a2 + 688) = v5;
  *(a2 + 704) = v5;
  *(a2 + 720) = v5;
  *(a2 + 736) = 0;
  *(a2 + 744) = 0x7FF8000000000000;
  *(a2 + 752) = v5;
  *(a2 + 768) = v5;
  *(a2 + 784) = v5;
  *(a2 + 800) = v5;
  *(a2 + 816) = 0;
  *(a2 + 824) = 0x7FF8000000000000;
  *(a2 + 832) = v5;
  *(a2 + 848) = v5;
  if (!cnprint::CNPrinter::GetLogLevel(this))
  {
    v85[0] = 12;
    v92[0] = 0;
    *v79 = *(this + 136);
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v79, "position event time,%.3lf,velocity event time,%.3lf", *(this + 347) + *(this + 346), *(this + 392) + *(this + 391));
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v12) = v6;
    }

    else
    {
      v12 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v85, v92, "%s", v7, v8, v9, v10, v11, v12);
  }

  if (*(this + 3040) != 1)
  {
    *(a2 + 100) = 0;
    *(a2 + 97) = 0;
    *(a2 + 178) = 0;
    *(a2 + 182) = 0;
    *(a2 + 300) = 0;
    *(a2 + 297) = 0;
    *(a2 + 380) = 0;
    *(a2 + 377) = 0;
    *(a2 + 460) = 0;
    *(a2 + 457) = 0;
    *(a2 + 580) = 0;
    *(a2 + 577) = 0;
    *(a2 + 660) = 0;
    *(a2 + 657) = 0;
    *(a2 + 740) = 0;
    *(a2 + 737) = 0;
    *(a2 + 820) = 0;
    *(a2 + 817) = 0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 80) = 0;
    *(a2 + 88) = 0x7FF8000000000000;
    *(a2 + 96) = 0;
    v29 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a2 + 104) = v29;
    *(a2 + 120) = v29;
    *(a2 + 136) = v29;
    *(a2 + 152) = v29;
    *(a2 + 168) = 0x7FF8000000000000;
    *(a2 + 176) = 0;
    *(a2 + 184) = v29;
    *(a2 + 200) = v29;
    *(a2 + 216) = v29;
    *(a2 + 232) = v29;
    *(a2 + 248) = v29;
    *v4 = v29;
    v4[1] = v29;
    *(a2 + 296) = 0;
    *(a2 + 304) = v29;
    *(a2 + 320) = v29;
    *(a2 + 336) = v29;
    *(a2 + 352) = v29;
    *(a2 + 368) = 0x7FF8000000000000;
    *(a2 + 376) = 0;
    *(a2 + 384) = v29;
    *(a2 + 400) = v29;
    *(a2 + 416) = v29;
    *(a2 + 432) = v29;
    *(a2 + 448) = 0x7FF8000000000000;
    *(a2 + 456) = 0;
    *(a2 + 464) = v29;
    *(a2 + 480) = v29;
    *(a2 + 496) = v29;
    *(a2 + 512) = v29;
    *(a2 + 528) = v29;
    *(a2 + 544) = v29;
    *(a2 + 560) = v29;
    *(a2 + 576) = 0;
    v4[20] = v29;
    v4[21] = v29;
    v4[22] = v29;
    v4[23] = v29;
    *(a2 + 648) = 0x7FF8000000000000;
    *(a2 + 656) = 0;
    v4[25] = v29;
    v4[26] = v29;
    v4[27] = v29;
    v4[28] = v29;
    *(a2 + 728) = 0x7FF8000000000000;
    *(a2 + 736) = 0;
    v4[30] = v29;
    v4[31] = v29;
    v4[32] = v29;
    v4[33] = v29;
    *(a2 + 808) = 0x7FF8000000000000;
    *(a2 + 816) = 0;
    v4[35] = v29;
    v4[36] = v29;
    *(a2 + 856) = 0x7FF8000000000000;
    v30 = *(this + 152);
    *a2 = *(this + 136);
    *(a2 + 16) = v30;
    v31 = *(this + 216);
    *(a2 + 64) = *(this + 200);
    *(a2 + 80) = v31;
    v32 = *(this + 184);
    *(a2 + 32) = *(this + 168);
    *(a2 + 48) = v32;
    return;
  }

  v13 = *(this + 182);
  *(a2 + 32) = *(this + 181);
  *(a2 + 48) = v13;
  v14 = *(this + 184);
  *(a2 + 64) = *(this + 183);
  *(a2 + 80) = v14;
  v15 = *(this + 179);
  v16 = *(this + 180);
  *a2 = v15;
  *(a2 + 16) = v16;
  *(a2 + 296) = 1;
  v15.i64[0] = *(this + 381);
  v16.i64[0] = *(this + 382);
  *(a2 + 304) = v15.i64[0];
  *(a2 + 312) = v16.i64[0];
  v17 = *(this + 383);
  v18 = *(this + 384);
  *(a2 + 320) = v17;
  *(a2 + 328) = v18;
  v19 = *(this + 385);
  v20 = *(this + 386);
  *(a2 + 336) = v19;
  *(a2 + 344) = v20;
  v21 = *(this + 387);
  v22 = *(this + 388);
  *(a2 + 352) = v21;
  *(a2 + 360) = v22;
  v23 = *(this + 389);
  *(a2 + 368) = v23;
  *(a2 + 96) = 1;
  *(a2 + 104) = v15.i64[0];
  *(a2 + 112) = v16.i64[0];
  *(a2 + 120) = v17;
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  *(a2 + 144) = v20;
  *(a2 + 152) = v21;
  *(a2 + 160) = v22;
  *(a2 + 168) = v23;
  if ((*(this + 3321) & 1) == 0)
  {
    goto LABEL_38;
  }

  *(a2 + 176) = 1;
  v24 = *(this + 416);
  *(a2 + 184) = v24;
  if (*(this + 3323) != 1 || *(this + 2961) != 1 || *(this + 2962) != 1)
  {
    goto LABEL_38;
  }

  v25 = __sincos_stret(*(this + 418));
  v120 = v24 * v25.__sinval;
  v121 = v24 * v25.__cosval;
  v26 = 0.0;
  if (*(this + 3322) == 1)
  {
    v26 = *(this + 417);
  }

  v122 = v26;
  v27 = sub_1D0C09230(v117, *(this + 371), *(this + 372));
  if (v118)
  {
    sub_1D0BED7A0(v27, &v120, &v115);
    *(a2 + 376) = 1;
    *(a2 + 384) = v115;
    *(a2 + 400) = v116;
    v107 = 0x300000003;
    v105 = &unk_1F4CD5DD0;
    v108 = &v109;
    v106 = xmmword_1D0E76C10;
    v111 = 0u;
    v110 = 0u;
    v112 = 0u;
    v113 = 0;
    v109 = *(this + 419) * 0.5;
    *(&v111 + 1) = v109;
    if (*(this + 3322) == 1)
    {
      v28 = *(this + 422);
    }

    else
    {
      v28 = 0x407577C048D159E1;
    }

    v114 = v28;
    v102 = 0x300000003;
    v101 = xmmword_1D0E76C10;
    v100 = &unk_1F4CD5DD0;
    v103 = &v104;
    v40 = sub_1D0BFE654(v117, &v105, &v100);
    v41 = v103;
    *(a2 + 408) = *v103;
    v42 = SHIDWORD(v101);
    v43 = &v41[SHIDWORD(v101)];
    *(a2 + 416) = *v43;
    v44 = &v41[2 * v42];
    *(a2 + 424) = *v44;
    *(a2 + 432) = v43[1];
    *(a2 + 440) = v41[((2 * v42) | 1)];
    *(a2 + 448) = v44[2];
    v97 = 0x200000002;
    v15 = xmmword_1D0E83F70;
    v96 = xmmword_1D0E83F70;
    v95 = &unk_1F4CE0268;
    v98 = v99;
    if (*(this + 3321) == 1 && *(this + 3323) == 1)
    {
      v45 = *(this + 419);
      v46 = *(this + 421);
      *v99 = v45;
      v99[1] = v46;
      v47 = *(this + 424);
      v99[2] = v46;
      v99[3] = v47;
      if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
      {
        v48 = qword_1D0E9C7D8[(*(this + 1320) - 1)];
      }

      else
      {
        v48 = 928;
      }

      v71 = 0.0;
      v49 = cnstatistics::InverseNormal(v40, 1.0 - *(*(this + 146) + v48), 0.0, sqrt(v45));
      sub_1D0C097BC(v92);
      v50 = *(this + 416);
      if (*(this + 3322) == 1)
      {
        v71 = *(this + 417);
      }

      if (v50 <= v49)
      {
        v15 = vdupq_n_s64(0x7FF8000000000000uLL);
        *(a2 + 192) = v15;
        *(a2 + 208) = 0x7FF8000000000000;
        *(a2 + 177) = 0;
        *(a2 + 248) = 0x7FF8000000000000;
        *(a2 + 272) = 0x7FF8000000000000;
        *(a2 + 288) = 0x7FF8000000000000;
        *v16.i64 = *v98 * 1.25;
        *(a2 + 216) = v16.i64[0];
        *(a2 + 224) = v15;
        *(a2 + 240) = 0x7FF8000000000000;
        *(a2 + 256) = v15;
        *(a2 + 280) = 0x7FF8000000000000;
      }

      else
      {
        v51 = v71 * v71 + v50 * v50;
        *&v52 = sqrt(v51);
        *&v53 = v51 * *&v52;
        v54 = v25.__sinval * v50 / *&v52;
        v55 = v71 / *&v52;
        v56 = v94;
        *(v94 + 24) = -(v50 * v71) / *&v53;
        v57 = vnegq_f64(v25);
        v58 = vdupq_lane_s64(*&v57.f64[0], 0);
        v58.f64[0] = v25.__cosval;
        v59 = v50 / *&v52;
        v60 = v93;
        v61 = v56 + 8 * v93;
        v62 = vdivq_f64(vmulq_n_f64(v58, v50), vdupq_lane_s64(v52, 0));
        v120 = v54;
        v121 = v62.f64[0];
        v122 = v55;
        *v56 = v59;
        v63 = vdupq_lane_s64(v53, 0);
        *(v56 + 8) = vdivq_f64(vmulq_n_f64(vmulq_n_f64(v25, v71), v71), v63);
        *v61 = 0;
        *(v61 + 8) = v62;
        *(v61 + 24) = 0;
        v64 = (v56 + 16 * v60);
        *v64 = v55;
        *(v56 + 8 * ((2 * v60) | 1)) = vdivq_f64(vmulq_n_f64(vmulq_n_f64(v57, v71), v50), v63);
        v64[3] = v50 * v50 / *&v53;
        sub_1D0BED7A0(v117, &v120, &v115);
        *(a2 + 192) = v115;
        *(a2 + 208) = v116;
        *(a2 + 177) = 1;
        v89 = 0x300000003;
        v87 = &unk_1F4CD5DD0;
        v88 = xmmword_1D0E76C10;
        v90 = &v91;
        if (v118 == 1)
        {
          sub_1D0B894B0(&v87, &v119);
        }

        sub_1D0DC7D2C(4, 4, v85);
        *v86 = 0x3FF0000000000000;
        v80 = 0x300000001;
        *v79 = &unk_1F4CDF0C8;
        v81 = &v82;
        *&v79[8] = xmmword_1D0E7F310;
        v82 = 0x200000001;
        v83 = 3;
        sub_1D0D2CF48(v79, v84);
        sub_1D0BADC74(v79, v85, v84, v84);
        sub_1D0D2CFF0(v79, &v87);
        sub_1D0DAA37C(v85, v92, v78);
        sub_1D0BFA9C4(3, 3, v75);
        v80 = 0x200000001;
        *v79 = &unk_1F4CE2060;
        v81 = &v82;
        *&v79[8] = xmmword_1D0E84500;
        v82 = 0x100000000;
        sub_1D0D751D4(v79, v74);
        sub_1D0D8D39C(v79, v75, v74, v74);
        sub_1D0D8CEA0(v79, &v95);
        if (*(this + 3322) == 1)
        {
          v65 = *(this + 422);
        }

        else
        {
          v65 = 0x407577C048D159E1;
        }

        *(v77 + 16 * v76 + 16) = v65;
        sub_1D0DE23BC(v73, v78, v75);
        sub_1D0D54C04(v78, v72);
        sub_1D0DE2334(v79, v73, v72);
        v66 = v81;
        *(a2 + 216) = *v81;
        v67 = *&v79[20];
        v68 = &v66[*&v79[20]];
        *(a2 + 224) = *v68;
        v69 = &v66[2 * v67];
        *(a2 + 232) = *v69;
        v70 = &v66[3 * v67];
        *(a2 + 240) = *v70;
        *(a2 + 248) = v68[1];
        *(a2 + 256) = v66[((2 * v67) | 1)];
        *(a2 + 264) = v70[1];
        *(a2 + 272) = v69[2];
        *(a2 + 280) = v70[2];
        v15.i64[0] = v70[3];
        *(a2 + 288) = v15.i64[0];
      }
    }

LABEL_38:
    raven::PopulateAllTimeFields(a2, this + 136, v15, v16);
    return;
  }

  v85[0] = 12;
  v92[0] = 4;
  *v79 = *(this + 136);
  v33 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v79, "RavenPassThroughEstimator::GetRavenSolution cannot get ENUToECEFJacobian Jenu");
  if (*(this + 2735) >= 0)
  {
    LOBYTE(v39) = v33;
  }

  else
  {
    v39 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v85, v92, "%s", v34, v35, v36, v37, v38, v39);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  v2 = *(this + 79);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_61;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::PrivateData::Accel::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(this + 79);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::PrivateData::Gyro::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(this + 79);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::PrivateData::Baro::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
    v2 = *(this + 79);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
  }

  v17 = CoreNavigation::CLP::LogEntry::PrivateData::Location::ByteSize(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v20 = *(this + 5);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
  }

  v21 = CoreNavigation::CLP::LogEntry::PrivateData::MotionState::ByteSize(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 = (v3 + v22 + v23 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v24 = *(this + 6);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
  }

  v25 = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::ByteSize(v24);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
  }

  else
  {
    v27 = 1;
  }

  v3 = (v3 + v26 + v27 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v28 = *(this + 7);
  if (!v28)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
  }

  v29 = CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::ByteSize(v28);
  v30 = v29;
  if (v29 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
  }

  else
  {
    v31 = 1;
  }

  v3 = (v3 + v30 + v31 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x80) != 0)
  {
LABEL_55:
    v32 = *(this + 8);
    if (!v32)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
    }

    v33 = CoreNavigation::CLP::LogEntry::PrivateData::Timer::ByteSize(v32);
    v34 = v33;
    if (v33 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    }

    else
    {
      v35 = 1;
    }

    v3 = (v3 + v34 + v35 + 1);
    v2 = *(this + 79);
  }

LABEL_61:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v2 & 0x100) != 0)
  {
    v36 = *(this + 9);
    if (!v36)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
    }

    v37 = CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::ByteSize(v36);
    v38 = v37;
    if (v37 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
    }

    else
    {
      v39 = 1;
    }

    v3 = (v3 + v38 + v39 + 1);
    v2 = *(this + 79);
    if ((v2 & 0x200) == 0)
    {
LABEL_64:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v40 = *(this + 10);
  if (!v40)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
  }

  v41 = CoreNavigation::CLP::LogEntry::PrivateData::MapVector::ByteSize(v40);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v3 = (v3 + v42 + v43 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x400) == 0)
  {
LABEL_65:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v44 = *(this + 11);
  if (!v44)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 88);
  }

  v45 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::ByteSize(v44);
  v46 = v45;
  if (v45 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
  }

  else
  {
    v47 = 1;
  }

  v3 = (v3 + v46 + v47 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x800) == 0)
  {
LABEL_66:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v48 = *(this + 12);
  if (!v48)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v48 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
  }

  v49 = CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::ByteSize(v48);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v3 = (v3 + v50 + v51 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x1000) == 0)
  {
LABEL_67:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v52 = *(this + 13);
  if (!v52)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
  }

  v53 = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::ByteSize(v52);
  v54 = v53;
  if (v53 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
  }

  else
  {
    v55 = 1;
  }

  v3 = (v3 + v54 + v55 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x2000) == 0)
  {
LABEL_68:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v56 = *(this + 14);
  if (!v56)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v56 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 112);
  }

  v57 = CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::ByteSize(v56);
  v58 = v57;
  if (v57 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
  }

  else
  {
    v59 = 1;
  }

  v3 = (v3 + v58 + v59 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x4000) == 0)
  {
LABEL_69:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v60 = *(this + 15);
  if (!v60)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v60 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 120);
  }

  v61 = CoreNavigation::CLP::LogEntry::PrivateData::Reset::ByteSize(v60);
  v62 = v61;
  if (v61 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
  }

  else
  {
    v63 = 1;
  }

  v3 = (v3 + v62 + v63 + 1);
  v2 = *(this + 79);
  if ((v2 & 0x8000) != 0)
  {
LABEL_113:
    v64 = *(this + 16);
    if (!v64)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v64 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
    }

    v65 = CoreNavigation::CLP::LogEntry::PrivateData::StepCount::ByteSize(v64);
    v66 = v65;
    if (v65 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
    }

    else
    {
      v67 = 1;
    }

    v3 = (v3 + v66 + v67 + 2);
    v2 = *(this + 79);
  }

LABEL_119:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v2 & 0x10000) != 0)
  {
    v68 = *(this + 17);
    if (!v68)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v68 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
    }

    v69 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::ByteSize(v68);
    v70 = v69;
    if (v69 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
    }

    else
    {
      v71 = 1;
    }

    v3 = (v3 + v70 + v71 + 2);
    v2 = *(this + 79);
    if ((v2 & 0x20000) == 0)
    {
LABEL_122:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v72 = *(this + 18);
  if (!v72)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v72 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
  }

  v73 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::ByteSize(v72);
  v74 = v73;
  if (v73 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
  }

  else
  {
    v75 = 1;
  }

  v3 = (v3 + v74 + v75 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x40000) == 0)
  {
LABEL_123:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v76 = *(this + 19);
  if (!v76)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v76 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 152);
  }

  v77 = CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::ByteSize(v76);
  v78 = v77;
  if (v77 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
  }

  else
  {
    v79 = 1;
  }

  v3 = (v3 + v78 + v79 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x80000) == 0)
  {
LABEL_124:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v80 = *(this + 20);
  if (!v80)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v80 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
  }

  v81 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::ByteSize(v80);
  v82 = v81;
  if (v81 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
  }

  else
  {
    v83 = 1;
  }

  v3 = (v3 + v82 + v83 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x100000) == 0)
  {
LABEL_125:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v84 = *(this + 21);
  if (!v84)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v84 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
  }

  v85 = CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::ByteSize(v84);
  v86 = v85;
  if (v85 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
  }

  else
  {
    v87 = 1;
  }

  v3 = (v3 + v86 + v87 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x200000) == 0)
  {
LABEL_126:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v88 = *(this + 22);
  if (!v88)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v88 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
  }

  v89 = CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::ByteSize(v88);
  v90 = v89;
  if (v89 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
  }

  else
  {
    v91 = 1;
  }

  v3 = (v3 + v90 + v91 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x400000) == 0)
  {
LABEL_127:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v92 = *(this + 23);
  if (!v92)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v92 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 184);
  }

  v93 = CoreNavigation::CLP::LogEntry::PrivateData::Compass::ByteSize(v92);
  v94 = v93;
  if (v93 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
  }

  else
  {
    v95 = 1;
  }

  v3 = (v3 + v94 + v95 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x800000) != 0)
  {
LABEL_171:
    v96 = *(this + 24);
    if (!v96)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v96 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
    }

    v97 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::ByteSize(v96);
    v98 = v97;
    if (v97 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
    }

    else
    {
      v99 = 1;
    }

    v3 = (v3 + v98 + v99 + 2);
    v2 = *(this + 79);
  }

LABEL_177:
  if (!HIBYTE(v2))
  {
    goto LABEL_235;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v100 = *(this + 25);
    if (!v100)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v100 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
    }

    v101 = CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::ByteSize(v100);
    v102 = v101;
    if (v101 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
    }

    else
    {
      v103 = 1;
    }

    v3 = (v3 + v102 + v103 + 2);
    v2 = *(this + 79);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_180:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_199;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  v104 = *(this + 26);
  if (!v104)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v104 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
  }

  v105 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::ByteSize(v104);
  v106 = v105;
  if (v105 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
  }

  else
  {
    v107 = 1;
  }

  v3 = (v3 + v106 + v107 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_181:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_199:
  v108 = *(this + 27);
  if (!v108)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v108 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
  }

  v109 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::ByteSize(v108);
  v110 = v109;
  if (v109 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109);
  }

  else
  {
    v111 = 1;
  }

  v3 = (v3 + v110 + v111 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_182:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_211;
  }

LABEL_205:
  v112 = *(this + 28);
  if (!v112)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v112 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
  }

  v113 = CoreNavigation::CLP::LogEntry::PrivateData::WatchState::ByteSize(v112);
  v114 = v113;
  if (v113 >= 0x80)
  {
    v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113);
  }

  else
  {
    v115 = 1;
  }

  v3 = (v3 + v114 + v115 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_183:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_217;
  }

LABEL_211:
  v116 = *(this + 29);
  if (!v116)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v116 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
  }

  v117 = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::ByteSize(v116);
  v118 = v117;
  if (v117 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
  }

  else
  {
    v119 = 1;
  }

  v3 = (v3 + v118 + v119 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_184:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_223;
  }

LABEL_217:
  v120 = *(this + 30);
  if (!v120)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v120 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
  }

  v121 = CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::ByteSize(v120);
  v122 = v121;
  if (v121 >= 0x80)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121);
  }

  else
  {
    v123 = 1;
  }

  v3 = (v3 + v122 + v123 + 2);
  v2 = *(this + 79);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_185:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  v124 = *(this + 31);
  if (!v124)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v124 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
  }

  v125 = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::ByteSize(v124);
  v126 = v125;
  if (v125 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125);
  }

  else
  {
    v127 = 1;
  }

  v3 = (v3 + v126 + v127 + 2);
  if ((*(this + 79) & 0x80000000) != 0)
  {
LABEL_229:
    v128 = *(this + 32);
    if (!v128)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v128 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 256);
    }

    v129 = CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::ByteSize(v128);
    v130 = v129;
    if (v129 >= 0x80)
    {
      v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129);
    }

    else
    {
      v131 = 1;
    }

    v3 = (v3 + v130 + v131 + 2);
  }

LABEL_235:
  LOBYTE(v132) = *(this + 320);
  if (!v132)
  {
    goto LABEL_279;
  }

  if (*(this + 320))
  {
    v133 = *(this + 33);
    if (!v133)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v133 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 264);
    }

    v134 = CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::ByteSize(v133);
    v135 = v134;
    if (v134 >= 0x80)
    {
      v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134);
    }

    else
    {
      v136 = 1;
    }

    v3 = (v3 + v135 + v136 + 2);
    v132 = *(this + 80);
    if ((v132 & 2) == 0)
    {
LABEL_238:
      if ((v132 & 4) == 0)
      {
        goto LABEL_239;
      }

      goto LABEL_255;
    }
  }

  else if ((*(this + 320) & 2) == 0)
  {
    goto LABEL_238;
  }

  v137 = *(this + 34);
  if (!v137)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v137 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  v138 = CoreNavigation::CLP::LogEntry::Raven::LogEntry::ByteSize(v137);
  v139 = v138;
  if (v138 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138);
  }

  else
  {
    v140 = 1;
  }

  v3 = (v3 + v139 + v140 + 2);
  v132 = *(this + 80);
  if ((v132 & 4) == 0)
  {
LABEL_239:
    if ((v132 & 8) == 0)
    {
      goto LABEL_240;
    }

    goto LABEL_261;
  }

LABEL_255:
  v141 = *(this + 35);
  if (!v141)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v141 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
  }

  v142 = CoreNavigation::CLP::LogEntry::Vision::LogEntry::ByteSize(v141);
  v143 = v142;
  if (v142 >= 0x80)
  {
    v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142);
  }

  else
  {
    v144 = 1;
  }

  v3 = (v3 + v143 + v144 + 2);
  v132 = *(this + 80);
  if ((v132 & 8) == 0)
  {
LABEL_240:
    if ((v132 & 0x10) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_267;
  }

LABEL_261:
  v145 = *(this + 36);
  if (!v145)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v145 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
  }

  v146 = CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::ByteSize(v145);
  v147 = v146;
  if (v146 >= 0x80)
  {
    v148 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v146);
  }

  else
  {
    v148 = 1;
  }

  v3 = (v3 + v147 + v148 + 2);
  v132 = *(this + 80);
  if ((v132 & 0x10) == 0)
  {
LABEL_241:
    if ((v132 & 0x20) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_273;
  }

LABEL_267:
  v149 = *(this + 37);
  if (!v149)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
    v149 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 296);
  }

  v150 = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::ByteSize(v149);
  v151 = v150;
  if (v150 >= 0x80)
  {
    v152 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v150);
  }

  else
  {
    v152 = 1;
  }

  v3 = (v3 + v151 + v152 + 2);
  if ((*(this + 80) & 0x20) != 0)
  {
LABEL_273:
    v153 = *(this + 38);
    if (!v153)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(0);
      v153 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    v154 = CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::ByteSize(v153);
    v155 = v154;
    if (v154 >= 0x80)
    {
      v156 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v154);
    }

    else
    {
      v156 = 1;
    }

    v3 = (v3 + v155 + v156 + 2);
  }

LABEL_279:
  *(this + 78) = v3;
  return v3;
}

uint64_t sub_1D0C09230(uint64_t a1, double a2, double a3)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D90;
  off_1F4CD5DA0(a1, a2, a3);
  return a1;
}

void sub_1D0C092C8(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::ByteSize(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  LOBYTE(v2) = *(this + 60);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_47;
  }

  if ((*(this + 60) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(this + 15);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(this + 15);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::Raven::EstimatorState::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
    v2 = *(this + 15);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v16 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 32);
  }

  v17 = CoreNavigation::CLP::LogEntry::Raven::NrParameters::ByteSize(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 1);
  v2 = *(this + 15);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_35:
  v20 = *(this + 5);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v20 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 40);
  }

  v21 = CoreNavigation::CLP::LogEntry::Raven::NrBiases::ByteSize(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 = (v3 + v22 + v23 + 1);
  if ((*(this + 15) & 0x20) != 0)
  {
LABEL_41:
    v24 = *(this + 6);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v24 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 48);
    }

    v25 = CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::ByteSize(v24);
    v26 = v25;
    if (v25 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
    }

    else
    {
      v27 = 1;
    }

    v3 = (v3 + v26 + v27 + 1);
  }

LABEL_47:
  *(this + 14) = v3;
  return v3;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::ByteSize(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this)
{
  if (!*(this + 28))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(0);
    v3 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 8);
  }

  v4 = CoreNavigation::CLP::LogEntry::Raven::RavenOutput::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = (v5 + v6 + 1);
  if ((*(this + 7) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
    }

    v8 = CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 = (v2 + v9 + v10 + 1);
  }

LABEL_18:
  *(this + 6) = v2;
  return v2;
}

void sub_1D0C095FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0BB2F1C(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    raven::RavenEstimator::HandleSignalEnvironmentEvent((v8 + 2968), v31);
    if (v10 && cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      v36 = 12;
      v35 = 1;
      v34[0] = (*(v31[0] + 16))(v31);
      v34[1] = v11;
      (*(v31[0] + 24))(v32, v31);
      if (v33 >= 0)
      {
        v17 = v32;
      }

      else
      {
        v17 = v32[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v34, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v23) = v8 - 16;
      }

      else
      {
        v23 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v36, &v35, "%s", v18, v19, v20, v21, v22, v23);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }
    }
  }

  else
  {
    LOWORD(v32[0]) = 12;
    LOBYTE(v34[0]) = 2;
    v24 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v30) = v24;
    }

    else
    {
      v30 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v32, v34, "%s", v25, v26, v27, v28, v29, v30);
  }
}

void sub_1D0C097A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C097BC(uint64_t a1)
{
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DCF0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    result = 0;
    goto LABEL_36;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v5);
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
  v2 = *(this + 13);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
    }

    v10 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v9);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
    }

    else
    {
      v12 = 1;
    }

    v3 += v11 + v12 + 1;
    v2 = *(this + 13);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v3 += v15 + v16 + 1;
    v2 = *(this + 13);
    if ((v2 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((v2 & 8) != 0)
  {
LABEL_27:
    v17 = *(this + 4);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v17 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 32);
    }

    v18 = CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(v17);
    v19 = v18;
    if (v18 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
    }

    else
    {
      v20 = 1;
    }

    v3 += v19 + v20 + 1;
    v2 = *(this + 13);
  }

LABEL_33:
  if ((v2 & 0x10) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_36:
  *(this + 12) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::ByteSize(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  v2 = *(this + 73);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_34;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
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
  v2 = *(this + 73);
  if ((v2 & 2) != 0)
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
      v2 = *(this + 73);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 5);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 73);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v13 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v13 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v4 = v13 + 9;
  }

  else
  {
    v4 = v13;
  }

  if ((v2 & 0x20) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
    v2 = *(this + 73);
    if ((v2 & 0x40) == 0)
    {
LABEL_32:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_32;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
  v2 = *(this + 73);
  if ((v2 & 0x80) != 0)
  {
LABEL_33:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v2 = *(this + 73);
  }

LABEL_34:
  v14 = v4 + 9;
  if ((v2 & 0x100) == 0)
  {
    v14 = v4;
  }

  if ((v2 & 0x200) != 0)
  {
    v14 += 9;
  }

  if ((v2 & 0x400) != 0)
  {
    v14 += 9;
  }

  if ((v2 & 0x800) != 0)
  {
    v14 += 9;
  }

  if ((v2 & 0x1000) != 0)
  {
    v14 += 9;
  }

  if ((v2 & 0x2000) != 0)
  {
    v14 += 9;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v4 = v14;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v15 = v4 + 10;
    if ((v2 & 0x10000) == 0)
    {
      v15 = v4;
    }

    if ((v2 & 0x20000) != 0)
    {
      v15 += 10;
    }

    if ((v2 & 0x40000) != 0)
    {
      v4 = v15 + 10;
    }

    else
    {
      v4 = v15;
    }

    if ((v2 & 0x80000) != 0)
    {
      v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 23)) + 2;
    }
  }

  v16 = *(this + 30);
  v17 = v16 + v4;
  if (v16 >= 1)
  {
    v18 = 0;
    do
    {
      v19 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 14) + 8 * v18));
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v17 += v20 + v21;
      ++v18;
    }

    while (v18 < *(this + 30));
  }

  v22 = *(this + 36);
  v23 = v17 + 2 * v22;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 17) + 8 * v24));
      v26 = v25;
      if (v25 >= 0x80)
      {
        v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
      }

      else
      {
        v27 = 1;
      }

      v23 += v26 + v27;
      ++v24;
    }

    while (v24 < *(this + 36));
  }

  v28 = *(this + 50);
  v29 = v23 + 2 * v28;
  if (v28 >= 1)
  {
    v30 = 0;
    do
    {
      v31 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 24) + 8 * v30));
      v32 = v31;
      if (v31 >= 0x80)
      {
        v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
      }

      else
      {
        v33 = 1;
      }

      v29 += v32 + v33;
      ++v30;
    }

    while (v30 < *(this + 50));
  }

  v34 = *(this + 56);
  v35 = v29 + 2 * v34;
  if (v34 >= 1)
  {
    v36 = 0;
    do
    {
      v37 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 27) + 8 * v36));
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      }

      else
      {
        v39 = 1;
      }

      v35 += v38 + v39;
      ++v36;
    }

    while (v36 < *(this + 56));
  }

  v40 = *(this + 62);
  v41 = v35 + 2 * v40;
  if (v40 >= 1)
  {
    v42 = 0;
    do
    {
      v43 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 30) + 8 * v42));
      v44 = v43;
      if (v43 >= 0x80)
      {
        v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
      }

      else
      {
        v45 = 1;
      }

      v41 += v44 + v45;
      ++v42;
    }

    while (v42 < *(this + 62));
  }

  v46 = *(this + 68);
  v47 = (v41 + 2 * v46);
  if (v46 >= 1)
  {
    v48 = 0;
    do
    {
      v49 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 33) + 8 * v48));
      v50 = v49;
      if (v49 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      }

      else
      {
        v51 = 1;
      }

      v47 = (v50 + v47 + v51);
      ++v48;
    }

    while (v48 < *(this + 68));
  }

  *(this + 72) = v47;
  return v47;
}

__n128 raven::RavenEstimator::HandleSignalEnvironmentEvent(raven::RavenEstimator *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 57))
  {
    if (*(this + 2592) == 1)
    {
      v4 = *(a2 + 8);
      v5 = *(a2 + 24);
      *(this + 165) = *(a2 + 40);
      *(this + 164) = v5;
      *(this + 163) = v4;
      result = *(a2 + 56);
      v7 = *(a2 + 72);
      v8 = *(a2 + 88);
      *(this + 2704) = *(a2 + 104);
      *(this + 168) = v8;
      *(this + 167) = v7;
      *(this + 166) = result;
    }

    else
    {
      *(this + 325) = &unk_1F4CEF5C8;
      v21 = *(a2 + 8);
      v22 = *(a2 + 24);
      *(this + 165) = *(a2 + 40);
      *(this + 164) = v22;
      *(this + 163) = v21;
      result = *(a2 + 56);
      v23 = *(a2 + 72);
      v24 = *(a2 + 88);
      *(this + 2704) = *(a2 + 104);
      *(this + 168) = v24;
      *(this + 167) = v23;
      *(this + 166) = result;
      *(this + 2592) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v28 = 12;
    v27 = 1;
    v26[0] = (*(*a2 + 16))(a2);
    v26[1] = v9;
    cnprint::CNLogFormatter::FormatWarning(this + 2712, v26, "Estimator not configured, failed to handle SignalEnvironmentEvent", v10, v11, v12, v13, v14, v25);
    if (*(this + 2735) >= 0)
    {
      LOBYTE(v20) = this - 104;
    }

    else
    {
      v20 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v15, v16, v17, v18, v19, v20);
  }

  return result;
}

uint64_t raven::RavenPassThroughEstimator::GetRavenStatus@<X0>(raven::RavenPassThroughEstimator *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0x7FF8000000000000;
  *(a2 + 105) = 0;
  *(a2 + 992) = 0u;
  *(a2 + 1008) = 0u;
  *(a2 + 1024) = 0u;
  *(a2 + 1040) = 0u;
  *(a2 + 1056) = 0;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0;
  *(a2 + 960) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a2 + 976) = 0;
  *(a2 + 984) = 0x7FF8000000000000;
  bzero((a2 + 164), 0x318uLL);
  *a2 = *(this + 280);
  v5 = *(this + 56);
  *(a2 + 104) = v5;
  sub_1D0BADDDC(a2, v5, 1.0, v6, v7, v8, v9, v10, v11);
  v13 = *(this + 3040) == 0;
  v14 = 136;
  if (*(this + 3040))
  {
    v14 = 2864;
  }

  v12.i64[0] = 0;
  if (*(this + 3040))
  {
    *v12.i64 = 1.0;
  }

  v15 = (this + v14);
  v16 = v15[3];
  *(a2 + 40) = v15[2];
  *(a2 + 56) = v16;
  v17 = v15[5];
  *(a2 + 72) = v15[4];
  *(a2 + 88) = v17;
  v18 = *v15;
  v19 = v15[1];
  *v4 = *v15;
  if (v13)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  *(a2 + 24) = v19;
  *(a2 + 105) = v20;
  *(a2 + 112) = v12.i64[0];

  return raven::PopulateAllTimeFields(v4, this + 136, v12, v18);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::ByteSize(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this)
{
  LOBYTE(v2) = *(this + 28);
  if (v2)
  {
    if (*(this + 28))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 7);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      result = v3 + 9;
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

  *(this + 6) = result;
  return result;
}

void sub_1D0C0A09C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA910(v25, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v25, v9, v10))
  {
    v31[0] = 12;
    v30 = 2;
    v29[0] = (*(v25[0] + 16))(v25);
    v29[1] = v11;
    (*(v25[0] + 24))(v27, v25);
    if (v28 >= 0)
    {
      v17 = v27;
    }

    else
    {
      v17 = v27[0];
    }

    v18 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, v29, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v24) = v18;
    }

    else
    {
      v24 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v31, &v30, "%s", v19, v20, v21, v22, v23, v24);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }
  }

  v25[0] = &unk_1F4CEF598;
  v27[0] = &v26;
  sub_1D0BBBD80(v27);
}

void sub_1D0C0A1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 65) < 0)
  {
    operator delete(*(v23 - 88));
  }

  *(v23 - 40) = &a23;
  sub_1D0BBBD80((v23 - 40));
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (*(this + 40))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((*(this + 40) & 2) != 0)
  {
LABEL_7:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 10);
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v5 = *(this + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
    if ((v2 & 8) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v2 & 8) != 0)
  {
LABEL_10:
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
  }

LABEL_11:
  *(this + 9) = v3;
  return v3;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v196 = v5;
  v331[69] = *MEMORY[0x1E69E9840];
  if (*(v4 + 57) != 1)
  {
    goto LABEL_24;
  }

  v6 = v4;
  if (*(v4 + 58) != 1)
  {
    goto LABEL_24;
  }

  v7 = raven::RavenEstimator::HandleGnssPreprocessedMeasurementsEvent(v4, v5);
  if (v7)
  {
    goto LABEL_24;
  }

  v195 = v6;
  if ((*(v196 + 88) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(__src.__r_.__value_.__l.__data_) = 12;
      LOBYTE(v276[0]) = 1;
      v205 = (*(*v196 + 16))(v196);
      v206 = v8;
      cnprint::CNLogFormatter::FormatGeneral(v6 + 2712, &v205, "Encountered GnssPreprocessedMeasurementsEvent with no oscillator model.");
      if (*(v6 + 2735) >= 0)
      {
        LOBYTE(v14) = v6 - 104;
      }

      else
      {
        v14 = *(v6 + 2712);
      }

      cnprint::CNPrinter::Print(&__src, v276, "%s", v9, v10, v11, v12, v13, v14);
    }

    raven::RavenPNTEstimator::ResetOscillatorStates(v6);
  }

  v205 = (*(*v196 + 16))(v196);
  v206 = v15;
  if (raven::RavenPNTEstimator::UpdateClockOffsetEstimateIfNecessary(v6, v196 + 24, &v205))
  {
    v260 = 0uLL;
    v261 = 0;
    v263 = 0;
    v262 = 0;
    v264 = 0;
    v266 = 0;
    v265 = 0;
    v267 = 0;
    v269 = 0;
    v268 = 0;
    v270 = 0x7FF8000000000000;
    if (*(*(v6 + 1168) + 3828) == 1)
    {
      v16.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
      if (raven::RavenEstimator::AreGnssMeasurementsAtSameTime(v6, v196, &v260, v16, v17))
      {
        if ((atomic_load_explicit(&qword_1EE053A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053A70))
        {
          qword_1EE053C18 = 0;
          unk_1EE053C20 = 0x3FC999999999999ALL;
          __cxa_guard_release(&qword_1EE053A70);
        }

        v20 = CNTimeSpan::operator-(&v260, (v6 + 14824), v18, v19);
        v205 = v20;
        v206 = v21;
        if (v20 < 0 || (*v22.i64 = v21, v21 < 0.0))
        {
          v20 = CNTimeSpan::operator-(&v205, v22, v23);
        }

        v258 = v20;
        v259 = v21;
        v24 = sub_1D0B7CF88(&v258, &qword_1EE053C18);
        if (!v24)
        {
          if (v258)
          {
            if ((v258 & 0x8000000000000000) == 0)
            {
              goto LABEL_31;
            }
          }

          else if (v259 >= 0.0)
          {
            goto LABEL_31;
          }
        }

        if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
        {
          LOWORD(__src.__r_.__value_.__l.__data_) = 12;
          LOBYTE(v276[0]) = 1;
          v205 = (*(*v196 + 16))(v196);
          v206 = v25;
          v31 = cnprint::CNLogFormatter::FormatWarning(v6 + 2712, &v205, "GNSS measurement selection: large prediction interval,dt,%.3lf; MSR performance may be slightly degraded", v26, v27, v28, v29, v30, COERCE__INT64(v259 + v258));
          if (*(v6 + 2735) >= 0)
          {
            LOBYTE(v37) = v31;
          }

          else
          {
            v37 = *v31;
          }

          cnprint::CNPrinter::Print(&__src, v276, "%s", v32, v33, v34, v35, v36, v37);
        }

LABEL_31:
        sub_1D0D8BD94(&v205);
        v41 = v6;
        v42 = *(v6 + 19512);
        v254 = *(v6 + 19528);
        v43 = *(v6 + 19560);
        v255 = *(v6 + 19544);
        v256 = v43;
        v257 = *(v6 + 19576);
        v44 = *(v6 + 19496);
        v251 = *(v6 + 19480);
        v252 = v44;
        v253 = v42;
        v245 = v251;
        v246 = v44;
        v248 = v254;
        v249 = v255;
        v247 = v42;
        v250 = *(v6 + 19560);
        v244 = 0;
        if ((atomic_load_explicit(&qword_1EE053A78, memory_order_acquire) & 1) == 0)
        {
          if (__cxa_guard_acquire(&qword_1EE053A78))
          {
            v301 = 0x1C00000001;
            v299 = &unk_1F4CE1208;
            v302 = &v303;
            v300 = xmmword_1D0E7F310;
            v303 = 0x100000000;
            v304 = 2;
            sub_1D0D5D8C8(&v271, &v299);
            *&v290[24] = 0x1C00000001;
            *v290 = &unk_1F4CE1208;
            v291 = &v292;
            *&v290[8] = xmmword_1D0E7F310;
            v292 = 0x400000003;
            v293 = 5;
            sub_1D0D5D8C8(&v294, v290);
            v287 = 0x1C00000001;
            v285 = &unk_1F4CE1208;
            v288 = &v289;
            v286 = xmmword_1D0E84500;
            v289 = 0x1400000013;
            sub_1D0D5D8C8(v331, &v285);
            sub_1D0D5D954(v276, &v294, v331);
            sub_1D0D5D83C(&__src, &v271, v276);
            sub_1D0D8C5B0(&unk_1EC5FB710, &__src);
            __cxa_atexit(sub_1D0D5DA20, &unk_1EC5FB710, &dword_1D0B71000);
            __cxa_guard_release(&qword_1EE053A78);
            v41 = v6;
          }
        }

        sub_1D0D8C698(&__src, v41 + 14840, &unk_1EC5FB710);
        sub_1D0D8C7C8(&v271, &__src);
        sub_1D0D8C8B0(v276);
      }
    }

    v45 = v6;
    *(v6 + 8880) = *(v6 + 2928);
    v46 = *(v6 + 2952);
    *(v6 + 8888) = *(v6 + 2936);
    *(v6 + 8904) = v46;
    *(v6 + 8913) = *(v6 + 2961);
    sub_1D0B894B0(v45 + 8936, v45 + 2984);
    sub_1D0B894B0(v45 + 9128, v45 + 3176);
    *(v6 + 9320) = *(v6 + 3368);
    *(v6 + 9328) = *(v6 + 3376);
    *(v6 + 9344) = *(v6 + 3392);
    sub_1D0B894B0(v45 + 9352, v45 + 3400);
    sub_1D0B894B0(v45 + 9544, v45 + 3592);
    sub_1D0B894B0(v45 + 12472, v45 + 6520);
    v47 = (v6 + 14792);
    v48 = *(v6 + 8840);
    v49 = *(v6 + 8848);
    v50 = v49 - v48;
    v51 = *(v6 + 14808);
    v52 = *(v6 + 14792);
    if (v51 - v52 < (v49 - v48))
    {
      v53 = 0xCFF3FCFF3FCFF3FDLL * (v50 >> 4);
      if (v52)
      {
        v54 = *(v195 + 1850);
        if (v54 != v52)
        {
          v55 = v54 - 2320;
          v56 = v54 - 5440;
          do
          {
            *v55 = &unk_1F4CD5E28;
            *(v55 - 366) = &unk_1F4CD5E28;
            *(v55 - 390) = &unk_1F4CD5E28;
            v57 = v55 - 3136;
            v55 -= 5456;
            v56 -= 5456;
          }

          while (v57 != v52);
        }

        *(v195 + 1850) = v52;
        operator delete(v52);
        v51 = 0;
        *v47 = 0;
        *(v195 + 1850) = 0;
        *(v195 + 1851) = 0;
      }

      if (v53 <= 0xC0300C0300C03)
      {
        v58 = 0xCFF3FCFF3FCFF3FDLL * (v51 >> 4);
        v59 = 2 * v58;
        if (2 * v58 <= v53)
        {
          v59 = v53;
        }

        if (v58 >= 0x6018060180601)
        {
          v60 = 0xC0300C0300C03;
        }

        else
        {
          v60 = v59;
        }

        sub_1D0D83F60(v47, v60);
      }

      sub_1D0C5663C();
    }

    v61 = *(v6 + 14800);
    v62 = v61 - v52;
    if (v61 - v52 >= v50)
    {
      if (v48 != v49)
      {
        do
        {
          sub_1D0D84058(v52, v48);
          v48 += 5456;
          v52 += 5456;
        }

        while (v48 != v49);
        v61 = *(v195 + 1850);
      }

      if (v61 != v52)
      {
        v67 = v61 - 2320;
        v68 = v61 - 5440;
        do
        {
          *v67 = &unk_1F4CD5E28;
          *(v67 - 366) = &unk_1F4CD5E28;
          *(v67 - 390) = &unk_1F4CD5E28;
          v69 = v67 - 3136;
          v67 -= 5456;
          v68 -= 5456;
        }

        while (v69 != v52);
      }

      v66 = v195;
      *(v195 + 1850) = v52;
    }

    else
    {
      if (v61 != v52)
      {
        v63 = v61 - v52;
        v64 = *(v195 + 1105);
        do
        {
          sub_1D0D84058(v52, v64);
          v64 += 341;
          v52 += 5456;
          v63 -= 5456;
        }

        while (v63);
        v61 = *(v195 + 1850);
      }

      v65 = sub_1D0D83FB0(v47, &v48[v62], v49, v61);
      v66 = v195;
      *(v195 + 1850) = v65;
    }

    *(v66 + 1852) = *(v66 + 1108);
    v285 = &v285;
    *&v286 = &v285;
    *(&v286 + 1) = 0;
    UnprocessedMSRData = raven::RavenSequentialGNSSMeasurementSelector::GetUnprocessedMSRData(v195 + 17024, v196, &v285);
    if (UnprocessedMSRData)
    {
      v71 = v286;
      if (v286 != &v285)
      {
        v72 = 0;
        v194 = v195 + 61736;
        v198 = v195 + 2712;
        v197 = vdupq_n_s64(0x7FF8000000000000uLL);
        do
        {
          v74 = (v71 + 16);
          v73 = *(v71 + 16);
          v75 = *(v71 + 192);
          if ((v75 - 1) >= 2)
          {
            if (v75 == 3)
            {
              ++v72;
            }

            else
            {
              raven::RavenSequentialGNSSMeasurementSelector::GetFinalGnssObservable(v195 + 17024, v71 + 16, v276);
              if (v283)
              {
                v296 = 0x100000003;
                *&v76 = 0x100000001;
                *(&v76 + 1) = 0x100000001;
                v295 = v76;
                v294 = &unk_1F4CDEB28;
                v297 = &v298;
                v273 = 0x300000003;
                v272 = v76;
                v271 = &unk_1F4CD5DD0;
                v274 = &v275;
                sub_1D0B751F4(&__src, &unk_1D0ED80C5);
                LOBYTE(data) = 0;
                HIDWORD(data) = -1;
                v307 = 0u;
                v308 = 0u;
                v309 = 0u;
                v310 = 0u;
                v311 = 0u;
                *&v312 = 0;
                *(&v312 + 1) = 0x7FF8000000000000;
                LODWORD(v313) = 0;
                BYTE4(v313) = 0;
                *(&v313 + 1) = 0x7FF8000000000000;
                *v314 = 2143289344;
                *&v314[8] = v197;
                *&v314[24] = v197;
                *&v314[40] = v197;
                *&v314[56] = 2143289344;
                v314[60] = 0;
                LOBYTE(v315) = 0;
                BYTE4(v315) = 0;
                BYTE8(v315) = 0;
                WORD6(v315) = 0;
                BYTE14(v315) = 1;
                v316 = v197;
                v317 = &unk_1F4CDFE98;
                sub_1D0B751F4(&v318, &unk_1D0ED80C5);
                LOBYTE(v319) = 0;
                HIDWORD(v319) = -1;
                v320 = 0u;
                v321 = 0u;
                v322 = 0u;
                v323 = 0u;
                v324 = 0u;
                v325 = 0u;
                v326 = 0u;
                v327 = 0u;
                v328 = 0u;
                v329 = 0u;
                v330 = 0u;
                v77 = *v74;
                *&v78 = 0x100000001;
                *(&v78 + 1) = 0x100000001;
                v295 = v78;
                v272 = v78;
                *v297 = *(&v277 + 1);
                *v274 = (*(&v280 + 2) * *(&v280 + 2));
                *&v314[48] = v280;
                v315 = v281;
                v316 = v282;
                v313 = v276[6];
                *v314 = v277;
                *&v314[16] = v278;
                *&v314[32] = v279;
                v309 = v276[2];
                v310 = v276[3];
                v311 = v276[4];
                v312 = v276[5];
                v307 = v276[0];
                v308 = v276[1];
                std::string::operator=(&__src, v73);
                data = v73[1].__r_.__value_.__l.__data_;
                UnprocessedMSRData = std::string::operator=(&v318, (v77 + 40));
                v319 = *(v77 + 64);
                v79 = *(v77 + 72);
                v80 = *(v77 + 104);
                v321 = *(v77 + 88);
                v322 = v80;
                v320 = v79;
                v81 = *(v77 + 120);
                v82 = *(v77 + 136);
                v83 = *(v77 + 168);
                v325 = *(v77 + 152);
                v326 = v83;
                v323 = v81;
                v324 = v82;
                v84 = *(v77 + 184);
                v85 = *(v77 + 200);
                v86 = *(v77 + 232);
                v329 = *(v77 + 216);
                v330 = v86;
                v327 = v84;
                v328 = v85;
                *v290 = v195 + 2920;
                *&v290[8] = v195 + 14824;
                *&v290[16] = v195 + 14840;
                *&v290[24] = v195 + 2760;
                v291 = (v195 + 2800);
                v87 = *(*(v71 + 24) + 96);
                if ((v87 - 3) < 2)
                {
                  sub_1D0BA002C(&v205, 16);
                  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_1D0BC39B4(&v210, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v210 = __src;
                  }

                  v211 = data;
                  v222 = *&v314[48];
                  v223 = v315;
                  v224 = v316;
                  v218 = v313;
                  v219 = *v314;
                  v220 = *&v314[16];
                  v221 = *&v314[32];
                  v214 = v309;
                  v215 = v310;
                  v216 = v311;
                  v217 = v312;
                  v212 = v307;
                  v213 = v308;
                  v225 = &unk_1F4CDFE98;
                  if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_1D0BC39B4(&v226, v318.__r_.__value_.__l.__data_, v318.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v226 = v318;
                  }

                  v227 = v319;
                  v236 = v328;
                  v237 = v329;
                  v238 = v330;
                  v232 = v324;
                  v233 = v325;
                  v234 = v326;
                  v235 = v327;
                  v228 = v320;
                  v229 = v321;
                  v230 = v322;
                  v231 = v323;
                  v241 = v291;
                  v239 = *v290;
                  v240 = *&v290[16];
                  v205 = &unk_1F4CE1888;
                  v242 = 0;
                  v243 = 0;
                  v209 = **(v71 + 24);
                  v242 = v195 + 17000;
                  v243 = (v195 + 8872);
                  v117 = LOBYTE(v206);
                  v118 = sub_1D0BCFAB8(v73);
                  sub_1D0B751F4(v199, v118);
                  sub_1D0BA01A8(&v205, v117, v199);
                  if (v200 < 0)
                  {
                    operator delete(v199[0]);
                  }

                  v124 = v272;
                  if ((v272 & 0x80000000) != 0)
                  {
                    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
                  }

                  v301 = 0x100000003;
                  v299 = &unk_1F4CDEB28;
                  v125 = &v303;
                  v302 = &v303;
                  *&v300 = v272 | 0x100000000;
                  DWORD2(v300) = v272;
                  HIDWORD(v300) = v272;
                  if (v272 > 3)
                  {
                    bzero(&v303, 16 * ((v272 - 1) >> 1));
                    v126 = &v301 + v124;
                    *v126 = 0;
                    v126[1] = 0;
                  }

                  else if (v272)
                  {
                    bzero(&v303, 8 * v272);
                  }

                  if (*v194)
                  {
                    if (*(v195 + 16918) == 174)
                    {
                      LOWORD(v331[0]) = 2;
                      v284[0] = 2;
                      v189 = *(&v209 + 1) + v209;
                      cnprint::CNPrinter::Print(v331, v284, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v119, v120, v121, v122, v123, SLOBYTE(v189));
                    }

                    else if (*(v195 + 61737) == 1)
                    {
                      if (cnprint::CNPrinter::GetLogLevel(v125) <= 1)
                      {
                        LOWORD(v331[0]) = 2;
                        v284[0] = 1;
                        v191 = *(&v209 + 1) + v209;
                        cnprint::CNPrinter::Print(v331, v284, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v132, v133, v134, v135, v136, SLOBYTE(v191));
                      }
                    }

                    else
                    {
                      v137 = sub_1D0B7C8AC(&v209, v195 + 7718);
                      if (!v137)
                      {
                        v331[1] = 0;
                        v331[0] = 0;
                        sub_1D0D910AC();
                      }

                      if (cnprint::CNPrinter::GetLogLevel(v137) <= 1)
                      {
                        LOWORD(v331[0]) = 2;
                        v284[0] = 1;
                        v192 = *(&v209 + 1) + v209;
                        v193 = *(v195 + 7719) + *(v195 + 7718);
                        cnprint::CNPrinter::Print(v331, v284, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v138, v139, v140, v141, v142, SLOBYTE(v192));
                      }
                    }
                  }

                  else if (cnprint::CNPrinter::GetLogLevel(v125) <= 1)
                  {
                    LOWORD(v331[0]) = 2;
                    v284[0] = 1;
                    v190 = *(&v209 + 1) + v209;
                    cnprint::CNPrinter::Print(v331, v284, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v127, v128, v129, v130, v131, SLOBYTE(v190));
                  }

                  LOWORD(v331[0]) = 12;
                  v284[0] = 4;
                  v299 = (*(*v196 + 16))(v196);
                  *&v300 = v143;
                  v144 = sub_1D0BCFAB8(v73);
                  cnprint::CNLogFormatter::FormatGeneral(v198, &v299, "Could not add measurement - average Doppler for %s", v144);
                  LOBYTE(v150) = v195 - 104;
                  if (*(v195 + 2735) < 0)
                  {
                    v150 = *(v195 + 339);
                  }

                  cnprint::CNPrinter::Print(v331, v284, "%s", v145, v146, v147, v148, v149, v150);
                  v225 = &unk_1F4CDFE98;
                  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v226.__r_.__value_.__l.__data_);
                  }

                  v225 = &unk_1F4CD5F70;
                  if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v210.__r_.__value_.__l.__data_);
                  }

                  v205 = &unk_1F4CE4300;
                  if (v208 < 0)
                  {
                    operator delete(v207);
                  }
                }

                else if (v87 == 2)
                {
                  sub_1D0D8EAE4(&v205, &__src, v290);
                  v209 = **(v71 + 24);
                  v104 = LOBYTE(v206);
                  v105 = sub_1D0BCFAB8(v73);
                  sub_1D0B751F4(v201, v105);
                  sub_1D0BA01A8(&v205, v104, v201);
                  if (v202 < 0)
                  {
                    operator delete(v201[0]);
                  }

                  if (sub_1D0D5F500(v194, &v209, &v294, &v271, &v205, v106, v107, v108))
                  {
                    LOWORD(v331[0]) = 12;
                    v284[0] = 4;
                    v299 = (*(*v196 + 16))(v196);
                    *&v300 = v109;
                    v110 = sub_1D0BCFAB8(v73);
                    cnprint::CNLogFormatter::FormatGeneral(v198, &v299, "Could not add measurement - Doppler for %s", v110);
                    LOBYTE(v116) = v195 - 104;
                    if (*(v195 + 2735) < 0)
                    {
                      v116 = *(v195 + 339);
                    }

                    cnprint::CNPrinter::Print(v331, v284, "%s", v111, v112, v113, v114, v115, v116);
                  }

                  UnprocessedMSRData = sub_1D0D5F97C(&v205);
                }

                else if (v87 == 1)
                {
                  sub_1D0D8E578(&v205, &__src, v290);
                  v209 = **(v71 + 24);
                  v88 = LOBYTE(v206);
                  v89 = sub_1D0BCFAB8(v73);
                  sub_1D0B751F4(__p, v89);
                  sub_1D0BA01A8(&v205, v88, __p);
                  if (v204 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v94 = *(*v74 + 312);
                  v93 = *(*v74 + 320);
                  if (v93)
                  {
                    atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v242 = v94;
                  v95 = v243;
                  v243 = v93;
                  if (v95)
                  {
                    sub_1D0B7CAB8(v95);
                  }

                  if (sub_1D0D5E914(v194, &v209, &v294, &v271, &v205, v90, v91, v92))
                  {
                    LOWORD(v331[0]) = 12;
                    v284[0] = 4;
                    v299 = (*(*v196 + 16))(v196);
                    *&v300 = v96;
                    v97 = sub_1D0BCFAB8(v73);
                    cnprint::CNLogFormatter::FormatGeneral(v198, &v299, "Could not add measurement - PSR for %s", v97);
                    LOBYTE(v103) = v195 - 104;
                    if (*(v195 + 2735) < 0)
                    {
                      v103 = *(v195 + 339);
                    }

                    cnprint::CNPrinter::Print(v331, v284, "%s", v98, v99, v100, v101, v102, v103);
                  }

                  UnprocessedMSRData = sub_1D0D5ED90(&v205);
                }

                v317 = &unk_1F4CDFE98;
                if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v318.__r_.__value_.__l.__data_);
                }

                v317 = &unk_1F4CD5F70;
                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__src.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          v71 = *(v71 + 8);
        }

        while (v71 != &v285);
        if (v72)
        {
          v151 = 1;
          v152 = v72 / *(*(v195 + 146) + 1472);
          do
          {
            UnprocessedMSRData = sub_1D0C51528(v195 + 19584);
            if (UnprocessedMSRData)
            {
              break;
            }
          }

          while (v152 > v151++);
        }
      }

      LogLevel = cnprint::CNPrinter::GetLogLevel(UnprocessedMSRData);
      if (LogLevel <= 1)
      {
        LOWORD(v276[0]) = 12;
        LOBYTE(v271) = 1;
        __src.__r_.__value_.__r.__words[0] = (*(*v196 + 16))(v196);
        __src.__r_.__value_.__l.__size_ = v155;
        raven::RavenSequentialGNSSMeasurementSelector::StringOfL1MeasurementCountsByConstellation((v195 + 17024), &v205);
        v156 = SHIBYTE(v207) >= 0 ? &v205 : v205;
        v157 = cnprint::CNLogFormatter::FormatGeneral(v195 + 2712, &__src, "%s", v156);
        if (*(v195 + 2735) >= 0)
        {
          LOBYTE(v163) = v157;
        }

        else
        {
          v163 = *(v195 + 339);
        }

        cnprint::CNPrinter::Print(v276, &v271, "%s", v158, v159, v160, v161, v162, v163);
        if (SHIBYTE(v207) < 0)
        {
          operator delete(v205);
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(v276[0]) = 12;
        LOBYTE(v271) = 1;
        __src.__r_.__value_.__r.__words[0] = (*(*v196 + 16))(v196);
        __src.__r_.__value_.__l.__size_ = v164;
        raven::RavenSequentialGNSSMeasurementSelector::StringOfL5MeasurementCountsByConstellation((v195 + 17024), &v205);
        v165 = SHIBYTE(v207) >= 0 ? &v205 : v205;
        v166 = cnprint::CNLogFormatter::FormatGeneral(v195 + 2712, &__src, "%s", v165);
        if (*(v195 + 2735) >= 0)
        {
          LOBYTE(v172) = v166;
        }

        else
        {
          v172 = *(v195 + 339);
        }

        cnprint::CNPrinter::Print(v276, &v271, "%s", v167, v168, v169, v170, v171, v172);
        if (SHIBYTE(v207) < 0)
        {
          operator delete(v205);
        }
      }

      LOWORD(v276[0]) = 12;
      LOBYTE(v271) = 2;
      __src.__r_.__value_.__r.__words[0] = (*(*v196 + 16))(v196);
      __src.__r_.__value_.__l.__size_ = v173;
      raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCounts((v195 + 17024), &v205);
      if (SHIBYTE(v207) >= 0)
      {
        v174 = &v205;
      }

      else
      {
        v174 = v205;
      }

      cnprint::CNLogFormatter::FormatGeneral(v195 + 2712, &__src, "%s", v174);
      if (*(v195 + 2735) >= 0)
      {
        LOBYTE(v180) = v195 - 104;
      }

      else
      {
        v180 = *(v195 + 339);
      }

      cnprint::CNPrinter::Print(v276, &v271, "%s", v175, v176, v177, v178, v179, v180);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v205);
      }

      LOWORD(v276[0]) = 12;
      LOBYTE(v271) = 2;
      __src.__r_.__value_.__r.__words[0] = (*(*v196 + 16))(v196);
      __src.__r_.__value_.__l.__size_ = v181;
      raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCountsForRayTracedMeasurements((v195 + 17024), &v205);
      if (SHIBYTE(v207) >= 0)
      {
        v182 = &v205;
      }

      else
      {
        v182 = v205;
      }

      cnprint::CNLogFormatter::FormatGeneral(v195 + 2712, &__src, "%s", v182);
      if (*(v195 + 2735) >= 0)
      {
        LOBYTE(v188) = v195 - 104;
      }

      else
      {
        v188 = *(v195 + 339);
      }

      cnprint::CNPrinter::Print(v276, &v271, "%s", v183, v184, v185, v186, v187, v188);
      if (SHIBYTE(v207) < 0)
      {
        operator delete(v205);
      }

      v38 = 0;
    }

    else
    {
      v38 = 0xFFFFFFFFLL;
    }

    sub_1D0BCC0B4(&v285);
  }

  else
  {
LABEL_24:
    v38 = 0xFFFFFFFFLL;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v38;
}

void sub_1D0C1019C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053A78);
  sub_1D0D5E230(&STACK[0x700]);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::ByteSize(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  v2 = *(this + 57);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_46;
  }

  if (v2)
  {
    v5 = *(this + 1);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v5 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
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
    v2 = *(this + 57);
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 6);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 57);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 8) != 0)
  {
    v11 = *(this + 7);
    if ((v11 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 57);
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

  v13 = v3 + 9;
  if ((v2 & 0x10) == 0)
  {
    v13 = v3;
  }

  if ((v2 & 0x20) != 0)
  {
    v4 = v13 + 9;
  }

  else
  {
    v4 = v13;
  }

  if ((v2 & 0x40) != 0)
  {
    v14 = *(this + 12);
    if ((v14 & 0x80000000) != 0)
    {
      v15 = 11;
    }

    else if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
      v2 = *(this + 57);
    }

    else
    {
      v15 = 2;
    }

    v4 = (v15 + v4);
  }

  if ((v2 & 0x80) != 0)
  {
    v16 = *(this + 13);
    if ((v16 & 0x80000000) != 0)
    {
      v17 = 11;
    }

    else if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
      v2 = *(this + 57);
    }

    else
    {
      v17 = 2;
    }

    v4 = (v17 + v4);
  }

LABEL_46:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v18 = *(this + 34);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 11;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
        v2 = *(this + 57);
      }

      else
      {
        v19 = 2;
      }

      LODWORD(v4) = v19 + v4;
    }

    v20 = v4 + 10;
    if ((v2 & 0x200) == 0)
    {
      v20 = v4;
    }

    if ((v2 & 0x400) != 0)
    {
      v20 += 10;
    }

    if ((v2 & 0x800) != 0)
    {
      v20 += 10;
    }

    if ((v2 & 0x1000) != 0)
    {
      v20 += 10;
    }

    if ((v2 & 0x2000) != 0)
    {
      v20 += 10;
    }

    if ((v2 & 0x4000) != 0)
    {
      v20 += 10;
    }

    if ((v2 & 0x8000) != 0)
    {
      v4 = v20 + 10;
    }

    else
    {
      v4 = v20;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    v21 = v4 + 10;
    if ((v2 & 0x10000) == 0)
    {
      v21 = v4;
    }

    if ((v2 & 0x20000) != 0)
    {
      v21 += 10;
    }

    if ((v2 & 0x40000) != 0)
    {
      v21 += 10;
    }

    if ((v2 & 0x80000) != 0)
    {
      v21 += 10;
    }

    if ((v2 & 0x100000) != 0)
    {
      v21 += 10;
    }

    if ((v2 & 0x200000) != 0)
    {
      v21 += 10;
    }

    if ((v2 & 0x400000) != 0)
    {
      v21 += 10;
    }

    if ((v2 & 0x800000) != 0)
    {
      v4 = v21 + 10;
    }

    else
    {
      v4 = v21;
    }
  }

  if (HIBYTE(v2))
  {
    v22 = v4 + 10;
    if ((v2 & 0x1000000) == 0)
    {
      v22 = v4;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v22 += 10;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v22 += 10;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v22 += 10;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v4 = v22 + 10;
    }

    else
    {
      v4 = v22;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v23 = *(this + 35);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 12;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23) + 2;
      }

      else
      {
        v24 = 3;
      }

      v4 = (v24 + v4);
    }
  }

  *(this + 56) = v4;
  return v4;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::ByteSize(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  v2 = *(this + 23);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_61;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(this + 23);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
    }

    v9 = CoreNavigation::CLP::LogEntry::Raven::UserPosition::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(this + 23);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
    }

    v13 = CoreNavigation::CLP::LogEntry::Raven::UserVelocity::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
    v2 = *(this + 23);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v16 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
  }

  v17 = CoreNavigation::CLP::LogEntry::Raven::DevicePosition::ByteSize(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 1);
  v2 = *(this + 23);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v20 = *(this + 5);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v20 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
  }

  v21 = CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::ByteSize(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 = (v3 + v22 + v23 + 1);
  v2 = *(this + 23);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v24 = *(this + 6);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v24 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
  }

  v25 = CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::ByteSize(v24);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
  }

  else
  {
    v27 = 1;
  }

  v3 = (v3 + v26 + v27 + 1);
  v2 = *(this + 23);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v28 = *(this + 7);
  if (!v28)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v28 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
  }

  v29 = CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::ByteSize(v28);
  v30 = v29;
  if (v29 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
  }

  else
  {
    v31 = 1;
  }

  v3 = (v3 + v30 + v31 + 1);
  v2 = *(this + 23);
  if ((v2 & 0x80) != 0)
  {
LABEL_55:
    v32 = *(this + 8);
    if (!v32)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
      v32 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
    }

    v33 = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::ByteSize(v32);
    v34 = v33;
    if (v33 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    }

    else
    {
      v35 = 1;
    }

    v3 = (v3 + v34 + v35 + 1);
    v2 = *(this + 23);
  }

LABEL_61:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v36 = *(this + 9);
      if (!v36)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v36 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
      }

      v37 = CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::ByteSize(v36);
      v38 = v37;
      if (v37 >= 0x80)
      {
        v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
      }

      else
      {
        v39 = 1;
      }

      v3 = (v3 + v38 + v39 + 1);
      v2 = *(this + 23);
    }

    if ((v2 & 0x200) != 0)
    {
      v40 = *(this + 10);
      if (!v40)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v40 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
      }

      v41 = CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::ByteSize(v40);
      v42 = v41;
      if (v41 >= 0x80)
      {
        v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
      }

      else
      {
        v43 = 1;
      }

      v3 = (v3 + v42 + v43 + 1);
    }
  }

  *(this + 22) = v3;
  return v3;
}

void sub_1D0C10B74(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v23, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenEstimator::HandleSignalEnvironmentEvent((v8 + 288), v23);
  if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    v28 = 12;
    v27 = 1;
    v26[0] = (*(v23[0] + 16))(v23);
    v26[1] = v10;
    (*(v23[0] + 24))(v24, v23);
    if (v25 >= 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = v24[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v26, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v22) = v8 - 16;
    }

    else
    {
      v22 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v17, v18, v19, v20, v21, v22);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1D0C10CA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t cnprint::CNLogFormatter::FormatWarning(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = &a9;
  if (*(a1 + 47) >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = __p;
  sub_1D0BBB710(__p, v12 + 10);
  if (v17 < 0)
  {
    v13 = __p[0];
  }

  if (v12)
  {
    if (*(a1 + 47) >= 0)
    {
      v14 = (a1 + 24);
    }

    else
    {
      v14 = *(a1 + 24);
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, " WARNING: ");
  cnprint::CNLogFormatter::FormatCore(a1, __p, a2, 1, a3, v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1D0C10DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::ByteSize(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
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
      v2 = *(this + 33);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v3 + 9;
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

  if ((v2 & 0xFF00) != 0)
  {
    v9 = result + 9;
    if ((v2 & 0x100) == 0)
    {
      v9 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v9 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      result = v9 + 9;
    }

    else
    {
      result = v9;
    }
  }

  *(this + 32) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    if (v2)
    {
      v4 = *(this + 1);
      if (!v4)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v4 = *(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8);
      }

      v5 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v4);
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
      v2 = *(this + 23);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      v3 += 9;
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = v3 + 9;
  if ((v2 & 0x100) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x200) != 0)
  {
    v8 += 9;
  }

  if ((v2 & 0xFF00) != 0)
  {
    result = v8;
  }

  else
  {
    result = v3;
  }

  *(this + 22) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this)
{
  v2 = *(this + 23);
  if (v2)
  {
    if (v2)
    {
      v4 = *(this + 1);
      if (!v4)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v4 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8);
      }

      v5 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v4);
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
      v2 = *(this + 23);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x80) != 0)
    {
      v3 += 9;
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = v3 + 9;
  if ((v2 & 0x100) == 0)
  {
    v8 = v3;
  }

  if ((v2 & 0x200) != 0)
  {
    v8 += 9;
  }

  if ((v2 & 0xFF00) != 0)
  {
    result = v8;
  }

  else
  {
    result = v3;
  }

  *(this + 22) = result;
  return result;
}

void sub_1D0C11124(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v24, a3, a3, a4, a5, a6, a7, a8);
  v9 = raven::RavenEstimator::HandleSignalEnvironmentEvent((v8 + 288), v24);
  if (v10)
  {
    v29 = 12;
    v28 = 2;
    v27[0] = (*(v24[0] + 16))(v24, v9);
    v27[1] = v11;
    (*(v24[0] + 24))(v25, v24);
    if (v26 >= 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = v25[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v27, "Failed to handle event - %s.", v12, v13, v14, v15, v16, v17);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v23) = v8 - 16;
    }

    else
    {
      v23 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v18, v19, v20, v21, v22, v23);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_1D0C11244(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::ByteSize(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this)
{
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    if (*(this + 60))
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
        v5 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);
      }

      v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
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
      v2 = *(this + 15);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      result = v3 + 9;
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

  *(this + 14) = result;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::ByteSize(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  v2 = *(this + 42);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_27;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8);
  }

  v6 = CoreNavigation::CLP::LogEntry::Raven::TimeStamp::ByteSize(v5);
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
  v2 = *(this + 42);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 14);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 42);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_18:
  v11 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v11 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v4 = v11 + 9;
  }

  else
  {
    v4 = v11;
  }

  if ((v2 & 0x10) != 0)
  {
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
    v2 = *(this + 42);
    if ((v2 & 0x20) == 0)
    {
LABEL_25:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 42);
  if ((v2 & 0x40) != 0)
  {
LABEL_26:
    v4 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 6)) + 1;
    v2 = *(this + 42);
  }

LABEL_27:
  if ((v2 & 0x3FC00) != 0)
  {
    v12 = v4 + 9;
    if ((v2 & 0x400) == 0)
    {
      v12 = v4;
    }

    if ((v2 & 0x800) != 0)
    {
      v4 = v12 + 9;
    }

    else
    {
      v4 = v12;
    }

    if ((v2 & 0x1000) != 0)
    {
      v13 = *(this + 15);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 11;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13) + 1;
        v2 = *(this + 42);
      }

      else
      {
        v14 = 2;
      }

      v4 += v14;
    }

    if ((v2 & 0x2000) != 0)
    {
      v15 = *(this + 40);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1;
        v2 = *(this + 42);
      }

      else
      {
        v16 = 2;
      }

      v4 += v16;
    }

    if ((v2 & 0x4000) != 0)
    {
      v4 += 9;
    }
  }

  v17 = *(this + 18);
  v18 = v17 + v4;
  if (v17 >= 1)
  {
    v19 = 0;
    do
    {
      v20 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 8) + 8 * v19));
      v21 = v20;
      if (v20 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
      }

      else
      {
        v22 = 1;
      }

      v18 += v21 + v22;
      ++v19;
    }

    while (v19 < *(this + 18));
  }

  v23 = *(this + 24);
  v24 = v23 + v18;
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      v26 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 11) + 8 * v25));
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v24 += v27 + v28;
      ++v25;
    }

    while (v25 < *(this + 24));
  }

  v29 = *(this + 30);
  v30 = (v29 + v24);
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::ByteSize(*(*(this + 14) + 8 * v31));
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
      }

      else
      {
        v34 = 1;
      }

      v30 = (v33 + v30 + v34);
      ++v31;
    }

    while (v31 < *(this + 30));
  }

  *(this + 41) = v30;
  return v30;
}

CoreNavigation::CLP::LogEntry *CoreNavigation::CLP::LogEntry::LogEntry::SerializeWithCachedSizes(CoreNavigation::CLP::LogEntry::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 52))
  {
    v6 = *(this + 4);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::SerializeWithCachedSizes((this + 8), 2, 3, a2);
  if ((*(this + 52) & 2) != 0)
  {
    v9 = *(this + 5);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(result);
      v9 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, v8);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 44) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 316);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 316);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 48);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 56);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 64);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 72);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_61:
  v16 = *(v5 + 80);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v16, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_64:
  v17 = *(v5 + 88);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v17, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

LABEL_67:
  v18 = *(v5 + 96);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v18, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_70:
  v19 = *(v5 + 104);
  if (!v19)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v19, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 112);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v20, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 120);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v21, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 128);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v22, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 136);
  if (!v23)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v23, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 144);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 152);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 160);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v27 = *(v5 + 168);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v28 = *(v5 + 176);
  if (!v28)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v29 = *(v5 + 184);
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_103:
  v30 = *(v5 + 192);
  if (!v30)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_106:
  v31 = *(v5 + 200);
  if (!v31)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_109:
  v32 = *(v5 + 208);
  if (!v32)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1D, v32, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_115;
  }

LABEL_112:
  v33 = *(v5 + 216);
  if (!v33)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v33, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_118;
  }

LABEL_115:
  v34 = *(v5 + 224);
  if (!v34)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v34, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_118:
  v35 = *(v5 + 232);
  if (!v35)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v35, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_124;
  }

LABEL_121:
  v36 = *(v5 + 240);
  if (!v36)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x21, v36, a2, a4);
  v6 = *(v5 + 316);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_127;
  }

LABEL_124:
  v37 = *(v5 + 248);
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, v37, a2, a4);
  if ((*(v5 + 316) & 0x80000000) != 0)
  {
LABEL_127:
    v38 = *(v5 + 256);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 256);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v38, a2, a4);
  }

LABEL_130:
  v39 = *(v5 + 320);
  if (v39)
  {
    v40 = *(v5 + 264);
    if (!v40)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 264);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3E8, v40, a2, a4);
    v39 = *(v5 + 320);
    if ((v39 & 2) == 0)
    {
LABEL_132:
      if ((v39 & 4) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_143;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_132;
  }

  v41 = *(v5 + 272);
  if (!v41)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EE, v41, a2, a4);
  v39 = *(v5 + 320);
  if ((v39 & 4) == 0)
  {
LABEL_133:
    if ((v39 & 8) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_146;
  }

LABEL_143:
  v42 = *(v5 + 280);
  if (!v42)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3EF, v42, a2, a4);
  v39 = *(v5 + 320);
  if ((v39 & 8) == 0)
  {
LABEL_134:
    if ((v39 & 0x10) == 0)
    {
      goto LABEL_135;
    }

    goto LABEL_149;
  }

LABEL_146:
  v43 = *(v5 + 288);
  if (!v43)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F2, v43, a2, a4);
  v39 = *(v5 + 320);
  if ((v39 & 0x10) == 0)
  {
LABEL_135:
    if ((v39 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_152;
  }

LABEL_149:
  v44 = *(v5 + 296);
  if (!v44)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 296);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F6, v44, a2, a4);
  if ((*(v5 + 320) & 0x20) != 0)
  {
LABEL_152:
    v45 = *(v5 + 304);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x3F8, v45, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  if ((*(v5 + 60) & 0x20) != 0)
  {
LABEL_23:
    v12 = *(v5 + 48);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ + 48);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 292);
  if (v6)
  {
    v14 = *(this + 8);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v14, a2, a4);
    v6 = *(v5 + 292);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(8, *(v5 + 56), a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 64), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 72), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 80), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 96), a3);
  if ((*(v5 + 292) & 0x2000) != 0)
  {
LABEL_15:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 104), a3);
  }

LABEL_16:
  if (*(v5 + 120) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, *(*(v5 + 112) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 120));
  }

  if (*(v5 + 144) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 136) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 144));
  }

  v9 = *(v5 + 292);
  if ((v9 & 0x10000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x11, a2, *(v5 + 160), a3);
    v9 = *(v5 + 292);
    if ((v9 & 0x20000) == 0)
    {
LABEL_24:
      if ((v9 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_58;
    }
  }

  else if ((v9 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x12, a2, *(v5 + 168), a3);
  v9 = *(v5 + 292);
  if ((v9 & 0x40000) == 0)
  {
LABEL_25:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x13, a2, *(v5 + 176), a3);
  if ((*(v5 + 292) & 0x80000) != 0)
  {
LABEL_26:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x14, *(v5 + 184), a2, a4);
  }

LABEL_27:
  if (*(v5 + 200) >= 1)
  {
    v10 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, *(*(v5 + 192) + 8 * v10++), a2, a4);
    }

    while (v10 < *(v5 + 200));
  }

  if (*(v5 + 224) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, *(*(v5 + 216) + 8 * v11++), a2, a4);
    }

    while (v11 < *(v5 + 224));
  }

  if (*(v5 + 248) >= 1)
  {
    v12 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, *(*(v5 + 240) + 8 * v12++), a2, a4);
    }

    while (v12 < *(v5 + 248));
  }

  if (*(v5 + 272) >= 1)
  {
    v13 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, *(*(v5 + 264) + 8 * v13++), a2, a4);
    }

    while (v13 < *(v5 + 272));
  }

  return this;
}

void *sub_1D0C1245C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1D0C54C1C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1D0C12744(a1, &v10);
}

void sub_1D0C125E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
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

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_16:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  if ((*(v5 + 52) & 0x10) != 0)
  {
LABEL_19:
    v11 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v11, a3);
  }

  return this;
}

void *sub_1D0C12744(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1D0C54C1C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v7, a3);
  }

  return this;
}

void *sub_1D0C128C0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1D0C54E78(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1D0B8BF18(a1, &v10);
}

void sub_1D0C12A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 32), a2, a4);
      if ((*(v5 + 40) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v7, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 228);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 228);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 228);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 228);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 136), a2, a4);
  v6 = *(v5 + 228);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 56), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 64), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x16, a2, *(v5 + 72), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x17, a2, *(v5 + 80), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x18, a2, *(v5 + 88), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 96), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 104), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 112), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 120), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 128), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x32, a2, *(v5 + 144), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x33, a2, *(v5 + 152), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x34, a2, *(v5 + 160), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x35, a2, *(v5 + 168), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3C, a2, *(v5 + 176), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3D, a2, *(v5 + 184), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3E, a2, *(v5 + 192), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x3F, a2, *(v5 + 200), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_62:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x47, a2, *(v5 + 216), a3);
    if ((*(v5 + 228) & 0x20000000) == 0)
    {
      return this;
    }

    goto LABEL_63;
  }

LABEL_61:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x46, a2, *(v5 + 208), a3);
  v6 = *(v5 + 228);
  if ((v6 & 0x10000000) != 0)
  {
    goto LABEL_62;
  }

LABEL_30:
  if ((v6 & 0x20000000) == 0)
  {
    return this;
  }

LABEL_63:
  v8 = *(v5 + 140);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x50, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_18:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_21:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_24:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v12 = *(v5 + 48);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v13 = *(v5 + 56);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_33:
  v14 = *(v5 + 64);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_36:
  v15 = *(v5 + 72);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
    v15 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v15, a2, a4);
  if ((*(v5 + 92) & 0x200) != 0)
  {
LABEL_39:
    v16 = *(v5 + 80);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ + 80);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v16, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 132);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 132);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 132);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 88), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 96), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xE, a2, *(v5 + 112), a3);
    if ((*(v5 + 132) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_33;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xD, a2, *(v5 + 104), a3);
  v6 = *(v5 + 132);
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if ((v6 & 0x4000) == 0)
  {
    return this;
  }

LABEL_33:
  v8 = *(v5 + 120);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DevicePosition::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 92);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 92);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
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
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_22:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
    if ((*(v5 + 92) & 0x200) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return this;
  }

LABEL_23:
  v8 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, v8, a3);
}

void raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitudeWithRotation(raven::RavenDeviceAttitudeActiveObject *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1EEE9AC00](this, a2, a3, a4);
  v5 = v4;
  if (sub_1D0B9A2A4(v4, (v4 + 6648), 0.0) && sub_1D0BD685C(v5, (v5 + 7568)))
  {
    v253 = 0;
    v254 = 0;
    v255 = 0;
    sub_1D0C4E048(&v253, *(v5 + 6688));
    v6 = *(v5 + 6656);
    if (*(v5 + 6664) == v6 || (v7 = *(v5 + 6680), v8 = (*(v6 + 8 * (v7 / 0x1A)) + 152 * (v7 % 0x1A)), v9 = *(v6 + 8 * ((*(v5 + 6688) + v7) / 0x1A)) + 152 * ((*(v5 + 6688) + v7) % 0x1A), v8 == v9))
    {
      v11 = v254;
    }

    else
    {
      v10 = (v6 + 8 * (v7 / 0x1A));
      v11 = v254;
      do
      {
        v12 = sqrt(v8[14] * v8[14] + v8[13] * v8[13] + v8[15] * v8[15]);
        if (v11 >= v255)
        {
          v13 = v253;
          v14 = v11 - v253;
          v15 = v11 - v253;
          v16 = v15 + 1;
          if ((v15 + 1) >> 61)
          {
            sub_1D0C5663C();
          }

          v17 = v255 - v253;
          if ((v255 - v253) >> 2 > v16)
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
            sub_1D0C3994C(&v253, v18);
          }

          v19 = v11 - v253;
          v20 = (8 * v15);
          v21 = (8 * v15 - 8 * v19);
          *v20 = v12;
          v11 = v20 + 1;
          memcpy(v21, v13, v14);
          v22 = v253;
          v253 = v21;
          v254 = v11;
          v255 = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v11++ = v12;
        }

        v254 = v11;
        v8 += 19;
        if ((v8 - *v10) == 3952)
        {
          v23 = v10[1];
          ++v10;
          v8 = v23;
        }
      }

      while (v8 != v9);
    }

    v24 = *(*(v5 + 232) + 1072) * 0.0174532925;
    v25 = v253 + 1;
    v26 = v253 == v11 || v25 == v11;
    v27 = v253;
    if (!v26)
    {
      v28 = *v253;
      v27 = v253;
      v29 = v253 + 1;
      do
      {
        v30 = *v29++;
        v31 = v30;
        if (v28 < v30)
        {
          v28 = v31;
          v27 = v25;
        }

        v25 = v29;
      }

      while (v29 != v11);
    }

    if (*v27 > v24)
    {
      v32 = v27 - v253;
      v33 = *(v5 + 6688);
      v34 = 2 * v33 / 5;
      if (v32 < (3 * v33 / 5) && v32 > v34)
      {
        v250 = 0;
        v251 = 0;
        v252 = 0;
        sub_1D0C4E048(&v250, v33);
        v247 = 0;
        v248 = 0;
        v249 = 0;
        sub_1D0C4E048(&v247, *(v5 + 6688));
        v244 = 0;
        v245 = 0;
        v246 = 0;
        sub_1D0C4E048(&v244, *(v5 + 6688));
        v36 = *(v5 + 6656);
        if (*(v5 + 6664) != v36)
        {
          v37 = *(v5 + 6680);
          v38 = (v36 + 8 * (v37 / 0x1A));
          v39 = (*v38 + 152 * (v37 % 0x1A));
          v40 = *(v36 + 8 * ((*(v5 + 6688) + v37) / 0x1A)) + 152 * ((*(v5 + 6688) + v37) % 0x1A);
          while (v39 != v40)
          {
            sub_1D0C4E0E8(&v250, v39 + 13);
            sub_1D0C4E0E8(&v247, v39 + 14);
            sub_1D0C4E0E8(&v244, v39 + 15);
            v39 += 19;
            if ((v39 - *v38) == 3952)
            {
              v41 = v38[1];
              ++v38;
              v39 = v41;
            }
          }
        }

        if (raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(v5, &v250, *(*(v5 + 232) + 1112)) && raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(v5, &v247, *(*(v5 + 232) + 1112)) && raven::RavenDeviceAttitudeActiveObject::DualDirSmooth(v5, &v244, *(*(v5 + 232) + 1112)))
        {
          v42 = v250;
          v43 = v251;
          if (v250 != v251)
          {
            v44 = v250;
            do
            {
              *v44 = *v44 * *v44;
              ++v44;
            }

            while (v44 != v43);
          }

          v45 = v247;
          v46 = v248;
          if (v247 != v248)
          {
            v47 = v247;
            do
            {
              *v47 = *v47 * *v47;
              ++v47;
            }

            while (v47 != v46);
          }

          v48 = v244;
          v49 = v245;
          while (v48 != v49)
          {
            *v48 = *v48 * *v48;
            ++v48;
          }

          v50 = v253;
          if (v42 != v43)
          {
            memmove(v253, v42, v43 - v42);
            v50 = v253;
            v45 = v247;
          }

          v51 = v254;
          if (v50 != v254)
          {
            v52 = v50;
            do
            {
              v53 = *v45++;
              *v52 = *v52 + v53;
              ++v52;
            }

            while (v52 != v51);
            v54 = v244;
            v55 = v50;
            do
            {
              v56 = *v54++;
              *v55 = *v55 + v56;
              ++v55;
            }

            while (v55 != v51);
            v57 = v50 + 1;
            if (v50 + 1 != v51)
            {
              v58 = *v50;
              v59 = v50 + 1;
              do
              {
                v60 = *v59++;
                v61 = v60;
                if (v58 < v60)
                {
                  v58 = v61;
                  v50 = v57;
                }

                v57 = v59;
              }

              while (v59 != v51);
            }
          }

          v62 = *(v5 + 6656);
          v63 = *(v5 + 6680);
          v64 = (v62 + 8 * (v63 / 0x1A));
          v65 = *(v5 + 6664) == v62 ? 0 : *v64 + 152 * (v63 % 0x1A);
          v66 = *v50;
          v198 = *&v64;
          *v199 = v65;
          sub_1D0E2D52C(&v198, v32);
          v243[0] = (*(**v199 + 16))(*v199);
          v243[1] = v67;
          if (sqrt(v66) > v24)
          {
            v68 = *(v5 + 6704) * *(v5 + 6704) + *(v5 + 6696) * *(v5 + 6696);
            v69 = *(v5 + 6712);
            v240[0] = 0;
            v241 = 0u;
            memset(v242, 0, sizeof(v242));
            v237[0] = 0;
            v238 = 0u;
            memset(v239, 0, sizeof(v239));
            v234[0] = 0;
            v235 = 0u;
            memset(v236, 0, sizeof(v236));
            v70 = *(v5 + 6656);
            v71 = *(v5 + 6680);
            v72 = *(v5 + 6664);
            v73 = v72 == v70 ? 0 : *(v70 + 8 * (v71 / 0x1A)) + 152 * (v71 % 0x1A);
            v74 = v24 * 0.25;
            v75 = v68 + v69 * v69;
            *&v198 = v70 + 8 * (v71 / 0x1A);
            *v199 = v73;
            sub_1D0E2D52C(&v198, v32 - v34);
            v76 = v198;
            v77 = *v199;
            while (1)
            {
              v78 = v72 == v70 ? 0 : *(v70 + 8 * (v71 / 0x1A)) + 152 * (v71 % 0x1A);
              *&v198 = v70 + 8 * (v71 / 0x1A);
              *v199 = v78;
              sub_1D0E2D52C(&v198, v34 + v32);
              if (*&v76 >= *&v198 && (*&v76 != *&v198 || v77 >= *v199))
              {
                break;
              }

              v80 = v77[13];
              v81 = sqrt(v77[14] * v77[14] + v80 * v80 + v77[15] * v77[15]);
              if (v81 > v74)
              {
                v198 = v80 / v81;
                sub_1D0B8954C(v240, &v198, v81 * v81 / v75);
                v198 = v77[14] / v81;
                sub_1D0B8954C(v237, &v198, v81 * v81 / v75);
                v198 = v77[15] / v81;
                sub_1D0B8954C(v234, &v198, v81 * v81 / v75);
              }

              v77 += 19;
              if ((v77 - **&v76) == 3952)
              {
                v82 = *(*&v76 + 8);
                *&v76 += 8;
                v77 = v82;
              }

              v70 = *(v5 + 6656);
              v71 = *(v5 + 6680);
              v72 = *(v5 + 6664);
            }

            v231 = 0x100000003;
            v230 = xmmword_1D0E7DCC0;
            v229 = &unk_1F4CDEB28;
            v232 = v233;
            v233[0] = *&v242[1];
            v233[1] = *&v239[1];
            v233[2] = *&v236[1];
            sub_1D0BFA800(&v229);
            if (fabs(*&v83) > 0.000000015)
            {
              v84 = v232;
              *v232 = vdivq_f64(*v232, vdupq_lane_s64(v83, 0));
              v84[1].f64[0] = v84[1].f64[0] / *&v83;
              v226 = 0;
              v227 = 0;
              v222[0] = 0;
              __p = 0;
              v223 = 0;
              v224 = 1;
              sub_1D0BC3E34(&__p);
              v228 = 1;
              v219 = 0x100000003;
              v218 = xmmword_1D0E7DCC0;
              v217 = &unk_1F4CDEB28;
              v220 = &v221;
              v85 = *(v5 + 6656);
              v86 = *(v5 + 6680);
              v87 = *(v5 + 6664);
              if (v87 == v85)
              {
                v88 = 0;
              }

              else
              {
                v88 = *(v85 + 8 * (v86 / 0x1A)) + 152 * (v86 % 0x1A);
              }

              *&v198 = v85 + 8 * (v86 / 0x1A);
              *v199 = v88;
              sub_1D0E2D52C(&v198, v32 - v34);
              v89 = v198;
              v90 = *v199;
              while (1)
              {
                v91 = v87 == v85 ? 0 : *(v85 + 8 * (v86 / 0x1A)) + 152 * (v86 % 0x1A);
                *&v198 = v85 + 8 * (v86 / 0x1A);
                *v199 = v91;
                sub_1D0E2D52C(&v198, v34 + v32);
                if (*&v89 >= *&v198 && (*&v89 != *&v198 || v90 >= *v199))
                {
                  break;
                }

                v92.i64[0] = *(v90 + 104);
                v97 = sqrt(*(v90 + 112) * *(v90 + 112) + *v92.i64 * *v92.i64 + *(v90 + 120) * *(v90 + 120));
                if (v97 > v74)
                {
                  v98 = v220;
                  *v220 = v92.i64[0];
                  v98[1] = *(v90 + 112);
                  v98[2] = *(v90 + 120);
                  *v92.i64 = 1.0 / v97;
                  *&v199[16] = 0x100000003;
                  *v199 = xmmword_1D0E7DCC0;
                  v198 = COERCE_DOUBLE(&unk_1F4CDEB28);
                  *&v199[24] = &v199[32];
                  sub_1D0B8930C(&v217, &v198, v92);
                  v99 = *&v199[8];
                  if (*&v199[8] < 1)
                  {
                    v101 = 0.0;
                  }

                  else
                  {
                    v100 = *&v199[24];
                    v101 = 0.0;
                    v102 = v232;
                    do
                    {
                      v103 = *v100++;
                      v104 = v103;
                      v105 = *v102++;
                      v101 = v101 + v104 * v105;
                      --v99;
                    }

                    while (v99);
                  }

                  v196 = v101;
                  sub_1D0BC3F08(v222, &v196, 1.0);
                }

                v90 += 152;
                if (v90 - **&v89 == 3952)
                {
                  v106 = *(*&v89 + 8);
                  *&v89 += 8;
                  v90 = v106;
                }

                v85 = *(v5 + 6656);
                v86 = *(v5 + 6680);
                v87 = *(v5 + 6664);
              }

              v92.i64[0] = 0x4049000000000000;
              sub_1D0BC4124(v222, v92, v93, v94, v95);
              v108 = acos(v107);
              v109 = sub_1D0C51578(3, 1, v215);
              *(v216 + 16) = 0x3FF0000000000000;
              if (cnprint::CNPrinter::GetLogLevel(v109) <= 1)
              {
                LOWORD(v198) = 12;
                LOBYTE(v196) = 1;
                v112 = *(*(v5 + 7576) + ((*(v5 + 7600) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (*(v5 + 7600) & 0xFLL);
                v113 = (*(*v112 + 16))(v112);
                v115 = v114;
                v116 = *(v5 + 7608) + *(v5 + 7600) - 1;
                v117 = *(*(v5 + 7576) + ((v116 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v116 & 0xF);
                (*(*v117 + 16))(v117);
                v188 = v115 + v113;
                cnprint::CNPrinter::Print(&v198, &v196, "DevAtt,Rotation,first solution time,%lf,last solution time,%lf,maxRateTime,%lf,rotVectNorm,%lf", v118, v119, v120, v121, v122, SLOBYTE(v188));
              }

              v123 = *(*(v5 + 232) + 1120);
              *v199 = 0;
              v198 = 0.0;
              v110.i64[0] = v123;
              *v124.i64 = CNTimeSpan::SetTimeSpan(&v198, 0, v110, v111);
              v126 = CNTimeSpan::operator-(v243, &v198, v124, v125);
              v128 = v127;
              *v199 = 0;
              v198 = 0.0;
              v129.i64[0] = v123;
              *v131.i64 = CNTimeSpan::SetTimeSpan(&v198, 0, v129, v130);
              v190 = CNTimeSpan::operator+(v243, &v198, v131, v132);
              v134 = v133;
              v212 = 0x300000003;
              v211 = xmmword_1D0E76C10;
              v210 = &unk_1F4CD5DD0;
              v213 = &v214;
              v207 = 0x100000003;
              v206 = xmmword_1D0E7DCC0;
              v205 = &unk_1F4CDEB28;
              v208 = &v209;
              v202 = 0x100000003;
              v201 = xmmword_1D0E7DCC0;
              v200 = &unk_1F4CDEB28;
              v203 = &v204;
              sub_1D0BAD0C8(&v198);
              sub_1D0BAD0C8(&v196);
              v136 = *(v5 + 7576);
              if (*(v5 + 7584) != v136)
              {
                v137 = *(v5 + 7600);
                v138 = (v136 + 8 * (v137 >> 4));
                v139 = *v138 + 2656 * (v137 & 0xF);
                v140 = *(v136 + (((*(v5 + 7608) + v137) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(v5 + 7608) + v137) & 0xF);
                if (v139 != v140)
                {
                  v189 = v108;
                  if (v126)
                  {
                    v141 = 1;
                  }

                  else
                  {
                    v141 = (*&v128 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
                  }

                  v142 = !v141;
                  if (v190)
                  {
                    v143 = 1;
                  }

                  else
                  {
                    v143 = (*&v134 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
                  }

                  v144 = !v143;
                  v191 = v144;
                  v145 = 0.0;
                  while (1)
                  {
                    v146 = (*(*v139 + 16))(v139);
                    if (v142 || (!v146 ? (v148 = (*&v147 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v148 = 1), !v148 || (v149 = v126 <= v146, v126 == v146)))
                    {
                      v149 = v128 <= v147;
                    }

                    if (v149)
                    {
                      v151 = *(v139 + 1552);
                      if (v199[1536])
                      {
                        v152 = v203;
                        *v203 = v151;
                        v152[1] = *(v139 + 1560);
                        v152[2] = *(v139 + 1568);
                        sub_1D0BFA800(&v200);
                        *v135.i64 = fabs(v153.f64[0]);
                        if (*v135.i64 > 0.000000015)
                        {
                          v153.f64[0] = 1.0 / v153.f64[0];
                          sub_1D0C51FB4(&v200, &v194, v153);
                          sub_1D0B894B0(&v200, &v194);
                          sub_1D0D5625C(&v210, &v200, &v194);
                          sub_1D0B894B0(&v200, &v194);
                          sub_1D0D562E0(&v205, &v200, &v194);
                          sub_1D0D562E0(&v205, &v200, v192);
                          sub_1D0BFA800(v192);
                          v155 = DWORD2(v206);
                          if (SDWORD2(v206) < 1)
                          {
                            v157 = 0.0;
                          }

                          else
                          {
                            v156 = v208;
                            v157 = 0.0;
                            v158 = v203;
                            do
                            {
                              v159 = *v156++;
                              v160 = v159;
                              v161 = *v158++;
                              v157 = v157 + v160 * v161;
                              --v155;
                            }

                            while (v155);
                          }

                          v165 = v195[2];
                          v166 = atan2(v154, v157);
                          if (*(v165 + 16) <= 0.0)
                          {
                            v167 = -1.0;
                          }

                          else
                          {
                            v167 = 1.0;
                          }

                          memcpy(v197, (v139 + 8), 0xA51uLL);
                          v168 = sub_1D0B894B0(&v205, &v200);
                          v169 = (*(*v139 + 16))(v139, v168);
                          v145 = v145 + v166 * v167;
                          if (v169)
                          {
                            v171 = 1;
                          }

                          else
                          {
                            v171 = (*&v170 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
                          }

                          if (!v171 || v191 || (v172 = v169 <= v190, v169 == v190))
                          {
                            v172 = v170 <= v134;
                          }

                          if (!v172)
                          {
LABEL_161:
                            v173 = v145 < 0.0;
                            v108 = v189;
                            goto LABEL_163;
                          }
                        }
                      }

                      else
                      {
                        v162 = v208;
                        *v208 = v151;
                        v162[1] = *(v139 + 1560);
                        v162[2] = *(v139 + 1568);
                        sub_1D0BFA800(&v205);
                        *v135.i64 = fabs(v163.f64[0]);
                        if (*v135.i64 > 0.000000015)
                        {
                          v163.f64[0] = 1.0 / v163.f64[0];
                          sub_1D0C51FB4(&v205, &v194, v163);
                          sub_1D0B894B0(&v205, &v194);
                          v164 = sub_1D0BD2CA4(&v194, *(v139 + 1472), *(v139 + 1480), *(v139 + 1488));
                          if ((BYTE8(v194) & 1) == 0)
                          {
                            if (cnprint::CNPrinter::GetLogLevel(v164) <= 1)
                            {
                              LOWORD(v192[0]) = 12;
                              v193 = 1;
                              cnprint::CNPrinter::Print(v192, &v193, "DevAtt,Rotation,cannot derive ecef to enu Jacobian", v182, v183, v184, v185, v186, v187);
                            }

                            goto LABEL_174;
                          }

                          sub_1D0B894B0(&v210, v195);
                          sub_1D0D5625C(&v210, &v205, v192);
                          sub_1D0B894B0(&v205, v192);
                          memcpy(v199, (v139 + 8), sizeof(v199));
                        }
                      }
                    }

                    v139 += 2656;
                    if (v139 - *v138 == 42496)
                    {
                      v150 = v138[1];
                      ++v138;
                      v139 = v150;
                    }

                    if (v139 == v140)
                    {
                      goto LABEL_161;
                    }
                  }
                }
              }

              v173 = 0;
LABEL_163:
              v174 = v197[0];
              v175 = *&v197[1];
              v176 = v197[1];
              v177.i64[1] = *&v199[8];
              v194 = *v199;
              v177.i64[0] = *(*(v5 + 232) + 1128);
              v192[0] = 0;
              v192[1] = 0;
              *v178.i64 = CNTimeSpan::SetTimeSpan(v192, 0, v177, v135);
              v180 = CNTimeSpan::operator+(&v194, v192, v178, v179);
              if ((v174 || (v176 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v180 || (*&v181 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v174 != v180)
              {
                if (v174 < v180)
                {
                  goto LABEL_174;
                }
              }

              else if (v175 < v181)
              {
                goto LABEL_174;
              }

              if (v173)
              {
                *(v216 + 16) = 0xBFF0000000000000;
              }

              raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(v5, &v229, v215, v243, v108);
              sub_1D0E29F7C((v5 + 6648));
LABEL_174:
              if (__p)
              {
                v226 = __p;
                operator delete(__p);
              }
            }
          }
        }

        if (v244)
        {
          v245 = v244;
          operator delete(v244);
        }

        if (v247)
        {
          v248 = v247;
          operator delete(v247);
        }

        if (v250)
        {
          v251 = v250;
          operator delete(v250);
        }
      }
    }

    if (v253)
    {
      v254 = v253;
      operator delete(v253);
    }
  }
}

void sub_1D0C148C4(_Unwind_Exception *a1)
{
  v3 = STACK[0x1770];
  if (STACK[0x1770])
  {
    STACK[0x1778] = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 256);
  if (v4)
  {
    *(v1 - 248) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 232);
  if (v5)
  {
    *(v1 - 224) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 208);
  if (v6)
  {
    *(v1 - 200) = v6;
    operator delete(v6);
  }

  v7 = *(v1 - 184);
  if (v7)
  {
    *(v1 - 176) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void *sub_1D0C149C4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1D0C4E87C(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 40), a3);
    if ((*(v5 + 60) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 32), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:
  v8 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, v8, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 168);
  if (v6)
  {
    v11 = *(this + 8);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v11, a2, a4);
    v6 = *(v5 + 168);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 56), a2, a4);
  v6 = *(v5 + 168);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 168);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 168);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 32), a2, a4);
  v6 = *(v5 + 168);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(6, *(v5 + 40), a2, a4);
  if ((*(v5 + 168) & 0x40) != 0)
  {
LABEL_8:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, *(v5 + 48), a2, a4);
  }

LABEL_9:
  if (*(v5 + 72) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 64) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 72));
  }

  if (*(v5 + 96) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, *(*(v5 + 88) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 96));
  }

  if (*(v5 + 120) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, *(*(v5 + 112) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 120));
  }

  v10 = *(v5 + 168);
  if ((v10 & 0x400) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xB, a2, *(v5 + 136), a3);
    v10 = *(v5 + 168);
    if ((v10 & 0x800) == 0)
    {
LABEL_20:
      if ((v10 & 0x1000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 0x800) == 0)
  {
    goto LABEL_20;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 144), a3);
  v10 = *(v5 + 168);
  if ((v10 & 0x1000) == 0)
  {
LABEL_21:
    if ((v10 & 0x2000) == 0)
    {
      goto LABEL_22;
    }

LABEL_36:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 160), a2, a4);
    if ((*(v5 + 168) & 0x4000) == 0)
    {
      return this;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 60), a2, a4);
  v10 = *(v5 + 168);
  if ((v10 & 0x2000) != 0)
  {
    goto LABEL_36;
  }

LABEL_22:
  if ((v10 & 0x4000) == 0)
  {
    return this;
  }

LABEL_37:
  v12 = *(v5 + 152);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, v12, a3);
}

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ != this)
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

void CoreNavigation::CLP::LogEntry::Raven::LogEntry::~LogEntry(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this)
{
  CoreNavigation::CLP::LogEntry::Raven::LogEntry::~LogEntry(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD73F8;
  CoreNavigation::CLP::LogEntry::Raven::LogEntry::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C14FC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::RavenOutput::default_instance_ != this)
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

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this)
{
  *this = &unk_1F4CD6798;
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::RavenOutput::~RavenOutput(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(CoreNavigation::CLP::LogEntry::Raven *this)
{
  v1 = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto_once_;
  __dmb(0xBu);
  if (v1 != 2)
  {
    v2[0] = MEMORY[0x1E69E5970] + 16;
    v2[1] = CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto_impl;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }
}

void sub_1D0C15240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::~EstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  *this = &unk_1F4CD69F0;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SharedDtor(this);
  sub_1D0B8CD0C(this + 33);
  sub_1D0B8CD0C(this + 30);
  sub_1D0B8CD0C(this + 27);
  sub_1D0B8CD0C(this + 24);
  sub_1D0B8CD0C(this + 17);
  sub_1D0B8CD0C(this + 14);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::~EstimatorHealth(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::TimeStamp::~TimeStamp(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  CoreNavigation::CLP::LogEntry::Raven::TimeStamp::~TimeStamp(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6888;
  CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::TimeStamp::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::TimeStamp::default_instance_ != this)
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
      v6 = *(*v5 + 8);

      v6();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::TimeStruct::~TimeStruct(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this)
{
  CoreNavigation::CLP::LogEntry::Raven::TimeStruct::~TimeStruct(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6810;
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this)
{
  *this = &unk_1F4CD6900;
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::~MeasurementTypeCount(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::~EstimatorActivity(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this)
{
  *this = &unk_1F4CD6A68;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::~EstimatorActivity(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorState::~EstimatorState(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::~EstimatorState(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6BD0;
  CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::EstimatorState::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::EstimatorState::default_instance_ != this)
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

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 10);
    if (v11)
    {
      v12 = *(*v11 + 8);

      v12();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::UserPosition::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::UserPosition::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::Raven::UserPosition::~UserPosition(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this)
{
  CoreNavigation::CLP::LogEntry::Raven::UserPosition::~UserPosition(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6C48;
  CoreNavigation::CLP::LogEntry::Raven::UserPosition::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::UserVelocity::~UserVelocity(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::UserVelocity::~UserVelocity(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD6CC0;
  CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::Raven::UserVelocity::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::UserVelocity::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}