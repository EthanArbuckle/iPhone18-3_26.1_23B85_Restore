uint64_t sub_1D0DC9F74(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4CE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCA048(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCA268(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8))
  {
    v9 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
    if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v36 = 12;
      v35 = 1;
      v34[0] = (*(v31[0] + 16))(v31);
      v34[1] = v10;
      (*(v31[0] + 24))(v32, v31);
      if (v33 >= 0)
      {
        v16 = v32;
      }

      else
      {
        v16 = v32[0];
      }

      v17 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, v34, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v23) = v17;
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

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v31);
}

void sub_1D0DCA1F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DCA21C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4D60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCA268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v34.__vftable) = 3;
    LOBYTE(v32) = 5;
    cnprint::CNPrinter::Print(&v34, &v32, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEEA90 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v19, (off_1F4CEEA90 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v34.__vftable = 0;
        std::bad_cast::bad_cast(&v34);
        v34.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v20 = *(a2 + 16);
    *a1 = &unk_1F4CEDF40;
    *(a1 + 8) = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 48);
    v23 = *(v20 + 64);
    *(a1 + 72) = *(v20 + 80);
    *(a1 + 56) = v23;
    *(a1 + 40) = v22;
    *(a1 + 24) = v21;
    v24 = *(v20 + 96);
    v25 = *(v20 + 112);
    v26 = *(v20 + 128);
    *(a1 + 136) = *(v20 + 144);
    *(a1 + 120) = v26;
    *(a1 + 104) = v25;
    *(a1 + 88) = v24;
    v27 = *(v20 + 160);
    v28 = *(v20 + 176);
    v29 = *(v20 + 192);
    *(a1 + 200) = *(v20 + 208);
    *(a1 + 184) = v29;
    *(a1 + 168) = v28;
    *(a1 + 152) = v27;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    sub_1D0DCA588(a1 + 208, *(v20 + 216), *(v20 + 224), (*(v20 + 224) - *(v20 + 216)) >> 3);
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    sub_1D0DCA588(a1 + 232, *(v20 + 240), *(v20 + 248), (*(v20 + 248) - *(v20 + 240)) >> 3);
    *(a1 + 256) = *(v20 + 264);
  }

  else
  {
    v32 = 3;
    v31 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v34.__vftable) = 3;
      v33 = 5;
      cnprint::CNPrinter::Print(&v34, &v33, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEDF40;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 168) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
    *(a1 + 204) = 0u;
    *(a1 + 220) = 0u;
    *(a1 + 236) = 0u;
    *(a1 + 250) = 0;
  }
}

uint64_t sub_1D0DCA588(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0C39994(result, a4);
  }

  return result;
}

void sub_1D0DCA5E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCA668(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4DE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCA718(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCA7EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DCA9F8(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    v10 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
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

void sub_1D0DCA990(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCA9AC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4EE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCA9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v30.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v30, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEAD8 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEAD8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v30.__vftable = 0;
        std::bad_cast::bad_cast(&v30);
        v30.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEEAB0;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v23;
    *(a1 + 40) = v22;
    result = *(v21 + 96);
    v24 = *(v21 + 112);
    v25 = *(v21 + 80);
    *(a1 + 56) = *(v21 + 64);
    *(a1 + 104) = v24;
    *(a1 + 88) = result;
    *(a1 + 72) = v25;
  }

  else
  {
    v28 = 3;
    v27 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v30.__vftable) = 3;
      v29 = 5;
      cnprint::CNPrinter::Print(&v30, &v29, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEAB0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DCACC8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DCB1A8(v70, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    if (v72 != *(v8 + 3024))
    {
      return;
    }

    LOWORD(v76) = 12;
    LOBYTE(v78) = 3;
    v74 = v71;
    cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "EstimatorErrorRecoveryEvent received, type, %u", v73);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v15) = v8 - 16;
    }

    else
    {
      v15 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v76, &v78, "%s", v10, v11, v12, v13, v14, v15);
    if (v73 > 5u)
    {
      switch(v73)
      {
        case 6u:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 3;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Initiating RavenErrorRecoveryAction::ResetAO");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v51) = v8 - 16;
          }

          else
          {
            v51 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v46, v47, v48, v49, v50, v51);
          (*(*v8 + 40))(v8);
          break;
        case 7u:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 3;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Initiating RavenErrorRecoveryAction::ResetEstimator");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v69) = v8 - 16;
          }

          else
          {
            v69 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v64, v65, v66, v67, v68, v69);
          raven::RavenConvergenceEstimator::Reset((v8 + 2968));
          break;
        case 9u:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 3;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Initiating RavenErrorRecoveryAction::ResetXOStates");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v39) = v8 - 16;
          }

          else
          {
            v39 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v34, v35, v36, v37, v38, v39);
          raven::RavenConvergenceEstimator::ResetOscillatorStates((v8 + 2968));
          break;
        default:
LABEL_38:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 4;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Unhandled RavenErrorRecoveryAction, type, %u", v73);
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v57) = v8 - 16;
          }

          else
          {
            v57 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v52, v53, v54, v55, v56, v57);
          return;
      }
    }

    else
    {
      switch(v73)
      {
        case 3u:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 3;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Initiating RavenErrorRecoveryAction::InflatePositionUncertainty");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v45) = v8 - 16;
          }

          else
          {
            v45 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v40, v41, v42, v43, v44, v45);
          raven::RavenConvergenceEstimator::InflatePositionUncertainty((v8 + 2968), *(*(v8 + 4136) + 1440));
          break;
        case 4u:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 3;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Initiating RavenErrorRecoveryAction::InflateVelocityUncertainty");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v63) = v8 - 16;
          }

          else
          {
            v63 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v58, v59, v60, v61, v62, v63);
          raven::RavenConvergenceEstimator::InflateVelocityUncertainty((v8 + 2968), *(*(v8 + 4136) + 1448));
          break;
        case 5u:
          LOWORD(v76) = 12;
          LOBYTE(v78) = 3;
          v74 = v71;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v74, "Initiating RavenErrorRecoveryAction::InflateXOUncertainty");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v21) = v8 - 16;
          }

          else
          {
            v21 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v76, &v78, "%s", v16, v17, v18, v19, v20, v21);
          raven::RavenConvergenceEstimator::InflateXOUncertainty((v8 + 2968), *(*(v8 + 4136) + 1456));
          return;
        default:
          goto LABEL_38;
      }
    }
  }

  else
  {
    v78 = 12;
    v77 = 2;
    v76 = v71;
    sub_1D0B751F4(&v74, "EstimatorErrorRecoveryEvent");
    if (v75 >= 0)
    {
      v27 = &v74;
    }

    else
    {
      v27 = v74;
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, &v76, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", v22, v23, v24, v25, v26, v27);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v33) = v8 - 16;
    }

    else
    {
      v33 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v78, &v77, "%s", v28, v29, v30, v31, v32, v33);
    if (v75 < 0)
    {
      operator delete(v74);
    }
  }
}

void sub_1D0DCB140(_Unwind_Exception *exception_object)
{
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCB15C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4F60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCB1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v30.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v30, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEBC8 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEBC8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v30.__vftable = 0;
        std::bad_cast::bad_cast(&v30);
        v30.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEEBA0;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v23;
    *(a1 + 40) = v22;
    v24 = *(v21 + 80);
    result = *(v21 + 96);
    v25 = *(v21 + 112);
    *(a1 + 56) = *(v21 + 64);
    *(a1 + 104) = v25;
    *(a1 + 88) = result;
    *(a1 + 72) = v24;
  }

  else
  {
    v28 = 3;
    v27 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v30.__vftable) = 3;
      v29 = 5;
      cnprint::CNPrinter::Print(&v30, &v29, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEBA0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    *(a1 + 105) = 0;
  }

  return result;
}

void sub_1D0DCB498(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9660(v30, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8))
  {
    v9 = raven::RavenEstimator::HandleFitnessSessionEvent((v8 + 2968), v30);
    if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v35 = 12;
      v34 = 1;
      v33[0] = (*(v30[0] + 16))(v30);
      v33[1] = v10;
      (*(v30[0] + 24))(v31, v30);
      if (v32 >= 0)
      {
        v16 = v31;
      }

      else
      {
        v16 = v31[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v33, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v22) = v8 - 16;
      }

      else
      {
        v22 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v35, &v34, "%s", v17, v18, v19, v20, v21, v22);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  else
  {
    LOWORD(v31[0]) = 12;
    LOBYTE(v33[0]) = 2;
    v23 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v29) = v23;
    }

    else
    {
      v29 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v31, v33, "%s", v24, v25, v26, v27, v28, v29);
  }
}

void sub_1D0DCB63C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCB658(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE4FE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCB708(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCB7DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCB9E8(v30, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8))
  {
    v9 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v30);
    if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v35 = 12;
      v34 = 1;
      v33[0] = (*(v30[0] + 16))(v30);
      v33[1] = v10;
      (*(v30[0] + 24))(v31, v30);
      if (v32 >= 0)
      {
        v16 = v31;
      }

      else
      {
        v16 = v31[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v33, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v22) = v8 - 16;
      }

      else
      {
        v22 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v35, &v34, "%s", v17, v18, v19, v20, v21, v22);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  else
  {
    LOWORD(v31[0]) = 12;
    LOBYTE(v33[0]) = 2;
    v23 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v29) = v23;
    }

    else
    {
      v29 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v31, v33, "%s", v24, v25, v26, v27, v28, v29);
  }
}

void sub_1D0DCB980(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCB99C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE50E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCB9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v26.__vftable) = 3;
    LOBYTE(v24) = 5;
    cnprint::CNPrinter::Print(&v26, &v24, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v22);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEB68 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEEB68 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v26.__vftable = 0;
      std::bad_cast::bad_cast(&v26);
      v26.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEEB40;

    memcpy((a1 + 8), (v21 + 16), 0x10CuLL);
  }

  else
  {
    v24 = 3;
    v23 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v26.__vftable) = 3;
      v25 = 5;
      cnprint::CNPrinter::Print(&v26, &v25, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v22);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEB40;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 168) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = v19;
    *(a1 + 208) = v19;
    *(a1 + 224) = v19;
    *(a1 + 240) = v19;
    *(a1 + 256) = v19;
  }
}

uint64_t sub_1D0DCBCEC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCBD9C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE51E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCBE70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DCC07C(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    v10 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
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

void sub_1D0DCC014(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCC030(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCC07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v34.__vftable) = 3;
    LOBYTE(v32) = 5;
    cnprint::CNPrinter::Print(&v34, &v32, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v30);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEE898 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEE898 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v34.__vftable = 0;
        std::bad_cast::bad_cast(&v34);
        v34.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEE870;
    *(a1 + 8) = *(v21 + 16);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v24 = *(v21 + 48);
    *(a1 + 24) = *(v21 + 32);
    *(a1 + 72) = v23;
    *(a1 + 56) = v22;
    *(a1 + 40) = v24;
    v25 = *(v21 + 128);
    v26 = *(v21 + 144);
    v27 = *(v21 + 112);
    *(a1 + 88) = *(v21 + 96);
    *(a1 + 136) = v26;
    *(a1 + 120) = v25;
    *(a1 + 104) = v27;
    result = *(v21 + 192);
    v28 = *(v21 + 208);
    v29 = *(v21 + 176);
    *(a1 + 152) = *(v21 + 160);
    *(a1 + 200) = v28;
    *(a1 + 184) = result;
    *(a1 + 168) = v29;
  }

  else
  {
    v32 = 3;
    v31 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v34.__vftable) = 3;
      v33 = 5;
      cnprint::CNPrinter::Print(&v34, &v33, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v30);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v32, &v31, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE870;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DCC3A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DCC5B4(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    v10 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
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

void sub_1D0DCC54C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCC568(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE52E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DCC5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v35.__vftable) = 3;
    LOBYTE(v33) = 5;
    cnprint::CNPrinter::Print(&v35, &v33, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v31);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEB80 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEB80 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v35.__vftable = 0;
        std::bad_cast::bad_cast(&v35);
        v35.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEE090;
    v22 = v21[3];
    v23 = v21[4];
    v24 = v21[2];
    *(a1 + 8) = v21[1];
    *(a1 + 56) = v23;
    *(a1 + 40) = v22;
    *(a1 + 24) = v24;
    v25 = v21[7];
    v26 = v21[8];
    v27 = v21[6];
    *(a1 + 72) = v21[5];
    *(a1 + 120) = v26;
    *(a1 + 104) = v25;
    *(a1 + 88) = v27;
    v28 = v21[11];
    v29 = v21[12];
    v30 = v21[10];
    *(a1 + 136) = v21[9];
    *(a1 + 184) = v29;
    *(a1 + 168) = v28;
    *(a1 + 152) = v30;
    sub_1D0BBA094(a1 + 200, (v21 + 13));
    *&result = sub_1D0BE0DE8(a1 + 264, (v21 + 17)).n128_u64[0];
  }

  else
  {
    v33 = 3;
    v32 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v35.__vftable) = 3;
      v34 = 5;
      cnprint::CNPrinter::Print(&v35, &v34, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v31);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v33, &v32, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE090;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
    *(a1 + 224) = 0x100000003;
    *(a1 + 200) = &unk_1F4CDEB28;
    *(a1 + 208) = xmmword_1D0E7DCC0;
    *(a1 + 232) = a1 + 240;
    *(a1 + 288) = 0x300000003;
    *(a1 + 264) = &unk_1F4CD5DD0;
    *&result = 0x300000003;
    *(a1 + 272) = xmmword_1D0E76C10;
    *(a1 + 296) = a1 + 304;
  }

  return result;
}

uint64_t sub_1D0DCC990(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCCA64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v30, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8))
  {
    v9 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v30);
    if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v35 = 12;
      v34 = 1;
      v33[0] = (*(v30[0] + 16))(v30);
      v33[1] = v10;
      (*(v30[0] + 24))(v31, v30);
      if (v32 >= 0)
      {
        v16 = v31;
      }

      else
      {
        v16 = v31[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v33, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v22) = v8 - 16;
      }

      else
      {
        v22 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v35, &v34, "%s", v17, v18, v19, v20, v21, v22);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  else
  {
    LOWORD(v31[0]) = 12;
    LOBYTE(v33[0]) = 2;
    v23 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v29) = v23;
    }

    else
    {
      v29 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v31, v33, "%s", v24, v25, v26, v27, v28, v29);
  }
}

void sub_1D0DCCC08(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCCC24(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE53E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCCCD4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCCDA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DC8EF0(v38, a3, a3, a4, a5, a6, a7, a8);
  v10 = (*(*v8 + 88))(v8, v9);
  if (v10)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v10))
    {
      LOWORD(v43[0]) = 12;
      LOBYTE(v45) = 0;
      v40 = (*(v38[0] + 16))(v38);
      v41 = v11;
      cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v40, "RavenSystemEvent received");
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v17) = v8 - 16;
      }

      else
      {
        v17 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(v43, &v45, "%s", v12, v13, v14, v15, v16, v17);
    }

    if (!v39)
    {
      LOWORD(v43[0]) = 12;
      LOBYTE(v45) = 4;
      v40 = (*(v38[0] + 16))(v38);
      v41 = v18;
      cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v40, "Resetting estimator based on system event");
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v24) = v8 - 16;
      }

      else
      {
        v24 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(v43, &v45, "%s", v19, v20, v21, v22, v23, v24);
      (*(*v8 + 40))(v8);
    }
  }

  else
  {
    v45 = 12;
    v44 = 2;
    v43[0] = (*(v38[0] + 16))(v38);
    v43[1] = v25;
    (*(v38[0] + 24))(&v40, v38);
    if (v42 >= 0)
    {
      v31 = &v40;
    }

    else
    {
      v31 = v40;
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v43, "RavenConvergenceEstimatorActiveObject not configured, cannot handle event, %s", v26, v27, v28, v29, v30, v31);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v37) = v8 - 16;
    }

    else
    {
      v37 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v45, &v44, "%s", v32, v33, v34, v35, v36, v37);
    if (v42 < 0)
    {
      operator delete(v40);
    }
  }
}

void sub_1D0DCD01C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCD038(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE54E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCD0E8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCD198(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5628))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCD2FC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DCD508(v31, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8, v9))
  {
    v10 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v31);
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

void sub_1D0DCD4A0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCD4BC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE56A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int64x2_t sub_1D0DCD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v30.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v30, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEC28 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEC28 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v30.__vftable = 0;
        std::bad_cast::bad_cast(&v30);
        v30.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF718;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v23;
    *(a1 + 40) = v22;
    result = *(v21 + 96);
    v24 = *(v21 + 112);
    v25 = *(v21 + 80);
    *(a1 + 56) = *(v21 + 64);
    *(a1 + 104) = v24;
    *(a1 + 88) = result;
    *(a1 + 72) = v25;
  }

  else
  {
    v28 = 3;
    v27 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v30.__vftable) = 3;
      v29 = 5;
      cnprint::CNPrinter::Print(&v30, &v29, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF718;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 88) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = result;
    *(a1 + 112) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DCD7D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C050F4(v30, a3, a3, a4, a5, a6, a7, a8);
  if ((*(*v8 + 88))(v8))
  {
    v9 = raven::RavenConvergenceEstimator::HandleEvent((v8 + 2968), v30);
    if (v9 && cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v35 = 12;
      v34 = 1;
      v33[0] = (*(v30[0] + 16))(v30);
      v33[1] = v10;
      (*(v30[0] + 24))(v31, v30);
      if (v32 >= 0)
      {
        v16 = v31;
      }

      else
      {
        v16 = v31[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v8 + 240, v33, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v22) = v8 - 16;
      }

      else
      {
        v22 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v35, &v34, "%s", v17, v18, v19, v20, v21, v22);
      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  else
  {
    LOWORD(v31[0]) = 12;
    LOBYTE(v33[0]) = 2;
    v23 = cnprint::CNLogFormatter::FormatGeneral((v8 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v29) = v23;
    }

    else
    {
      v29 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(v31, v33, "%s", v24, v25, v26, v27, v28, v29);
  }
}

void sub_1D0DCD97C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DCD998(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5728))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCDA48(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE57F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D0DCDA94(double *a1, double *a2)
{
  v2 = a1[1];
  if (v2 >= *(a2 - 1))
  {
    v6 = (a1 + 2);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 8);
      v6 += 16;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = v3[3];
      v3 += 2;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v11 = *v4;
    *v4 = *v8;
    *v8 = v11;
    v12 = *(v4 + 8);
    *(v4 + 8) = v8[1];
    *(v8 + 1) = v12;
    do
    {
      v13 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 >= v13);
    do
    {
      v14 = *(v8 - 1);
      v8 -= 2;
    }

    while (v2 < v14);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
    a1[1] = *(v4 - 8);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  return v4;
}

BOOL sub_1D0DCDB7C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = (a1 + 24);
      v18 = *(a1 + 24);
      v19 = (a1 + 8);
      v20 = *(a1 + 8);
      v21 = *(a2 - 8);
      if (v18 >= v20)
      {
        if (v21 >= v18)
        {
          return 1;
        }

        v29 = *(a1 + 16);
        *(a1 + 16) = *(a2 - 16);
        *(a2 - 16) = v29;
        v30 = *(a1 + 24);
        *(a1 + 24) = *(a2 - 8);
        *(a2 - 8) = v30;
        if (*(a1 + 24) >= *(a1 + 8))
        {
          return 1;
        }

        v31 = *a1;
        *a1 = *(a1 + 16);
        *(a1 + 16) = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 >= v18)
        {
          *a1 = *(a1 + 16);
          *(a1 + 8) = v18;
          *(a1 + 16) = v22;
          *(a1 + 24) = v20;
          if (*(a2 - 8) >= v20)
          {
            return 1;
          }

          *(a1 + 16) = *(a2 - 16);
          *(a2 - 16) = v22;
          v19 = (a1 + 24);
        }

        else
        {
          *a1 = *(a2 - 16);
          *(a2 - 16) = v22;
        }

        v17 = (a2 - 8);
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_1D0BD1E18(a1, (a1 + 16), (a1 + 32), (a1 + 48));
        if (*(a2 - 8) < *(a1 + 56))
        {
          v7 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 16);
          *(a2 - 16) = v7;
          v8 = *(a1 + 56);
          *(a1 + 56) = *(a2 - 8);
          *(a2 - 8) = v8;
          v9 = *(a1 + 56);
          v10 = *(a1 + 40);
          if (v9 < v10)
          {
            v11 = *(a1 + 48);
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            *(a1 + 32) = v11;
            *(a1 + 40) = v9;
            *(a1 + 48) = v13;
            *(a1 + 56) = v10;
            if (v9 < v12)
            {
              v14 = *(a1 + 8);
              v15 = *(a1 + 16);
              *(a1 + 16) = v11;
              *(a1 + 24) = v9;
              *(a1 + 32) = v15;
              *(a1 + 40) = v12;
              if (v9 < v14)
              {
                v16 = *a1;
                *a1 = v11;
                *(a1 + 8) = v9;
                *(a1 + 16) = v16;
                *(a1 + 24) = v14;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_1D0BD1E18(a1, (a1 + 16), (a1 + 32), (a2 - 16));
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) < *(a1 + 8))
    {
      v5 = *a1;
      *a1 = *(a2 - 16);
      *(a2 - 16) = v5;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 8);
      *(a2 - 8) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = *(a1 + 24);
  v24 = (a1 + 8);
  v25 = *(a1 + 8);
  v26 = (a1 + 40);
  v27 = *(a1 + 40);
  if (v23 < v25)
  {
    v28 = *a1;
    if (v27 >= v23)
    {
      *a1 = *(a1 + 16);
      *(a1 + 8) = v23;
      *(a1 + 16) = v28;
      *(a1 + 24) = v25;
      if (v27 >= v25)
      {
        goto LABEL_34;
      }

      *(a1 + 16) = *(a1 + 32);
      *(a1 + 32) = v28;
      v24 = (a1 + 24);
    }

    else
    {
      *a1 = *(a1 + 32);
      *(a1 + 32) = v28;
    }

    goto LABEL_33;
  }

  if (v27 < v23)
  {
    v32 = *(a1 + 16);
    v33 = *(a1 + 32);
    *(a1 + 16) = v33;
    *(a1 + 24) = v27;
    *(a1 + 32) = v32;
    *(a1 + 40) = v23;
    if (v27 < v25)
    {
      v34 = *a1;
      *a1 = v33;
      *(a1 + 16) = v34;
      v26 = (a1 + 24);
LABEL_33:
      *v24 = v27;
      *v26 = v25;
    }
  }

LABEL_34:
  v36 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = a1 + 32;
  while (1)
  {
    v40 = *(v36 + 8);
    if (v40 < *(v39 + 8))
    {
      v41 = *v36;
      v42 = v37;
      while (1)
      {
        v43 = a1 + v42;
        v44 = *(a1 + v42 + 40);
        *(v43 + 48) = *(a1 + v42 + 32);
        *(v43 + 56) = v44;
        if (v42 == -32)
        {
          break;
        }

        v42 -= 16;
        if (v40 >= *(v43 + 24))
        {
          v45 = a1 + v42 + 48;
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v41;
      *(v45 + 8) = v40;
      if (++v38 == 8)
      {
        return v36 + 16 == a2;
      }
    }

    v39 = v36;
    v37 += 16;
    v36 += 16;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

double *sub_1D0DCDEB8(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        sub_1D0DCE074(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[1] < *(a1 + 8))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = *(v12 + 1);
          v12[1] = *(a1 + 8);
          *(a1 + 8) = v14;
          sub_1D0DCE074(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v17 = *a1;
        v16 = *(a1 + 8);
        v18 = a1;
        do
        {
          v19 = &v18[2 * v15];
          v20 = v19 + 2;
          v21 = (2 * v15) | 1;
          v15 = 2 * v15 + 2;
          if (v15 >= v8)
          {
            v15 = v21;
          }

          else
          {
            v22 = v19[3];
            v23 = v19[5];
            v24 = v19 + 4;
            if (v22 >= v23)
            {
              v15 = v21;
            }

            else
            {
              v20 = v24;
            }
          }

          *v18 = *v20;
          v18[1] = *(v20 + 1);
          v18 = v20;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v20 == v6 - 2)
        {
          *v20 = v17;
          *(v20 + 1) = v16;
        }

        else
        {
          *v20 = *(v6 - 2);
          v20[1] = *(v6 - 1);
          *(v6 - 2) = v17;
          *(v6 - 1) = v16;
          sub_1D0DCE13C(a1, (v20 + 2), a4, (v20 - a1 + 16) >> 4);
        }

        v6 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1D0DCE074(uint64_t result, uint64_t a2, uint64_t a3, double *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[1] < v8[3])
      {
        v8 += 2;
        v7 = v9;
      }

      v10 = a4[1];
      if (v8[1] >= v10)
      {
        v11 = *a4;
        do
        {
          v12 = a4;
          a4 = v8;
          *v12 = *v8;
          v12[1] = v8[1];
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[1] < v8[3])
          {
            v8 += 2;
            v7 = v14;
          }
        }

        while (v8[1] >= v10);
        *a4 = v11;
        a4[1] = v10;
      }
    }
  }

  return result;
}

uint64_t sub_1D0DCE13C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 16 * v4);
    v6 = *(a2 - 8);
    if (v5[1] < v6)
    {
      v8 = *(a2 - 16);
      v7 = (a2 - 16);
      v9 = v8;
      do
      {
        v10 = v7;
        v7 = v5;
        *v10 = *v5;
        v10[1] = v5[1];
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 16 * v4);
      }

      while (v5[1] < v6);
      *v7 = v9;
      v7[1] = v6;
    }
  }

  return result;
}

uint64_t sub_1D0DCE2EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v27.__vftable) = 3;
    LOBYTE(v35) = 5;
    cnprint::CNPrinter::Print(&v27, &v35, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF1C0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF1C0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v27.__vftable = 0;
      std::bad_cast::bad_cast(&v27);
      v27.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v27.__vftable = &unk_1F4CEF198;
    v21 = v20[2];
    v28 = v20[1];
    v29 = v21;
    v22 = v20[5];
    v23 = v20[6];
    v24 = v20[4];
    v30 = v20[3];
    v33 = v23;
    v32 = v22;
    v31 = v24;
  }

  else
  {
    v35 = 3;
    v34 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v27.__vftable) = 3;
      v36 = 5;
      cnprint::CNPrinter::Print(&v27, &v36, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v35, &v34, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v29 = 0uLL;
    v28 = 0uLL;
    v27.__vftable = &unk_1F4CEF198;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    *&v33 = 0;
    *(&v33 + 1) = 0x7FF8000000000000;
  }

  return (*(*v9 + 40))(v9);
}

uint64_t sub_1D0DCE554(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5870))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D0DCE628(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCE6B4(v10, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v8, v10);
}

uint64_t sub_1D0DCE668(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE58F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCE6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v30.__vftable) = 3;
    LOBYTE(v28) = 5;
    cnprint::CNPrinter::Print(&v30, &v28, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEF68 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEF68 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v30.__vftable = 0;
        std::bad_cast::bad_cast(&v30);
        v30.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEEF40;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v23;
    *(a1 + 40) = v22;
    v24 = *(v21 + 80);
    result = *(v21 + 96);
    v25 = *(v21 + 112);
    *(a1 + 56) = *(v21 + 64);
    *(a1 + 104) = v25;
    *(a1 + 88) = result;
    *(a1 + 72) = v24;
  }

  else
  {
    v28 = 3;
    v27 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v30.__vftable) = 3;
      v29 = 5;
      cnprint::CNPrinter::Print(&v30, &v29, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v28, &v27, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEEF40;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
  }

  return result;
}

uint64_t sub_1D0DCE960(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5970))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCEA34(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v64.__vftable) = 3;
    LOBYTE(v62) = 5;
    cnprint::CNPrinter::Print(&v64, &v62, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v22);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v21 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v21 != (off_1F4CEF3A0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v21, (off_1F4CEF3A0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v64.__vftable = 0;
      std::bad_cast::bad_cast(&v64);
      v64.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    sub_1D0DCECF8(v23, *(a3 + 16) + 8);
  }

  else
  {
    v62 = 3;
    v61 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v64.__vftable) = 3;
      v63 = 5;
      cnprint::CNPrinter::Print(&v64, &v63, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v22);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v62, &v61, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    bzero(v24, 0x490uLL);
    v23[1] = 0;
    v23[2] = 0;
    v23[0] = &unk_1F4CEE120;
    v24[0] = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0x7FF8000000000000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0x7FF8000000000000;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0x7FF8000000000000;
    cntransformation::CNRigidTransformation::CNRigidTransformation(&v58);
    cntransformation::CNRigidTransformation::CNRigidTransformation(v59);
    v59[220] = 0;
    v60 = 0;
  }

  raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v9, v23, v19, v20);
  raven::VIOEstimateEvent::~VIOEstimateEvent(v23);
}

uint64_t sub_1D0DCECAC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE59F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCECF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEE120;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  v13 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 216) = v13;
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  v14 = *(a2 + 248);
  v15 = *(a2 + 264);
  v16 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 264) = v15;
  *(a1 + 280) = v16;
  *(a1 + 248) = v14;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  if (a1 != a2)
  {
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
  }

  sub_1D0BBA094(a1 + 336, a2 + 336);
  sub_1D0BE0DE8(a1 + 400, a2 + 400);
  sub_1D0BE0DE8(a1 + 512, a2 + 512);
  sub_1D0BE0DE8(a1 + 624, a2 + 624);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  if (a1 != a2)
  {
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
  }

  sub_1D0BBA094(a1 + 776, a2 + 776);
  sub_1D0BE0DE8(a1 + 840, a2 + 840);
  sub_1D0BE0DE8(a1 + 952, a2 + 952);
  sub_1D0BE0DE8(a1 + 1064, a2 + 1064);
  *(a1 + 1176) = *(a2 + 1176);
  v17 = *(a2 + 1184);
  *(a1 + 1186) = *(a2 + 1186);
  *(a1 + 1184) = v17;
  return a1;
}

void sub_1D0DCEEDC(_Unwind_Exception *a1)
{
  *v7 = &unk_1F4CD5E28;
  *v6 = &unk_1F4CD5E28;
  *v5 = &unk_1F4CD5E28;
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void sub_1D0DCF044(uint64_t a1, raven::RavenDeltaVIOEstimateActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v52.__vftable) = 3;
    LOBYTE(v50) = 5;
    cnprint::CNPrinter::Print(&v52, &v50, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v22);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v21 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v21 != (off_1F4CEF3B8 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v21, (off_1F4CEF3B8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v52.__vftable = 0;
      std::bad_cast::bad_cast(&v52);
      v52.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    sub_1D0DCF2EC(v23, *(a3 + 16) + 8);
  }

  else
  {
    v50 = 3;
    v49 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v52.__vftable) = 3;
      v51 = 5;
      cnprint::CNPrinter::Print(&v52, &v51, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v22);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v50, &v49, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    bzero(v24, 0x438uLL);
    v23[1] = 0;
    v23[2] = 0;
    v23[0] = &unk_1F4CEE150;
    v24[0] = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0x7FF8000000000000;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0x7FF8000000000000;
    cntransformation::CNRigidTransformation::CNRigidTransformation(&v46);
    cntransformation::CNRigidTransformation::CNRigidTransformation(v47);
    v47[440] = 0;
    v48 = vdupq_n_s64(0x7FF8000000000000uLL);
  }

  raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(v9, v23, v19, v20);
  raven::VLLocalizationEvent::~VLLocalizationEvent(v23);
}

uint64_t sub_1D0DCF2A0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5A70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCF2EC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEE150;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v12;
  *(a1 + 152) = v11;
  *(a1 + 136) = v10;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  if (a1 != a2)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
  }

  sub_1D0BBA094(a1 + 232, a2 + 232);
  sub_1D0BE0DE8(a1 + 296, a2 + 296);
  sub_1D0BE0DE8(a1 + 408, a2 + 408);
  sub_1D0BE0DE8(a1 + 520, a2 + 520);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  if (a1 != a2)
  {
    *(a1 + 640) = *(a2 + 640);
    *(a1 + 656) = *(a2 + 656);
  }

  sub_1D0BBA094(a1 + 672, a2 + 672);
  sub_1D0BE0DE8(a1 + 736, a2 + 736);
  sub_1D0BE0DE8(a1 + 848, a2 + 848);
  sub_1D0BE0DE8(a1 + 960, a2 + 960);
  *(a1 + 1072) = *(a2 + 1072);
  v13 = *(a2 + 1080);
  *(a1 + 1096) = *(a2 + 1096);
  *(a1 + 1080) = v13;
  return a1;
}

void sub_1D0DCF498(_Unwind_Exception *a1)
{
  *v7 = &unk_1F4CD5E28;
  *v6 = &unk_1F4CD5E28;
  *v5 = &unk_1F4CD5E28;
  *v4 = &unk_1F4CD5E28;
  *v3 = &unk_1F4CD5E28;
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DCF5DC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5AF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCF68C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5B70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DCF760(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCF7EC(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0DCF7A0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5BF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DCF7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v36.__vftable) = 3;
    LOBYTE(v34) = 5;
    cnprint::CNPrinter::Print(&v36, &v34, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v32);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v21 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v21 != (off_1F4CEEF80 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v21, (off_1F4CEEF80 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v36.__vftable = 0;
      std::bad_cast::bad_cast(&v36);
      v36.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v22 = *(a2 + 16);
    *a1 = &unk_1F4CEF6B8;
    v23 = *(v22 + 48);
    v24 = *(v22 + 64);
    v25 = *(v22 + 80);
    v26 = *(v22 + 96);
    v27 = *(v22 + 16);
    v28 = *(v22 + 32);
    *(a1 + 104) = 0u;
    *(a1 + 8) = v27;
    *(a1 + 24) = v28;
    *(a1 + 72) = v25;
    *(a1 + 88) = v26;
    *(a1 + 40) = v23;
    *(a1 + 56) = v24;
    *(a1 + 120) = 0u;
    if (a1 + 104 != v22 + 112)
    {
      *(a1 + 104) = *(v22 + 112);
      *(a1 + 120) = *(v22 + 128);
    }

    v29 = *(v22 + 144);
    *(a1 + 152) = *(v22 + 160);
    *(a1 + 136) = v29;
    result = *(v22 + 176);
    v30 = *(v22 + 192);
    v31 = *(v22 + 208);
    *(a1 + 216) = *(v22 + 224);
    *(a1 + 200) = v31;
    *(a1 + 184) = v30;
    *(a1 + 168) = result;
  }

  else
  {
    v34 = 3;
    v33 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v36.__vftable) = 3;
      v35 = 5;
      cnprint::CNPrinter::Print(&v36, &v35, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v32);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v34, &v33, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 216) = 0;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF6B8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    result.n128_u64[0] = 0x3FF0000000000000;
    v20 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 128) = xmmword_1D0E87BC0;
    *(a1 + 144) = v20;
    *(a1 + 160) = v20;
    *(a1 + 176) = v20;
    *(a1 + 192) = v20;
    *(a1 + 208) = 0x7FF8000000000000;
    *(a1 + 216) = 1;
  }

  return result;
}

uint64_t sub_1D0DCFB1C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5C70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFBCC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5CF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFC7C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5D70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFD2C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5DF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DCFDDC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5E70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DCFEB0(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v29.__vftable) = 3;
    LOBYTE(v40) = 5;
    cnprint::CNPrinter::Print(&v29, &v40, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v28);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF388 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF388 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v29.__vftable = 0;
      std::bad_cast::bad_cast(&v29);
      v29.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v29.__vftable = &unk_1F4CEF360;
    v30 = *(v20 + 16);
    v21 = *(v20 + 64);
    v22 = *(v20 + 80);
    v23 = *(v20 + 48);
    v31 = *(v20 + 32);
    v32 = v23;
    v33 = v21;
    v34 = v22;
    v24 = *(v20 + 96);
    v25 = *(v20 + 112);
    v26 = *(v20 + 128);
    v38 = *(v20 + 144);
    v36 = v25;
    v37 = v26;
    v35 = v24;
  }

  else
  {
    v40 = 3;
    v39 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v29.__vftable) = 3;
      v41 = 5;
      cnprint::CNPrinter::Print(&v29, &v41, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v28);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v40, &v39, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v31 = 0uLL;
    v30 = 0uLL;
    v29.__vftable = &unk_1F4CEF360;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    *&v35 = 0;
    *(&v35 + 1) = 0x7FF8000000000000;
    *&v36 = 0;
    *(&v36 + 1) = 0x7FF8000000000000;
    *&v37 = 0;
    *(&v37 + 1) = 0x7FF8000000000000;
    v38 = -COERCE_DOUBLE(0x8000000080000000);
  }

  *&result = raven::RavenDeviceAttitudeActiveObject::HandleEvent(v9, &v29).n128_u64[0];
  return result;
}

uint64_t sub_1D0DD0118(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5EF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD01C8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE5F70))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0278(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6080))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0440(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6100))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD048C(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 200)
  {
    result = *(v3 - 16);
    *(v3 - 16) = 0;
    if (result)
    {
      result = MEMORY[0x1D387ECA0](result, 0x1000C4041240993);
    }
  }

  return result;
}

uint64_t sub_1D0DD0558(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6180))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0608(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6200))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD06B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6280))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0768(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6300))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD083C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v64[0].__vftable) = 3;
    LOBYTE(v80[0]) = 5;
    cnprint::CNPrinter::Print(v64, v80, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v47);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF220 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF220 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v64[0].__vftable = 0;
      std::bad_cast::bad_cast(v64);
      v64[0].__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v50 = &unk_1F4CEE0C0;
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v53 = *(v20 + 48);
    v52 = v22;
    v51 = v21;
    v23 = *(v20 + 64);
    v24 = *(v20 + 80);
    v25 = *(v20 + 96);
    v57 = *(v20 + 112);
    v56 = v25;
    v55 = v24;
    v54 = v23;
    v58[1] = 0;
    v59 = 0;
    v58[0] = 0;
    sub_1D0DD0F0C(v58, *(v20 + 128), *(v20 + 136), 0x80FE03F80FE03F81 * ((*(v20 + 136) - *(v20 + 128)) >> 6));
  }

  else
  {
    LOWORD(v80[0]) = 3;
    LOBYTE(__p[0]) = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v64[0].__vftable) = 3;
      LOBYTE(v98[0]) = 5;
      cnprint::CNPrinter::Print(v64, v98, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v47);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v80, __p, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v52 = 0uLL;
    v51 = 0uLL;
    v50 = &unk_1F4CEE0C0;
    v53 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
    *&v56 = 0;
    *(&v56 + 1) = 0x7FF8000000000000;
    v59 = 0;
    *v58 = 0u;
    v57 = 0u;
  }

  if (*(v9 + 224) == 1)
  {
    *&v64[0].__vftable = *(v9 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v9 + 232), v64);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v9 + 232), &v50, v26, v27, v28, v29, v30, v31))
    {
      v100 = 0;
      v101 = 0;
      v102 = 0;
      v103 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      memset(v107, 0, sizeof(v107));
      v108 = 0;
      v98[1] = 0;
      v98[2] = 0;
      v98[0] = &unk_1F4CEF598;
      v99 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v9 + 232), v98))
      {
        sub_1D0C4499C();
      }

      v80[1] = 0;
      v80[2] = 0;
      v80[0] = &unk_1F4CEE9A8;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v90 = 0x7FF8000000000000;
      v91 = 0;
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
      v97 = 0;
      v95 = 0;
      v96 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v9 + 232), v80))
      {
        sub_1D0B9B7B4();
      }

      v64[1].__vftable = 0;
      v65 = 0.0;
      v64[0].__vftable = &unk_1F4CEE030;
      LOBYTE(v66) = 0;
      *(&v66 + 1) = 0;
      *&v67 = 0;
      BYTE8(v67) = 0;
      v68 = 0uLL;
      LOBYTE(v69) = 0;
      *(&v69 + 1) = 0;
      v70 = 0;
      v71 = 0x7FF8000000000000;
      v72 = 0;
      v73 = 0;
      v74 = &unk_1F4CD5A50;
      v75 = 0u;
      v76 = 0u;
      v77 = xmmword_1D0E76640;
      v78 = xmmword_1D0E76650;
      v79 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v9 + 232), v64))
      {
        v33 = *(v9 + 112);
        v32 = *(v9 + 120);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v64[1].__vftable = v33;
        v65 = v32;
        v70 = 0;
        v71 = 0x7FF8000000000000;
        v63 = 12;
        v62 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        v48 = v33 + v32;
        cnprint::CNPrinter::Print(&v63, &v62, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v34, v35, v36, v37, v38, SLOBYTE(v48));
        if (v61 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C();
      }

      v98[0] = &unk_1F4CEF598;
      v64[0].__vftable = &v107[4];
      sub_1D0BBBD80(v64);
    }

    else
    {
      LOWORD(v80[0]) = 12;
      LOBYTE(v98[0]) = 2;
      v39 = v50[2](&v50);
      v41 = v40;
      (v50[3])(v64, &v50);
      v49 = v41 + v39;
      cnprint::CNPrinter::Print(v80, v98, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v42, v43, v44, v45, v46, SLOBYTE(v49));
      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64[0].__vftable);
      }
    }
  }

  v50 = &unk_1F4CEE0C0;
  if (v58[0])
  {
    v58[1] = v58[0];
    operator delete(v58[0]);
  }
}

void sub_1D0DD0E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, std::exception a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  *(v42 - 168) = v41;
  a36.__vftable = (v42 - 72);
  sub_1D0BBBD80(&a36);
  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD0EC0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6380))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD0F0C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x7F01FC07F01FDLL)
    {
      sub_1D0DD0FDC(result, a4);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0DD0FC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD0FDC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x7F01FC07F01FDLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0DD109C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6400))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD114C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6480))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD1220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DC8EF0(v10, a3, a3, a4, a5, a6, a7, a8);
  if (!v10[26])
  {
    (*(*v8 + 40))(v8, v9);
  }
}

uint64_t sub_1D0DD1284(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6500))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD1334(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6580))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD13E4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6600))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD1494(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6680))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD1544(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6700))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD15F4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6780))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD16C8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCA268(v9, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v10[1] = 0;
  v10[2] = 0;
  v10[0] = &unk_1F4CEDF40;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0x7FF8000000000000;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0x7FF8000000000000;
  v33 = 0;
  v34 = 0u;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  if (!raven::AccessoryVehicleSpeedChecker::HandleEvent(*(v8 + 1840), v9, v10))
  {
    sub_1D0DD18A0();
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v10);
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v9);
}

void sub_1D0DD1818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v45 = *(v43 - 56);
  if (v45)
  {
    sub_1D0B7CAB8(v45);
  }

  if (v42)
  {
    sub_1D0B7CAB8(v42);
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(&a42);
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD1854(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6848))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD1A64(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD1AE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CE6810;
  *(a1 + 8) = &unk_1F4CEDF40;
  *(a1 + 16) = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  v7 = *(a2 + 88);
  v8 = *(a2 + 104);
  v9 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 120);
  *(a1 + 144) = v9;
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  v12 = *(a2 + 184);
  *(a1 + 208) = *(a2 + 200);
  *(a1 + 176) = v11;
  *(a1 + 192) = v12;
  *(a1 + 160) = v10;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  sub_1D0DCA588(a1 + 216, *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 3);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_1D0DCA588(a1 + 240, *(a2 + 232), *(a2 + 240), (*(a2 + 240) - *(a2 + 232)) >> 3);
  *(a1 + 264) = *(a2 + 256);
  return a1;
}

void sub_1D0DD1BF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 224) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD1C38(uint64_t a1)
{
  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DD1D60(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE68C8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD1EE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCA9F8(v11, a3, a3, a4, a5, a6, a7, a8);
  v8[16] = v8[7];
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = &unk_1F4CEEAB0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0x7FF8000000000000;
  *&result = raven::RavenIntegrityEstimator::HandleEvent((v8 + 15), v11, v12).n128_u64[0];
  if (!v10)
  {
    sub_1D0DD205C();
  }

  return result;
}

void sub_1D0DD1FEC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD2010(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6990))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD2278(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD23F8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6A10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD24CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCE6B4(v17, a3, a3, a4, a5, a6, a7, a8);
  v8[16] = v8[7];
  if (raven::RavenIntegrityEstimator::HandleEvent((v8 + 15), v17))
  {
    v21 = 12;
    v20 = 2;
    v9 = (*(v17[0] + 16))(v17);
    v11 = v10 + v9;
    (*(v17[0] + 24))(&v18, v17);
    cnprint::CNPrinter::Print(&v21, &v20, "t,%.3lf,IE failed to handle %s", v12, v13, v14, v15, v16, SLOBYTE(v11));
    if (v19 < 0)
    {
      operator delete(v18);
    }
  }
}

void sub_1D0DD25D4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD25F0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6A90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD26C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DD282C(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEDF70;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v26 = 0;
  v25 = 0;
  v27 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x7FF8000000000000;
  v34 = 0;
  v36 = 0;
  v35 = 0;
  v37 = 0x3FF0000000000000;
  v40 = 0x400000004;
  v38 = &unk_1F4CDEB70;
  v39 = xmmword_1D0E7DCD0;
  v41 = &v42;
  result = raven::AttitudeChangeChecker::HandleEvent(*(v8 + 1864), v10, v11);
  if (!result)
  {
    sub_1D0DD2B70();
  }

  return result;
}

uint64_t sub_1D0DD27E0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6B10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD282C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v38.__vftable) = 3;
    LOBYTE(v36) = 5;
    cnprint::CNPrinter::Print(&v38, &v36, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v34);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEAF0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEEAF0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v38.__vftable = 0;
      std::bad_cast::bad_cast(&v38);
      v38.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEDF70;
    v22 = v21[9];
    v23 = v21[10];
    v24 = v21[11];
    v25 = v21[12];
    v26 = v21[5];
    v27 = v21[6];
    v28 = v21[7];
    v29 = v21[8];
    v30 = v21[1];
    v31 = v21[2];
    v32 = v21[3];
    v33 = v21[4];
    *(a1 + 200) = 0u;
    *(a1 + 40) = v32;
    *(a1 + 56) = v33;
    *(a1 + 8) = v30;
    *(a1 + 24) = v31;
    *(a1 + 104) = v28;
    *(a1 + 120) = v29;
    *(a1 + 72) = v26;
    *(a1 + 88) = v27;
    *(a1 + 168) = v24;
    *(a1 + 184) = v25;
    *(a1 + 136) = v22;
    *(a1 + 152) = v23;
    *(a1 + 216) = 0u;
    if ((a1 + 200) != v21 + 13)
    {
      *(a1 + 200) = v21[13];
      *(a1 + 216) = v21[14];
    }

    *&result = sub_1D0DAA484(a1 + 232, (v21 + 15)).n128_u64[0];
  }

  else
  {
    v36 = 3;
    v35 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v38.__vftable) = 3;
      v37 = 5;
      cnprint::CNPrinter::Print(&v38, &v37, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v34);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v36, &v35, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 392) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEDF70;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = 0x3FF0000000000000;
    *(a1 + 256) = 0x400000004;
    *(a1 + 232) = &unk_1F4CDEB70;
    *&result = 0x400000004;
    *(a1 + 240) = xmmword_1D0E7DCD0;
    *(a1 + 264) = a1 + 272;
  }

  return result;
}

void sub_1D0DD2C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD2C94(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD2CF0((a1 + 3));
}

void sub_1D0DD2CF0(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD2E84();
}

void sub_1D0DD2E2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD2F64(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAED8;
  *(a1 + 8) = &unk_1F4CEDF70;
  v3 = *(a2 + 136);
  v4 = *(a2 + 152);
  v5 = *(a2 + 168);
  v6 = *(a2 + 184);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 104);
  v10 = *(a2 + 120);
  v11 = *(a2 + 8);
  v12 = *(a2 + 24);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  *(a1 + 208) = 0u;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  *(a1 + 112) = v9;
  *(a1 + 128) = v10;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 176) = v5;
  *(a1 + 192) = v6;
  *(a1 + 144) = v3;
  *(a1 + 160) = v4;
  *(a1 + 224) = 0u;
  if (a1 + 208 != a2 + 200)
  {
    *(a1 + 208) = *(a2 + 200);
    *(a1 + 224) = *(a2 + 216);
  }

  sub_1D0DAA484(a1 + 240, a2 + 232);
  return a1;
}

uint64_t sub_1D0DD3044(uint64_t result)
{
  *(result + 8) = &unk_1F4CEDF70;
  *(result + 240) = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DD3088(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEDF70;
  *(a1 + 240) = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DD31B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6B90))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD328C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCF7EC(&v9, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  sub_1D0DD3320();
}

uint64_t sub_1D0DD32D4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6C10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD33B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD3444(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD34A0((a1 + 3));
}

void sub_1D0DD34A0(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD3634();
}

void sub_1D0DD35DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0DD3714(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAD38;
  *(a1 + 8) = &unk_1F4CEF6B8;
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  *(a1 + 112) = 0u;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *(a1 + 128) = 0u;
  if (a1 + 112 != a2 + 104)
  {
    *(a1 + 112) = *(a2 + 104);
    *(a1 + 128) = *(a2 + 120);
  }

  v8 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 160) = v8;
  result = *(a2 + 168);
  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  *(a1 + 224) = *(a2 + 216);
  *(a1 + 192) = v10;
  *(a1 + 208) = v11;
  *(a1 + 176) = result;
  return result;
}

void sub_1D0DD38E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9660(&v60, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v63 = 12;
  v62 = 3;
  v9 = (*(v60 + 16))(&v60);
  v11 = v10 + v9;
  cnprint::CNPrinter::Print(&v63, &v62, "#rwo,integrity_estimator,event_time,%.6f,activity_type,%d,state,%d,source,%d,start_time,%.6f,applicability_time,%.6f,end_time,%.6f", v12, v13, v14, v15, v16, SLOBYTE(v11));
  if (*(*(v8 + 232) + 3814))
  {
    if (LOBYTE(v61[52]) == 1)
    {
      v63 = 12;
      v62 = 2;
      v18 = (*(v60 + 16))(&v60);
      v55 = v19 + v18;
      cnprint::CNPrinter::Print(&v63, &v62, "t,%.3lf,IntegrityEstimatorAO: Processing MotionStateMediator FitnessSessionEvent, event=%d", v20, v21, v22, v23, v24, SLOBYTE(v55));
      v26 = *(v8 + 2408);
      if ((v61[12] & 0xFD00) != 0)
      {
        if (*(v8 + 2408))
        {
          memcpy((v8 + 1984), v61, 0x1A1uLL);
        }

        else
        {
          *(v8 + 1976) = &unk_1F4CEF508;
          memcpy((v8 + 1984), v61, 0x1A1uLL);
          *(v8 + 2408) = 1;
        }
      }

      else
      {
        if (*(v8 + 2408))
        {
          *(v8 + 2408) = 0;
        }

        if (*(v8 + 2848) == 1 && (*(v8 + 2521) & 0xFD) != 0)
        {
          if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
          {
            v63 = 12;
            v62 = 1;
            v48 = (*(v60 + 16))(&v60);
            v59 = v49 + v48;
            cnprint::CNPrinter::Print(&v63, &v62, "t,%.3lf,IntegrityEstimatorAO: Local ended but remote still active, blocking local end-event and sending cached remote FitnessSessionEvent", v50, v51, v52, v53, v54, SLOBYTE(v59));
          }

          *(v8 + 2424) = *(v8 + 112);
          *(v8 + 2504) = 0;
          *(v8 + 2440) = 0u;
          *(v8 + 2456) = 0u;
          *(v8 + 2472) = 0u;
          *(v8 + 2488) = 0u;
          *(v8 + 2512) = 0x7FF8000000000000;
          if (*(v8 + 2848))
          {
            sub_1D0DD3E14();
          }

          sub_1D0C42F28();
        }
      }

LABEL_28:
      sub_1D0DD3E14();
    }

    if (*(v8 + 2408) != 1 || (*(v8 + 2081) & 0xFD) == 0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        v63 = 12;
        v62 = 1;
        v41 = (*(v60 + 16))(&v60);
        v58 = v42 + v41;
        cnprint::CNPrinter::Print(&v63, &v62, "t,%.3lf,IntegrityEstimatorAO: Passing through remote FitnessSessionEvent (no active local), event=%d", v43, v44, v45, v46, v47, SLOBYTE(v58));
      }

      sub_1D0DD3E14();
    }

    if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
    {
      v63 = 12;
      v62 = 1;
      v34 = (*(v60 + 16))(&v60);
      v57 = v35 + v34;
      cnprint::CNPrinter::Print(&v63, &v62, "t,%.3lf,IntegrityEstimatorAO: Caching remote FitnessSessionEvent while local active, event=%d", v36, v37, v38, v39, v40, SLOBYTE(v57));
    }

    if (*(v8 + 2848) == 1)
    {
      memcpy((v8 + 2424), v61, 0x1A1uLL);
    }

    else
    {
      *(v8 + 2416) = &unk_1F4CEF508;
      memcpy((v8 + 2424), v61, 0x1A1uLL);
      *(v8 + 2848) = 1;
    }
  }

  else
  {
    if (LOBYTE(v61[52]) != 1)
    {
      goto LABEL_28;
    }

    if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
    {
      v63 = 12;
      v62 = 1;
      v27 = (*(v60 + 16))(&v60);
      v56 = v28 + v27;
      cnprint::CNPrinter::Print(&v63, &v62, "t,%.3lf,IntegrityEstimatorAO: Blocking MotionStateMediator-originated FitnessSessionEvent on Watch platform", v29, v30, v31, v32, v33, SLOBYTE(v56));
    }
  }
}

uint64_t sub_1D0DD3DC8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6CD8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD3EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  if (v10)
  {
    sub_1D0B7CAB8(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD40D0(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD426C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCB9E8(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEEB40;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = vdupq_n_s64(0x7FF8000000000000uLL);
  v34 = v33;
  v35 = v33;
  v36 = v33;
  v37 = v33;
  v38 = 0;
  result = raven::MapVectorChecker::HandleEvent(*(v8 + 1880), v10, v11);
  if (!result)
  {
    sub_1D0DD4390();
  }

  return result;
}

uint64_t sub_1D0DD4344(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6D58))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD4424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD44B4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD4510((a1 + 3));
}

void sub_1D0DD4510(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD46A4();
}

void sub_1D0DD464C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD4880(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6E20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD49D0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6EA0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD4B44(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DD4BD8(v9, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  sub_1D0DD4E28();
}

uint64_t sub_1D0DD4B8C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6F20))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1D0DD4BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v31.__vftable) = 3;
    LOBYTE(v29) = 5;
    cnprint::CNPrinter::Print(&v31, &v29, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v27);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEF118 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEF118 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v31.__vftable = 0;
        std::bad_cast::bad_cast(&v31);
        v31.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF0F0;
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    v24 = *(v21 + 32);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 56) = v23;
    *(a1 + 40) = v22;
    *(a1 + 24) = v24;
    result = *(v21 + 112);
    v25 = *(v21 + 128);
    v26 = *(v21 + 96);
    *(a1 + 72) = *(v21 + 80);
    *(a1 + 120) = v25;
    *(a1 + 104) = result;
    *(a1 + 88) = v26;
  }

  else
  {
    v29 = 3;
    v28 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v31.__vftable) = 3;
      v30 = 5;
      cnprint::CNPrinter::Print(&v31, &v30, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v27);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF0F0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0DD4EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD4F4C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD4FA8((a1 + 3));
}

void sub_1D0DD4FA8(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD513C();
}

void sub_1D0DD50E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD535C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCC07C(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEE870;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0x7FF8000000000000;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0x7FF8000000000000;
  result = raven::OdometerChecker::HandleEvent(*(v8 + 1904), v10, v11);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1D0DD5680(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD5700(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE6FE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD5880(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7068))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD5960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD5A9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCC5B4(v11, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = &unk_1F4CEE090;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0x7FF8000000000000;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v30 = 0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0x7FF8000000000000;
  v37 = 0x100000003;
  v36 = xmmword_1D0E7DCC0;
  v35 = &unk_1F4CDEB28;
  v38 = v39;
  v41 = 0x300000003;
  v40 = xmmword_1D0E76C10;
  v39[3] = &unk_1F4CD5DD0;
  v42 = &v43;
  result = raven::PositionChangeChecker::HandleEvent(*(v8 + 1912), v11, v12, v9);
  if (!result)
  {
    sub_1D0DD5C34();
  }

  return result;
}

uint64_t sub_1D0DD5BE8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE70E8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD5CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DD5D58(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DD5DB4((a1 + 3));
}

void sub_1D0DD5DB4(uint64_t a1)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v2 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v2;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DD5F48();
}

void sub_1D0DD5EF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD6028(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAE90;
  *(a1 + 8) = &unk_1F4CEE090;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 64) = v6;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  v9 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 104);
  *(a1 + 128) = v9;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  v10 = *(a2 + 136);
  v11 = *(a2 + 152);
  v12 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 168);
  *(a1 + 192) = v12;
  *(a1 + 144) = v10;
  *(a1 + 160) = v11;
  sub_1D0BBA094(a1 + 208, a2 + 200);
  sub_1D0BE0DE8(a1 + 272, a2 + 264);
  return a1;
}

void *sub_1D0DD6118(void *result)
{
  result[1] = &unk_1F4CEE090;
  result[34] = &unk_1F4CD5E28;
  result[26] = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DD617C(void *a1)
{
  a1[1] = &unk_1F4CEE090;
  a1[34] = &unk_1F4CD5E28;
  a1[26] = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DD62CC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7168))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD63A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DD6540(v11, a3, a3, a4, a5, a6, a7, a8);
  v8[16] = v8[7];
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = &unk_1F4CEF7D8;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v24 = 0;
  v22 = 0x7FF8000000000000;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = vdupq_n_s64(0x7FF8000000000000uLL);
  v35 = v34;
  v36 = 0;
  *&result = raven::RavenIntegrityEstimator::HandleEvent((v8 + 15), v11, v12, v34).n128_u64[0];
  if (!v10)
  {
    sub_1D0DD67F4();
  }

  return result;
}

void sub_1D0DD64D0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD64F4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7230))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

int64x2_t sub_1D0DD6540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) == 1)
  {
    v10 = *(a2 + 24);
  }

  else
  {
    LOWORD(v35.__vftable) = 3;
    LOBYTE(v33) = 5;
    cnprint::CNPrinter::Print(&v35, &v33, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v31);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEEA30 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v20, (off_1F4CEEA30 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v35.__vftable = 0;
        std::bad_cast::bad_cast(&v35);
        v35.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C();
      }
    }

    v21 = *(a2 + 16);
    *a1 = &unk_1F4CEF7D8;
    v22 = *(v21 + 32);
    *(a1 + 8) = *(v21 + 16);
    *(a1 + 24) = v22;
    v23 = *(v21 + 80);
    v24 = *(v21 + 96);
    v25 = *(v21 + 64);
    *(a1 + 40) = *(v21 + 48);
    *(a1 + 88) = v24;
    *(a1 + 72) = v23;
    *(a1 + 56) = v25;
    v26 = *(v21 + 144);
    v27 = *(v21 + 160);
    v28 = *(v21 + 128);
    *(a1 + 104) = *(v21 + 112);
    *(a1 + 152) = v27;
    *(a1 + 136) = v26;
    *(a1 + 120) = v28;
    v29 = *(v21 + 192);
    result = *(v21 + 208);
    v30 = *(v21 + 220);
    *(a1 + 168) = *(v21 + 176);
    *(a1 + 212) = v30;
    *(a1 + 200) = result;
    *(a1 + 184) = v29;
  }

  else
  {
    v33 = 3;
    v32 = 5;
    if (*(a2 + 8) == 1)
    {
      v18 = *(a2 + 24);
    }

    else
    {
      LOWORD(v35.__vftable) = 3;
      v34 = 5;
      cnprint::CNPrinter::Print(&v35, &v34, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v31);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v33, &v32, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF7D8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 192) = result;
    *(a1 + 208) = result;
  }

  return result;
}

void sub_1D0DD6A3C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD6C00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v48.__vftable) = 3;
    LOBYTE(v77) = 5;
    cnprint::CNPrinter::Print(&v48, &v77, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v33);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEEC70 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEEC70 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v48.__vftable = 0;
      std::bad_cast::bad_cast(&v48);
      v48.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v34 = &unk_1F4CEEC48;
    v22 = v20[2];
    v21 = v20[3];
    v35 = v20[1];
    v36 = v22;
    v37 = v21;
    v23 = v20[6];
    v24 = v20[7];
    v25 = v20[5];
    v38 = v20[4];
    v39 = v25;
    v40 = v23;
    v41 = v24;
    v26 = v20[10];
    v27 = v20[11];
    v28 = v20[9];
    v42 = v20[8];
    v45 = v27;
    v44 = v26;
    v43 = v28;
    v30 = v20[13];
    v29 = v20[14];
    v31 = *(v20 + 233);
    *v46 = v20[12];
    *&v46[41] = v31;
    *&v46[32] = v29;
    *&v46[16] = v30;
  }

  else
  {
    LOWORD(v77) = 3;
    v47 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v48.__vftable) = 3;
      LOBYTE(v76) = 5;
      cnprint::CNPrinter::Print(&v48, &v76, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v33);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v77, &v47, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v36 = 0uLL;
    v39 = 0uLL;
    v42 = 0uLL;
    v43 = 0u;
    v45 = 0uLL;
    *&v46[48] = 0u;
    v35 = 0uLL;
    v34 = &unk_1F4CEEC48;
    v37 = 0uLL;
    v38 = 0uLL;
    *&v40 = 0;
    v41 = 0uLL;
    *(&v40 + 1) = 0x7FF8000000000000;
    BYTE8(v43) = 0;
    *&v43 = 0;
    v44 = 0uLL;
    *v46 = 0;
    *&v46[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v46[24] = *&v46[8];
    *&v46[40] = *&v46[8];
  }

  *(v9 + 256) = *(v9 + 112);
  v49 = 0;
  v50 = 0;
  v48.__vftable = &unk_1F4CEEC48;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0x7FF8000000000000;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = vdupq_n_s64(0x7FF8000000000000uLL);
  v73 = v72;
  v74 = v72;
  v75 = 0;
  result = raven::TunnelEndPointAssistanceChecker::HandleEvent(*(v9 + 1968), &v34, &v48);
  if (!result)
  {
    sub_1D0DD7040();
  }

  return result;
}

uint64_t sub_1D0DD6FF4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE72F8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD728C(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD742C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7378))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD74DC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7440))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD7668(uint64_t a1, _OWORD **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC8EF0(v9, a3, a3, a4, a5, a6, a7, a8);
  v8[16] = v8[7];
  if (!v9[26])
  {
    (*(*v8 + 40))(v8);
  }
}

uint64_t sub_1D0DD76D4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE74C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD77A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9C98(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEEBE8;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0x7FF8000000000000;
  v22 = 0;
  v23 = vdupq_n_s64(0x7FF8000000000000uLL);
  v24 = 0x7FF8000000000000;
  v25 = 0;
  v26 = 0x7FF8000000000000;
  v27 = 0xFFFFFFFFLL;
  result = raven::StepCountChecker::HandleEvent(*(v8 + 1936), v10, v11);
  if (!result)
  {
    sub_1D0DD7940();
  }

  return result;
}

void sub_1D0DD78D0(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD78F4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7588))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD7B70(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD7D24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCD508(v10, a3, a3, a4, a5, a6, a7, a8);
  *(v8 + 256) = *(v8 + 112);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_1F4CEF718;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = vdupq_n_s64(0x7FF8000000000000uLL);
  v22 = 0x7FF8000000000000;
  result = raven::UserSpeedChecker::HandleEvent(*(v8 + 1944), v10, v11);
  if (!result)
  {
    sub_1D0D48BB8();
  }

  return result;
}

uint64_t sub_1D0DD7DCC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7608))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD7E7C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE76D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD7FBC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD806C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE77D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD8140(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCB9E8(v12, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenMapVectorActiveObject::HandleEvent(v8, v12, v9, v10);
}

uint64_t sub_1D0DD8180(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8230(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE78D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD82E0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8390(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE79D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8440(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD84F0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DD85C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9356C(&v14, a3, a3, a4, a5, a6, a7, a8);
  v9 = v20;
  v10 = v22;
  *(v8 + 1272) = v21;
  *(v8 + 1288) = v10;
  *(v8 + 1304) = v23;
  v11 = v16;
  v12 = v18;
  *(v8 + 1208) = v17;
  *(v8 + 1224) = v12;
  *(v8 + 1240) = v19;
  *(v8 + 1256) = v9;
  result = *&v15;
  *(v8 + 1176) = v15;
  *(v8 + 1192) = v11;
  return result;
}

uint64_t sub_1D0DD8634(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD86E4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD87B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DC8EF0(v10, a3, a3, a4, a5, a6, a7, a8);
  if (!v10[26])
  {
    (*(*v8 + 40))(v8, v9);
  }
}

uint64_t sub_1D0DD881C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD88CC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD897C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8A2C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8ADC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD8BB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0B92680(v23, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 224))
  {
    if (*(v8 + 497) == 1 && *(v8 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent(v8 + 280, v23);
    }
  }

  else
  {
    v28 = 12;
    v27 = 2;
    v26[0] = (*(v23[0] + 16))(v23, v9);
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

    cnprint::CNLogFormatter::FormatWarning(v8 + 232, v26, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 255) >= 0)
    {
      LOBYTE(v22) = v8 - 24;
    }

    else
    {
      v22 = *(v8 + 232);
    }

    cnprint::CNPrinter::Print(&v28, &v27, "%s", v17, v18, v19, v20, v21, v22);
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }
  }
}

void sub_1D0DD8CF0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD8D0C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8DBC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8E6C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE7FD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD8F1C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD8FF0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9660(v23, a3, a3, a4, a5, a6, a7, a8);
  v9 = raven::RavenEstimator::HandleFitnessSessionEvent((v8 + 288), v23);
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

void sub_1D0DD911C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD9138(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE80D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD91E8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9298(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE81D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9348(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8250))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD93F8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE82D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD94A8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9558(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE83D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9608(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD96B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE84D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9768(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9818(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE85D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD98C8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9978(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE86D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9A28(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9AD8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE87D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DD9B88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD9C5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCA268(v23, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v23))
  {
    v28 = 12;
    v27 = 2;
    v26[0] = (*(v23[0] + 16))(v23);
    v26[1] = v9;
    (*(v23[0] + 24))(v24, v23);
    if (v25 >= 0)
    {
      v15 = v24;
    }

    else
    {
      v15 = v24[0];
    }

    v16 = cnprint::CNLogFormatter::FormatWarning(v8 + 240, v26, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v22) = v16;
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

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(v23);
}

void sub_1D0DD9D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 - 57) < 0)
  {
    operator delete(*(v2 - 80));
  }

  raven::AccessoryVehicleSpeedEvent::~AccessoryVehicleSpeedEvent(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DD9DAC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE88D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DD9E80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCA9F8(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DD9FA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DD9FBC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDA06C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE89D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDA140(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DD282C(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDA260(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDA27C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDA350(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCF7EC(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDA470(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDA48C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDA560(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCB1A8(v77, a3, a3, a4, a5, a6, a7, a8);
  if (v79 != *(v8 + 344))
  {
    return;
  }

  v83 = 12;
  v82 = 3;
  v81 = v78;
  cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "EstimatorErrorRecoveryEvent received, type, %u", v80);
  if (*(v8 + 263) >= 0)
  {
    LOBYTE(v14) = v8 - 16;
  }

  else
  {
    v14 = *(v8 + 240);
  }

  cnprint::CNPrinter::Print(&v83, &v82, "%s", v9, v10, v11, v12, v13, v14);
  if (v80 <= 4u)
  {
    if (v80 > 2u)
    {
      if (v80 == 3)
      {
        v83 = 12;
        v82 = 3;
        v81 = v78;
        cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::InflatePositionUncertainty");
        if (*(v8 + 263) >= 0)
        {
          LOBYTE(v50) = v8 - 16;
        }

        else
        {
          v50 = *(v8 + 240);
        }

        cnprint::CNPrinter::Print(&v83, &v82, "%s", v45, v46, v47, v48, v49, v50);
        raven::RavenPNTEstimator::InflatePositionUncertainty((v8 + 288), *(*(v8 + 1456) + 1440));
      }

      else
      {
        if (v80 != 4)
        {
          goto LABEL_53;
        }

        v83 = 12;
        v82 = 3;
        v81 = v78;
        cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::InflateVelocityUncertainty");
        if (*(v8 + 263) >= 0)
        {
          LOBYTE(v32) = v8 - 16;
        }

        else
        {
          v32 = *(v8 + 240);
        }

        cnprint::CNPrinter::Print(&v83, &v82, "%s", v27, v28, v29, v30, v31, v32);
        raven::RavenPNTEstimator::InflateVelocityUncertainty((v8 + 288), *(*(v8 + 1456) + 1448));
      }
    }

    else if (v80 == 1)
    {
      v83 = 12;
      v82 = 3;
      v81 = v78;
      cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::InflateAttitudeUncertainty");
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v44) = v8 - 16;
      }

      else
      {
        v44 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v83, &v82, "%s", v39, v40, v41, v42, v43, v44);
      raven::RavenPNTEstimator::InflateAttitudeUncertainty((v8 + 288), *(*(v8 + 1456) + 1424));
    }

    else
    {
      if (v80 != 2)
      {
        goto LABEL_53;
      }

      v83 = 12;
      v82 = 3;
      v81 = v78;
      cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::InflateInsUncertainty");
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v26) = v8 - 16;
      }

      else
      {
        v26 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v83, &v82, "%s", v21, v22, v23, v24, v25, v26);
      raven::RavenPNTEstimator::InflateInsUncertainty((v8 + 288), *(*(v8 + 1456) + 1432));
    }
  }

  else
  {
    if (v80 > 6u)
    {
      switch(v80)
      {
        case 7u:
          v83 = 12;
          v82 = 3;
          v81 = v78;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::ResetEstimator");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v56) = v8 - 16;
          }

          else
          {
            v56 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v83, &v82, "%s", v51, v52, v53, v54, v55, v56);
          raven::RavenPNTEstimator::Reset((v8 + 288));
        case 8u:
          v83 = 12;
          v82 = 3;
          v81 = v78;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::ResetInsStates");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v68) = v8 - 16;
          }

          else
          {
            v68 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v83, &v82, "%s", v63, v64, v65, v66, v67, v68);
          raven::RavenPNTEstimator::ResetInsStates((v8 + 288), v69, v70);
        case 9u:
          v83 = 12;
          v82 = 3;
          v81 = v78;
          cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::ResetXOStates");
          if (*(v8 + 263) >= 0)
          {
            LOBYTE(v20) = v8 - 16;
          }

          else
          {
            v20 = *(v8 + 240);
          }

          cnprint::CNPrinter::Print(&v83, &v82, "%s", v15, v16, v17, v18, v19, v20);
          raven::RavenPNTEstimator::ResetOscillatorStates((v8 + 288));
          return;
      }

      goto LABEL_53;
    }

    if (v80 != 5)
    {
      if (v80 == 6)
      {
        v83 = 12;
        v82 = 3;
        v81 = v78;
        cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::ResetAO");
        if (*(v8 + 263) >= 0)
        {
          LOBYTE(v38) = v8 - 16;
        }

        else
        {
          v38 = *(v8 + 240);
        }

        cnprint::CNPrinter::Print(&v83, &v82, "%s", v33, v34, v35, v36, v37, v38);
        (*(*v8 + 40))(v8);
        return;
      }

LABEL_53:
      v83 = 12;
      v82 = 4;
      v81 = v78;
      cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Unhandled RavenErrorRecoveryAction, type, %u", v80);
      if (*(v8 + 263) >= 0)
      {
        LOBYTE(v76) = v8 - 16;
      }

      else
      {
        v76 = *(v8 + 240);
      }

      cnprint::CNPrinter::Print(&v83, &v82, "%s", v71, v72, v73, v74, v75, v76);
      return;
    }

    v83 = 12;
    v82 = 3;
    v81 = v78;
    cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v81, "Initiating RavenErrorRecoveryAction::InflateXOUncertainty");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v62) = v8 - 16;
    }

    else
    {
      v62 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v83, &v82, "%s", v57, v58, v59, v60, v61, v62);
    raven::RavenPNTEstimator::InflateXOUncertainty((v8 + 288), *(*(v8 + 1456) + 1456));
  }
}

uint64_t sub_1D0DDAA7C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDAB50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9660(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenEstimator::HandleFitnessSessionEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDAC70(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDAC8C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDAD3C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDAE10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v55.__vftable) = 3;
    LOBYTE(v57[0]) = 5;
    cnprint::CNPrinter::Print(&v55, v57, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v40);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF0A0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF0A0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v55.__vftable = 0;
      std::bad_cast::bad_cast(&v55);
      v55.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v41 = &unk_1F4CEE000;
    sub_1D0BE0DE8(&v42, (v20 + 1));
    v21 = v20[8];
    *&v46[88] = v20[9];
    *&v46[72] = v21;
    v22 = v20[10];
    v23 = v20[11];
    v24 = v20[12];
    *&v46[152] = v20[13];
    *&v46[136] = v24;
    *&v46[120] = v23;
    *&v46[104] = v22;
    sub_1D0BBA094(&v47, (v20 + 14));
    v53 = 0u;
    v54 = 0u;
    if (&v53 != v20 + 18)
    {
      v25 = v20[19];
      v53 = v20[18];
      v54 = v25;
    }
  }

  else
  {
    LOWORD(v57[0]) = 3;
    v58 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v55.__vftable) = 3;
      LOBYTE(v59) = 5;
      cnprint::CNPrinter::Print(&v55, &v59, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v40);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v57, &v58, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    memset(v46, 0, 160);
    v51 = 0u;
    v52 = 0;
    v41 = &unk_1F4CEE000;
    v44 = 0x300000003;
    v42 = &unk_1F4CD5DD0;
    v43 = xmmword_1D0E76C10;
    v45 = v46;
    v49 = 0x100000003;
    *&v46[160] = 0x7FF8000000000000;
    v47 = &unk_1F4CDEB28;
    v48 = xmmword_1D0E7DCC0;
    v50 = &v51;
    v53 = 0uLL;
    *&v54 = 0;
    *(&v54 + 1) = 0x3FF0000000000000;
  }

  if (raven::RavenPNTEstimator::HandleEvent((v9 + 288), &v41))
  {
    v59 = 12;
    v58 = 2;
    v57[0] = v41[2](&v41);
    v57[1] = v26;
    (v41[3])(&v55, &v41);
    if (v56 >= 0)
    {
      v32 = &v55;
    }

    else
    {
      v32 = v55.__vftable;
    }

    v33 = cnprint::CNLogFormatter::FormatWarning(v9 + 240, v57, "Failed to handle event - %s.", v27, v28, v29, v30, v31, v32);
    if (*(v9 + 263) >= 0)
    {
      LOBYTE(v39) = v33;
    }

    else
    {
      v39 = *(v9 + 240);
    }

    cnprint::CNPrinter::Print(&v59, &v58, "%s", v34, v35, v36, v37, v38, v39);
    if (v56 < 0)
    {
      operator delete(v55.__vftable);
    }
  }
}

uint64_t sub_1D0DDB248(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDB31C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCB9E8(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDB43C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDB458(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDB508(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDB5B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDB68C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DD4BD8(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDB7AC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDB7C8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDB89C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCC5B4(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDB9BC(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDB9D8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDBA88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE8FD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDBB5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDBC7C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDBC98(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9050))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDBD48(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE90D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDBDF8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDBECC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC8EF0(v24, a3, a3, a4, a5, a6, a7, a8);
  if (!cnprint::CNPrinter::GetLogLevel(v9))
  {
    v29 = 12;
    v28 = 0;
    v26 = (*(v24[0] + 16))(v24);
    v27 = v10;
    cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v26, "RavenSystemEvent received");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v16) = v8 - 16;
    }

    else
    {
      v16 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v11, v12, v13, v14, v15, v16);
  }

  if (!v25)
  {
    v29 = 12;
    v28 = 4;
    v26 = (*(v24[0] + 16))(v24);
    v27 = v17;
    cnprint::CNLogFormatter::FormatGeneral(v8 + 240, &v26, "Resetting estimator based on system event");
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v23) = v8 - 16;
    }

    else
    {
      v23 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v18, v19, v20, v21, v22, v23);
    (*(*v8 + 40))(v8);
  }
}

uint64_t sub_1D0DDC03C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE91D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC0EC(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9250))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC19C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE92D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC24C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9350))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDC320(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DCD508(v22, a3, a3, a4, a5, a6, a7, a8);
  if (raven::RavenPNTEstimator::HandleEvent((v8 + 288), v22))
  {
    v27 = 12;
    v26 = 2;
    v25[0] = (*(v22[0] + 16))(v22);
    v25[1] = v9;
    (*(v22[0] + 24))(v23, v22);
    if (v24 >= 0)
    {
      v15 = v23;
    }

    else
    {
      v15 = v23[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v25, "Failed to handle event - %s.", v10, v11, v12, v13, v14, v15);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v21) = v8 - 16;
    }

    else
    {
      v21 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v27, &v26, "%s", v16, v17, v18, v19, v20, v21);
    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }
}

void sub_1D0DDC440(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDC45C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE93D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDC530(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0C050F4(v23, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 345) != 1 || (*(v8 + 346) == 1 ? (v9 = v24 == 0) : (v9 = 1), !v9 && raven::RavenPNTEstimator::AddDeviceVelocityMeasurement((v8 + 288), v23)))
  {
    v29 = 12;
    v28 = 2;
    v27[0] = (*(v23[0] + 16))(v23);
    v27[1] = v10;
    (*(v23[0] + 24))(v25, v23);
    if (v26 >= 0)
    {
      v16 = v25;
    }

    else
    {
      v16 = v25[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v8 + 240, v27, "Failed to handle event - %s.", v11, v12, v13, v14, v15, v16);
    if (*(v8 + 263) >= 0)
    {
      LOBYTE(v22) = v8 - 16;
    }

    else
    {
      v22 = *(v8 + 240);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v17, v18, v19, v20, v21, v22);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_1D0DDC670(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDC68C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9450))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDC73C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE94D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDC810(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B99264(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenRayTracingActiveObject::HandleEvent(v8, v10).n128_u64[0];
  return result;
}

uint64_t sub_1D0DDC850(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9550))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDC924(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v48.__vftable) = 3;
    LOBYTE(v46) = 5;
    cnprint::CNPrinter::Print(&v48, &v46, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v31);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v25 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v25 != (off_1F4CEF028 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v25, (off_1F4CEF028 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v48.__vftable = 0;
      std::bad_cast::bad_cast(&v48);
      v48.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v26 = *(a3 + 16);
    v32 = &unk_1F4CEDFA0;
    v27 = *(v26 + 32);
    v33 = *(v26 + 16);
    v34 = v27;
    v28 = *(v26 + 48);
    v29 = *(v26 + 64);
    v30 = *(v26 + 96);
    v37 = *(v26 + 80);
    v38 = v30;
    v35 = v28;
    v36 = v29;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    sub_1D0DDCC68(&v39, *(v26 + 112), *(v26 + 120), 0xCCCCCCCCCCCCCCCDLL * ((*(v26 + 120) - *(v26 + 112)) >> 3));
    v42 = *(v26 + 136);
    sub_1D0DDD1D0(&v43, (v26 + 152));
  }

  else
  {
    v46 = 3;
    v45 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v48.__vftable) = 3;
      v47 = 5;
      cnprint::CNPrinter::Print(&v48, &v47, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v31);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v46, &v45, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v34 = 0uLL;
    v33 = 0uLL;
    v32 = &unk_1F4CEDFA0;
    v35 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    *&v38 = 0;
    *(&v38 + 1) = 0x7FF8000000000000;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = vdupq_n_s64(0x7FF8000000000000uLL);
    v44[0] = 0;
    v44[1] = 0;
    v43 = v44;
  }

  raven::RavenRayTracingActiveObject::HandleEvent(v9, &v32, v19, v20, v21, v22, v23, v24);
  v32 = &unk_1F4CEDFA0;
  sub_1D0BCB540(&v43, v44[0]);
  v48.__vftable = &v39;
  sub_1D0DDD154(&v48);
}

uint64_t sub_1D0DDCC1C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE95D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDCC68(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      sub_1D0DDCEE0(result, a4);
    }

    sub_1D0C5663C();
  }

  return result;
}

void sub_1D0DDCE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0DDD154(va);
  _Unwind_Resume(a1);
}

void sub_1D0DDCEE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0DDCF38(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0DDCF90(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DDCFC8(a1);
  }

  return a1;
}

void sub_1D0DDCFC8(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = **(a1 + 16);
    do
    {
      v5 = *(v3 - 80);
      v3 -= 80;
      v4 = v5;
      if (v5)
      {
        *(v1 - 72) = v4;
        operator delete(v4);
      }

      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1D0DDD018(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0DDD06C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0DDD06C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 80);
      v4 -= 80;
      v5 = v6;
      if (v6)
      {
        *(v2 - 72) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1D0DDD0C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DDD0FC(a1);
  }

  return a1;
}

void sub_1D0DDD0FC(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 40;
      v4 = (v1 - 24);
      sub_1D0DDD018(&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void sub_1D0DDD154(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 40;
        v7 = (v4 - 24);
        sub_1D0DDD018(&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void *sub_1D0DDD1D0(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = v2[4];
      if (v4[4] < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = v3[4];
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

void sub_1D0DDD3E4(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA910(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenRayTracingActiveObject::HandleEvent(v8, v9);
  v9[0] = &unk_1F4CEF598;
  v11 = &v10;
  sub_1D0BBBD80(&v11);
}

void sub_1D0DDD454(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1 + 96;
  sub_1D0BBBD80((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DDD48C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9650))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDD560(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0B9FD10(v10, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenRayTracingActiveObject::HandleEvent(v8, v10);
}

uint64_t sub_1D0DDD5A0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE96D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDD674(uint64_t a1, int64x2_t **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC8EF0(v9, a3, a3, a4, a5, a6, a7, a8);
  if (!v9[26])
  {
    raven::RavenRayTracingActiveObject::Reset(v8);
  }
}

uint64_t sub_1D0DDD6B8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9750))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDD78C(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v39.__vftable) = 3;
    LOBYTE(v37) = 5;
    cnprint::CNPrinter::Print(&v39, &v37, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v26);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF280 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF280 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v39.__vftable = 0;
      std::bad_cast::bad_cast(&v39);
      v39.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v27 = &unk_1F4CEE0F0;
    v21 = *(v20 + 32);
    v28 = *(v20 + 16);
    v29 = v21;
    v22 = *(v20 + 80);
    v23 = *(v20 + 96);
    v24 = *(v20 + 64);
    v30 = *(v20 + 48);
    v33 = v23;
    v32 = v22;
    v31 = v24;
    if (*(v20 + 135) < 0)
    {
      sub_1D0BC39B4(&__p, *(v20 + 112), *(v20 + 120));
    }

    else
    {
      v25 = *(v20 + 112);
      v35 = *(v20 + 128);
      __p = v25;
    }
  }

  else
  {
    v37 = 3;
    v36 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v39.__vftable) = 3;
      v38 = 5;
      cnprint::CNPrinter::Print(&v39, &v38, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v26);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v37, &v36, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v29 = 0uLL;
    v28 = 0uLL;
    v27 = &unk_1F4CEE0F0;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    *&v33 = 0;
    *(&v33 + 1) = 0x7FF8000000000000;
    __p = 0uLL;
    v35 = 0;
  }

  raven::RavenRayTracingActiveObject::HandleEvent(v9, &v27);
  v27 = &unk_1F4CEE0F0;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_1D0DDDA64(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE97D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDDB38(uint64_t a1, raven::RavenRayTracingActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenRayTracingActiveObject::HandleEvent(v8, v10).n128_u64[0];
  return result;
}

uint64_t sub_1D0DDDB78(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9850))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDDC4C(uint64_t a1, raven::RavenSignalEnvironmentActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BB2F1C(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenSignalEnvironmentActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0DDDC8C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE98D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDDD3C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9950))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDDE10(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v10, a3, a3, a4, a5, a6, a7, a8);
  return raven::RavenSignalEnvironmentActiveObject::HandleEvent(v8, v10);
}

uint64_t sub_1D0DDDE50(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE99D0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDDF00(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9A50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDDFD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  v9 = sub_1D0DC8EF0(v10, a3, a3, a4, a5, a6, a7, a8);
  if (!v10[26])
  {
    (*(*v8 + 40))(v8, v9);
  }
}

uint64_t sub_1D0DDE038(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9AD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE0E8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9B50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE198(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9BD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE248(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9C50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDE31C(uint64_t a1, _BYTE **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v36.__vftable) = 3;
    LOBYTE(v39) = 5;
    cnprint::CNPrinter::Print(&v36, &v39, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v28);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v19 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v19 != (off_1F4CEF010 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v19, (off_1F4CEF010 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v36.__vftable = 0;
      std::bad_cast::bad_cast(&v36);
      v36.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v20 = *(a3 + 16);
    v29 = *(v20 + 16);
    v30 = *(v20 + 32);
    v31 = *(v20 + 48);
    v21 = *(v20 + 64);
    v34 = *(v20 + 112);
    v32 = *(v20 + 80);
    v33 = *(v20 + 96);
  }

  else
  {
    v39 = 3;
    v35 = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v36.__vftable) = 3;
      v38 = 5;
      cnprint::CNPrinter::Print(&v36, &v38, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v28);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v39, &v35, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v34 = 0;
  }

  if (v9[1720])
  {
    v9[224] = v34;
  }

  else
  {
    v39 = 12;
    v38 = 2;
    (*(*v9 + 16))(&v36, v9);
    if (v37 >= 0)
    {
      v27 = &v36;
    }

    else
    {
      LOBYTE(v27) = v36.__vftable;
    }

    cnprint::CNPrinter::Print(&v39, &v38, "Warning: %s Active Object not configured", v22, v23, v24, v25, v26, v27);
    if (v37 < 0)
    {
      operator delete(v36.__vftable);
    }
  }
}

uint64_t sub_1D0DDE604(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9CD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDE6D8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0BCA45C(v15, a3, a3, a4, a5, a6, a7, a8);
  if (*(v8 + 1720))
  {
    if (*(v8 + 648) == 1)
    {
      memcpy((v8 + 296), v16, 0x160uLL);
    }

    else
    {
      *(v8 + 288) = &unk_1F4CEF748;
      memcpy((v8 + 296), v16, 0x160uLL);
      *(v8 + 648) = 1;
    }
  }

  else
  {
    v20 = 12;
    v19 = 2;
    (*(*v8 + 16))(v17, v8);
    if (v18 >= 0)
    {
      v14 = v17;
    }

    else
    {
      LOBYTE(v14) = v17[0];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Warning: %s Active Object not configured", v9, v10, v11, v12, v13, v14);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }
}

void sub_1D0DDE7F8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 41) < 0)
  {
    operator delete(*(v1 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DDE814(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9D50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE8C4(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9DD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDE974(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9E50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEA24(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9ED0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1D0DDEAF8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DD6540(v10, a3, a3, a4, a5, a6, a7, a8);
  *&result = raven::RavenSolutionSelector::HandleEvent(v8 + 224, v10).n128_u64[0];
  return result;
}

uint64_t sub_1D0DDEB38(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CE9F50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEBE8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA018))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDED28(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA098))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEDD8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA118))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEE88(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA198))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEF38(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA218))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDEFE8(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA298))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF098(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA318))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF148(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA398))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDF21C(uint64_t a1, raven::RavenUserSpeedActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9660(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenUserSpeedActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0DDF25C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA418))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF30C(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA498))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1D0DDF3E0(uint64_t a1, raven::RavenUserSpeedActiveObject **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  sub_1D0DC9C98(v9, a3, a3, a4, a5, a6, a7, a8);
  raven::RavenUserSpeedActiveObject::HandleEvent(v8, v9);
}

uint64_t sub_1D0DDF420(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA518))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF4D0(uint64_t a1, uint64_t a2)
{
  if (sub_1D0B7CA64(a2, &unk_1F4CEA598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D0DDF654(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEA648;
  *(a1 + 8) = &unk_1F4CEE0F0;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 8);
  *(a1 + 32) = v3;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  if (*(a2 + 127) < 0)
  {
    sub_1D0BC39B4((a1 + 112), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 128) = *(a2 + 120);
    *(a1 + 112) = v7;
  }

  return a1;
}

uint64_t sub_1D0DDF704(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEE0F0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  return a1;
}

void sub_1D0DDF758(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEE0F0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DDF844(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEA690;
  *(a1 + 8) = &unk_1F4CEDFA0;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 8);
  v9 = *(a2 + 24);
  *(a1 + 112) = 0;
  v10 = a1 + 112;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  sub_1D0DDCC68(a1 + 112, *(a2 + 104), *(a2 + 112), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 112) - *(a2 + 104)) >> 3));
  *(v10 + 24) = *(a2 + 128);
  sub_1D0DDD1D0((v10 + 40), (a2 + 144));
  return a1;
}

void sub_1D0DDF920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D0DDD154(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DDF938(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEDFA0;
  sub_1D0BCB540(a1 + 152, *(a1 + 160));
  v3 = (a1 + 112);
  sub_1D0DDD154(&v3);
  return a1;
}

void sub_1D0DDF9A0(uint64_t a1)
{
  *(a1 + 8) = &unk_1F4CEDFA0;
  sub_1D0BCB540(a1 + 152, *(a1 + 160));
  v2 = (a1 + 112);
  sub_1D0DDD154(&v2);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DDFAA0(void *a1)
{
  a1[1] = &unk_1F4CEE060;
  v2 = a1[27];
  if (v2)
  {
    a1[28] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0DDFFCC(uint64_t a1)
{
  raven::VIOEstimateEvent::~VIOEstimateEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DE00D8(uint64_t a1)
{
  raven::VLLocalizationEvent::~VLLocalizationEvent((a1 + 8));

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DE01B8(void *a1)
{
  a1[1] = &unk_1F4CEE0C0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1D0DE020C(void *a1)
{
  a1[1] = &unk_1F4CEE0C0;
  v2 = a1[16];
  if (v2)
  {
    a1[17] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t raven::TunnelBridgeNotificationChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

BOOL raven::TunnelBridgeNotificationChecker::isCoordinateValid(raven::TunnelBridgeNotificationChecker *this, double a2, double a3)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v5 = a2 <= 90.0 && (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && a2 >= -90.0;
  if (a3 > 180.0)
  {
    v5 = 0;
  }

  return a3 >= -180.0 && v5;
}

__n128 raven::TunnelBridgeNotificationChecker::HandleEvent(raven::TunnelBridgeNotificationChecker *this, const raven::TunnelBridgeNotificationEvent *a2, raven::TunnelBridgeNotificationEvent *a3, __n128 result)
{
  if (*(this + 8))
  {
    if (*(this + 9) == 1)
    {
      v5 = *(a2 + 25);
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v20 = *(a2 + 26), v20 < -180.0) || v20 > 180.0 || v5 < -90.0 || v5 > 90.0 || (*(a2 + 26) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
        {
          v58 = 12;
          v57 = 1;
          v6 = (*(*a2 + 16))(a2);
          v46 = v7 + v6;
          cnprint::CNPrinter::Print(&v58, &v57, "t,%.3lf,WARNING: tba,tunnel bridge notification checker, tunnel bridge notification has invalid predicted point coordinates, do not use tunnel bridge notification", v8, v9, v10, v11, v12, SLOBYTE(v46));
        }
      }

      else
      {
        v21 = *(a2 + 27);
        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v21 < 10.0 || v21 > 500.0)
        {
          if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
          {
            v56 = 12;
            v55 = 1;
            v22 = (*(*a2 + 16))(a2);
            v48 = v23 + v22;
            v50 = *(a2 + 27);
            cnprint::CNPrinter::Print(&v56, &v55, "t,%.3lf,WARNING: tba,tunnel bridge notification checker, search radius is not set, too large, negative, or too small, do not use tunnel bridge notification,%.3lf", v24, v25, v26, v27, v28, SLOBYTE(v48));
          }
        }

        else
        {
          if (!cnprint::CNPrinter::GetLogLevel(this))
          {
            v54 = 12;
            v53 = 0;
            v30 = (*(*a2 + 16))(a2);
            v51 = *(a2 + 226);
            v52 = *(a2 + 224);
            v49 = v31 + v30;
            cnprint::CNPrinter::Print(&v54, &v53, "t,%.3lf,TunnelBridgeNotificationChecker,is_tunnel,%d,is_near_tunnel,%d", v32, v33, v34, v35, v36, SLOBYTE(v49));
          }

          v37 = *(a2 + 8);
          *(a3 + 24) = *(a2 + 24);
          *(a3 + 8) = v37;
          v38 = *(a2 + 40);
          v39 = *(a2 + 56);
          v40 = *(a2 + 72);
          *(a3 + 88) = *(a2 + 88);
          *(a3 + 72) = v40;
          *(a3 + 56) = v39;
          *(a3 + 40) = v38;
          v41 = *(a2 + 104);
          v42 = *(a2 + 120);
          v43 = *(a2 + 136);
          *(a3 + 152) = *(a2 + 152);
          *(a3 + 136) = v43;
          *(a3 + 120) = v42;
          *(a3 + 104) = v41;
          result = *(a2 + 168);
          v44 = *(a2 + 184);
          v45 = *(a2 + 200);
          *(a3 + 212) = *(a2 + 212);
          *(a3 + 200) = v45;
          *(a3 + 184) = v44;
          *(a3 + 168) = result;
        }
      }
    }
  }

  else
  {
    v60 = 12;
    v59 = 4;
    v13 = (*(*a2 + 16))(a2, a2, a3);
    v47 = v14 + v13;
    cnprint::CNPrinter::Print(&v60, &v59, "t,%.3lf,TunnelBridgeNotificationChecker, not configured", v15, v16, v17, v18, v19, SLOBYTE(v47));
  }

  return result;
}

void raven::GNSSMeasurementSelectionParameters::GetExpectedConstellations(_BYTE *a1, void *a2)
{
  a2[1] = *a2;
  sub_1D0DE081C(a2, 5uLL);
  if (*a1 == 1)
  {
    v9 = 4;
    sub_1D0DE08E4(a2, &v9);
  }

  if (a1[1] == 1)
  {
    v8 = 3;
    sub_1D0DE08E4(a2, &v8);
  }

  if (a1[2] == 1)
  {
    v7 = 2;
    sub_1D0DE08E4(a2, &v7);
  }

  if (a1[3] == 1)
  {
    v6 = 1;
    sub_1D0DE08E4(a2, &v6);
  }

  if (a1[4] == 1)
  {
    v5 = 5;
    sub_1D0DE08E4(a2, &v5);
  }

  if (a1[5] == 1)
  {
    v4 = 6;
    sub_1D0DE08E4(a2, &v4);
  }
}

void *sub_1D0DE081C(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_1D0DE09D4();
  }

  return result;
}

void sub_1D0DE08E4(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_1D0DE09D4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t raven::AttitudeChangeChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  *(a1 + 8) = 1;
  return 0;
}

uint64_t raven::AttitudeChangeChecker::HandleEvent(raven::AttitudeChangeChecker *this, const raven::AttitudeChangeEvent *a2, raven::AttitudeChangeEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v37[0]) = 12;
    v36.i8[0] = 4;
    v28 = (*(*a2 + 16))(a2);
    v35 = v29 + v28;
    cnprint::CNPrinter::Print(v37, &v36, "t,%.3lf,AttitudeChangeChecker, not configured", v30, v31, v32, v33, v34, SLOBYTE(v35));
    return 0xFFFFFFFFLL;
  }

  if (*(*(this + 2) + 56) == 9)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 40);
  *(a3 + 56) = *(a2 + 56);
  *(a3 + 40) = v7;
  *(a3 + 24) = v6;
  *(a3 + 8) = v5;
  v8 = *(a2 + 72);
  v9 = *(a2 + 88);
  v10 = *(a2 + 104);
  *(a3 + 120) = *(a2 + 120);
  *(a3 + 104) = v10;
  *(a3 + 88) = v9;
  *(a3 + 72) = v8;
  v11 = *(a2 + 136);
  v12 = *(a2 + 152);
  v13 = *(a2 + 168);
  *(a3 + 184) = *(a2 + 184);
  *(a3 + 168) = v13;
  *(a3 + 152) = v12;
  *(a3 + 136) = v11;
  if (a3 != a2)
  {
    *(a3 + 200) = *(a2 + 200);
    *(a3 + 216) = *(a2 + 216);
  }

  v14 = sub_1D0B894B0(a3 + 232, a2 + 232);
  if (*(this + 9) != 1)
  {
    return 0;
  }

  v37[0] = (*(*a3 + 16))(a3, v14);
  v37[1] = v15;
  v36 = *(a3 + 104);
  v17 = CNTimeSpan::operator-(v37, &v36, v36, v16);
  v19 = v18 + v17;
  v20 = fabs(v19);
  v21 = (*&v20 - 1) < 0xFFFFFFFFFFFFFLL;
  v22 = *&v19 == 0;
  v23 = v19 < 0.0;
  v24 = v19 < 0.0 && (*&v20 - 0x10000000000000) >> 53 < 0x3FF;
  if (!v23)
  {
    v21 = 0;
  }

  if (v22)
  {
    v21 = 1;
  }

  v25 = *&v20 <= 0x7FF0000000000000;
  v26 = v20 == INFINITY || v21;
  if (!v25)
  {
    v26 = 1;
  }

  return ((v26 | v24) << 31 >> 31);
}

uint64_t raven::RavenMapVectorActiveObject::Configure(cnframework::ActiveObjectBase *this, uint64_t *a2)
{
  if (*(this + 224) == 1 && cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v92 = 12;
    v91 = 1;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v9 = __p;
    }

    else
    {
      LOBYTE(v9) = __p[0];
    }

    cnprint::CNPrinter::Print(&v92, &v91, "Warning: %s configured more than once.", v4, v5, v6, v7, v8, v9);
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(this + 224) = 0;
  v10 = *a2;
  if (!*a2 || (*(v10 + 33) & 1) == 0)
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v26 = __p;
    }

    else
    {
      LOBYTE(v26) = __p[0];
    }

    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. p_raven_parameters is not initialized.", v21, v22, v23, v24, v25, v26);
    goto LABEL_26;
  }

  *(this + 29) = v10;
  v11 = *(v10 + 3152);
  v12 = (v11 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v13 = ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v11 >= 0)
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = (v11 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v12;
  if ((v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v14 = 1;
  }

  if ((v14 | v13) == 1)
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v20 = __p;
    }

    else
    {
      LOBYTE(v20) = __p[0];
    }

    v83 = *(*(this + 29) + 3152);
    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. Invalid map_vector_event_raise_minimum_interval: %.3lf", v15, v16, v17, v18, v19, v20);
LABEL_26:
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  v28 = *(v10 + 3144);
  v29 = (v28 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v30 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v28 >= 0)
  {
    v30 = 0;
    v29 = 0;
  }

  if ((v28 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v29 = 1;
  }

  if ((v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v29 = 1;
  }

  if (v29 || v30)
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v36 = __p;
    }

    else
    {
      LOBYTE(v36) = __p[0];
    }

    v84 = *(*(this + 29) + 3144);
    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. Invalid map_vector_event_expiration_age: %.3lf", v31, v32, v33, v34, v35, v36);
    goto LABEL_26;
  }

  v37 = *(v10 + 3160);
  v38 = (v37 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v39 = ((v37 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v37 >= 0)
  {
    v39 = 0;
    v38 = 0;
  }

  v40 = (v37 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v38;
  if ((v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v40 = 1;
  }

  if ((v40 | v39) == 1)
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v46 = __p;
    }

    else
    {
      LOBYTE(v46) = __p[0];
    }

    v85 = *(*(this + 29) + 3160);
    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. Invalid map_vector_event_device_rotation_threshold: %.3lf", v41, v42, v43, v44, v45, v46);
    goto LABEL_26;
  }

  v47 = *(v10 + 3224);
  v48 = (v47 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v49 = ((v47 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v47 >= 0)
  {
    v49 = 0;
    v48 = 0;
  }

  if ((v47 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v48 = 1;
  }

  if ((v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v48 = 1;
  }

  if (v48 || v49 || (v50 = *(v10 + 3232), *(v10 + 3224) < v50))
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v56 = __p;
    }

    else
    {
      LOBYTE(v56) = __p[0];
    }

    v86 = *(*(this + 29) + 3224);
    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. Invalid turn_state_detector_minimum_threshold_to_trigger_turning_high_confidence_dps_: %.3lf. Must be finite, non-negative, and greater than or equal to turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps_", v51, v52, v53, v54, v55, v56);
    goto LABEL_26;
  }

  v57 = *(v10 + 3240);
  v58 = (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v59 = v57 < 0.0 && ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v57 >= 0.0)
  {
    v58 = 0;
  }

  v60 = (*&v57 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v58;
  if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v60 = 1;
  }

  if (((v60 | v59) & 1) != 0 || v57 > v50)
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v75 = __p;
    }

    else
    {
      LOBYTE(v75) = __p[0];
    }

    v88 = *(*(this + 29) + 3240);
    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. Invalid turn_state_detector_maximum_threshold_to_trigger_not_turning_high_confidence_dps_: %.3lf. Must be finite, non-negative, and less than or equal to turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps_", v70, v71, v72, v73, v74, v75);
    goto LABEL_26;
  }

  v61 = (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v62 = v50 < 0.0 && ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v50 >= 0.0)
  {
    v61 = 0;
  }

  v63 = (*&v50 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v61;
  if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v63 = 1;
  }

  if ((v63 | v62) == 1)
  {
    v92 = 12;
    v91 = 4;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v69 = __p;
    }

    else
    {
      LOBYTE(v69) = __p[0];
    }

    v87 = *(*(this + 29) + 3232);
    cnprint::CNPrinter::Print(&v92, &v91, "Error: %s could not be configured. Invalid turn_state_detector_maximum_threshold_to_trigger_not_turning_low_confidence_dps_: %.3lf. Must be finite, non-negative, and greater than or equal to turn_state_detector_maximum_threshold_to_trigger_not_turning_high_confidence_dps_", v64, v65, v66, v67, v68, v69);
    goto LABEL_26;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(this, 0.0);
  *(this + 224) = 1;
  v76 = (*(*this + 40))(this);
  if (cnprint::CNPrinter::GetLogLevel(v76) <= 1)
  {
    v92 = 12;
    v91 = 1;
    (*(*this + 16))(__p, this);
    if (v90 >= 0)
    {
      v82 = __p;
    }

    else
    {
      LOBYTE(v82) = __p[0];
    }

    cnprint::CNPrinter::Print(&v92, &v91, "%s configured successfully.", v77, v78, v79, v80, v81, v82);
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}