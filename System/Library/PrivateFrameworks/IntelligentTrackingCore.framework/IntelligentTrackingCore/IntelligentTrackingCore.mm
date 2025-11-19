id DKPIDController.__allocating_init(config:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v19 = a1[3];
  v26 = *(a1 + 32);
  v4 = a1[5];
  v27 = type metadata accessor for DKPIDController();
  v5 = objc_allocWithZone(v27);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp;
  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_ki;
  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd;
  v9 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd] = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv] = v9;
  v20 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError] = v9;
  v21 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError] = v9;
  v22 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError] = v9;
  v11 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit] = v9;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError] = v9;
  v24 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError] = v9;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero;
  v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero] = 0;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralThres] = 0x3FB999999999999ALL;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampDerivativeThres] = 0x3FC999999999999ALL;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_derivativeErrorSmoothing] = 0x3FECCCCCCCCCCCCDLL;
  v12 = *(v2 + 16);
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize] = v12;
  *&v5[v6] = v2;
  *&v5[v7] = v3;
  *&v5[v8] = v1;

  *&v5[v10] = v19;

  *&v5[v11] = v4;

  if (v12)
  {
    v13 = sub_1BB6BAE94();
    *(v13 + 16) = v12;
    bzero((v13 + 32), 8 * v12);
    *&v5[v20] = v13;

    v14 = sub_1BB6BAE94();
    *(v14 + 16) = v12;
    bzero((v14 + 32), 8 * v12);
    *&v5[v21] = v14;

    v15 = sub_1BB6BAE94();
    *(v15 + 16) = v12;
    bzero((v15 + 32), 8 * v12);
    *&v5[v22] = v15;

    v16 = sub_1BB6BAE94();
    *(v16 + 16) = v12;
    bzero((v16 + 32), 8 * v12);
    *&v5[v23] = v16;

    v9 = sub_1BB6BAE94();
    *(v9 + 16) = v12;
    bzero((v9 + 32), 8 * v12);
  }

  else
  {
    *&v5[v20] = v9;

    *&v5[v21] = v9;

    *&v5[v22] = v9;

    *&v5[v23] = v9;
  }

  *&v5[v24] = v9;

  v5[v25] = v26;
  *&v5[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl] = [objc_allocWithZone(type metadata accessor for DKRateControl()) init];
  v28.receiver = v5;
  v28.super_class = v27;
  v17 = objc_msgSendSuper2(&v28, sel_init);

  return v17;
}

uint64_t type metadata accessor for DKRateControl()
{
  result = qword_1EE041308;
  if (!qword_1EE041308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB58C168()
{
  result = sub_1BB6BAA34();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id DKRateControl.init()()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps] = 0x4024000000000000;
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps] = 0x403E000000000000;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastFps] = 0x4024000000000000;
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed] = 0;
  v4 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxSecsElapsed;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxSecsElapsed] = 0;
  v5 = &v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastTriggerSecs];
  *v5 = 0;
  v5[8] = 1;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalTimeElapsed] = 0;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_totalFramesElapsed] = 0;
  *&v0[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs] = 0;
  sub_1BB6BAA24();
  *&v0[v3] = 1.0 / *&v0[v2];
  *&v0[v4] = 1.0 / *&v0[v1];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for DKRateControl();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t getEnumTagSinglePayload for DKIdentityConfidence(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DKIdentityConfidence(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1BB58C3F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB6BAC34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BB58C41C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1BB58C444@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 72);
  *a2 = result;
  return result;
}

double sub_1BB58C454(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 72) = *a1;
  return result;
}

double sub_1BB58C464@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 80);
  *a2 = result;
  return result;
}

double sub_1BB58C474(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 80) = *a1;
  return result;
}

uint64_t sub_1BB58C484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB59A980();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1BB58C4EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1BB58C53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DKMotion3();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BB58C60C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DKMotion3();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BB58C6E0(void *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
}

uint64_t sub_1BB58C74C(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_1BB58C7A0(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_1BB58C7F4(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

uint64_t sub_1BB58C848(void *a1, uint64_t a2)
{
  *(*a2 + 40) = *a1;
}

uint64_t sub_1BB58C89C(void *a1, uint64_t a2)
{
  *(*a2 + 48) = *a1;
}

double sub_1BB58C8E0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 56);
  *a2 = result;
  return result;
}

double sub_1BB58C8F0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 56) = *a1;
  return result;
}

double sub_1BB58C900@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 64);
  *a2 = result;
  return result;
}

double sub_1BB58C910(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 64) = *a1;
  return result;
}

double sub_1BB58C920@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 72);
  *a2 = result;
  return result;
}

double sub_1BB58C930(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 72) = *a1;
  return result;
}

double sub_1BB58C940@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 80);
  *a2 = result;
  return result;
}

double sub_1BB58C950(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 80) = *a1;
  return result;
}

id sub_1BB58CAF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
  *a2 = v2;
  return v2;
}

void sub_1BB58CB0C(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image) = *a1;
  v3 = v2;
}

uint64_t sub_1BB58CCE8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = *a1;
}

uint64_t sub_1BB58CE18@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1BB58CE34(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_appID);
  *v4 = v3;
  v4[1] = v2;
}

void *sub_1BB58CE84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58CEA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_elapsedTime;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58CECC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58CEF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_adaptiveFPS;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58CF14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_cameraFPS;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58CF38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_cameraFPS;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58CF5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58CF80(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_trackingFPS;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB58CFD4@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a2 = *v2;
  a2[1].n128_u8[0] = v3;
  return result;
}

__n128 sub_1BB58CFF8(__n128 *a1, void *a2)
{
  v2 = a1[1].n128_u8[0];
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_referenceDimension;
  result = *a1;
  *v3 = *a1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1BB58D048@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
  v3 = *v2;
  v4 = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = v4;
  v5 = *(v2 + 16);
  *(a2 + 16) = v5;
  return sub_1BB598288(v3, v4, v5);
}

uint64_t sub_1BB58D088(void *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

id sub_1BB58D0CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 32);
  *a2 = v2;
  return v2;
}

void sub_1BB58D0DC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v3 = v2;
}

double sub_1BB58D140@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB58D150(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

double sub_1BB58D160@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB58D170(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

double sub_1BB58D180@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 32);
  *a2 = result;
  return result;
}

double sub_1BB58D190(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 32) = *a1;
  return result;
}

double sub_1BB58D1A0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 40);
  *a2 = result;
  return result;
}

double sub_1BB58D1B0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 40) = *a1;
  return result;
}

double sub_1BB58D1C0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

double sub_1BB58D1D0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 48) = *a1;
  return result;
}

double sub_1BB58D1E0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 56);
  *a2 = result;
  return result;
}

double sub_1BB58D1F0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 56) = *a1;
  return result;
}

double sub_1BB58D200@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 64);
  *a2 = result;
  return result;
}

double sub_1BB58D210(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 64) = *a1;
  return result;
}

double sub_1BB58D220@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 72);
  *a2 = result;
  return result;
}

double sub_1BB58D230(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 72) = *a1;
  return result;
}

double sub_1BB58D240@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 80);
  *a2 = result;
  return result;
}

double sub_1BB58D250(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 80) = *a1;
  return result;
}

double sub_1BB58D260@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 88);
  *a2 = result;
  return result;
}

double sub_1BB58D270(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 88) = *a1;
  return result;
}

uint64_t sub_1BB58D280@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 104);
  *a2 = *(*result + 96);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D298(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 96) = *result;
  *(v3 + 104) = v2;
  return result;
}

uint64_t sub_1BB58D2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BA844();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1BB6BA7F4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1BB58D3F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1BB6BA7F4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DKIdentityFilter.IdentityProbability(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

double sub_1BB58D564@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB58D574(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

uint64_t sub_1BB58D598@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1BB58D5A8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

double sub_1BB58D5EC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB58D5FC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

__n128 sub_1BB58D620@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(*a1 + 24);
  v3 = *(*a1 + 40);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1BB58D634(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  return result;
}

uint64_t sub_1BB58D648@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 64);
  *a2 = *(*result + 56);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D660(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 56) = *result;
  *(v3 + 64) = v2;
  return result;
}

uint64_t sub_1BB58D698@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 88);
  *a2 = *(*result + 80);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D6B0(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 80) = *result;
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_1BB58D6C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 104);
  *a2 = *(*result + 96);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D6E0(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 96) = *result;
  *(v3 + 104) = v2;
  return result;
}

uint64_t sub_1BB58D6F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 120);
  *a2 = *(*result + 112);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D710(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 112) = *result;
  *(v3 + 120) = v2;
  return result;
}

uint64_t sub_1BB58D738(void *a1, uint64_t a2)
{
  *(*a2 + 128) = *a1;
}

uint64_t sub_1BB58D77C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 144);
  *a2 = *(*result + 136);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D794(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 136) = *result;
  *(v3 + 144) = v2;
  return result;
}

uint64_t sub_1BB58D7AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 160);
  *a2 = *(*result + 152);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58D7C4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 152) = *result;
  *(v3 + 160) = v2;
  return result;
}

double sub_1BB58D808@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB58D818(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

double sub_1BB58D828@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB58D838(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

double sub_1BB58D848@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 32);
  *a2 = result;
  return result;
}

double sub_1BB58D858(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 32) = *a1;
  return result;
}

double sub_1BB58D868@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 40);
  *a2 = result;
  return result;
}

double sub_1BB58D878(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 40) = *a1;
  return result;
}

double sub_1BB58D888@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

double sub_1BB58D898(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 48) = *a1;
  return result;
}

double sub_1BB58D8A8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 56);
  *a2 = result;
  return result;
}

double sub_1BB58D8B8(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 56) = *a1;
  return result;
}

double sub_1BB58D8C8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 64);
  *a2 = result;
  return result;
}

double sub_1BB58D8D8(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 64) = *a1;
  return result;
}

double sub_1BB58D928@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 88);
  *a2 = result;
  return result;
}

double sub_1BB58D938(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 88) = *a1;
  return result;
}

double sub_1BB58D948@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 96);
  *a2 = result;
  return result;
}

double sub_1BB58D958(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 96) = *a1;
  return result;
}

double sub_1BB58D968@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 104);
  *a2 = result;
  return result;
}

double sub_1BB58D978(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 104) = *a1;
  return result;
}

uint64_t sub_1BB58D998(void *a1, uint64_t a2)
{
  *(*a2 + 112) = *a1;
}

uint64_t sub_1BB58D9EC(void *a1, uint64_t a2)
{
  *(*a2 + 120) = *a1;
}

uint64_t sub_1BB58DA40(void *a1, uint64_t a2)
{
  *(*a2 + 128) = *a1;
}

double sub_1BB58DAA4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 144);
  *a2 = result;
  return result;
}

double sub_1BB58DAB4(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 144) = *a1;
  return result;
}

double sub_1BB58DAE4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 160);
  *a2 = result;
  return result;
}

double sub_1BB58DAF4(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 160) = *a1;
  return result;
}

double sub_1BB58DB04@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 168);
  *a2 = result;
  return result;
}

double sub_1BB58DB14(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 168) = *a1;
  return result;
}

double sub_1BB58DB24@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 176);
  *a2 = result;
  return result;
}

double sub_1BB58DB34(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 176) = *a1;
  return result;
}

double sub_1BB58DB44@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 184);
  *a2 = result;
  return result;
}

double sub_1BB58DB54(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 184) = *a1;
  return result;
}

uint64_t sub_1BB58DB84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB5F2C28();
  *a1 = result;
  return result;
}

__n128 sub_1BB58DBE4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

double sub_1BB58DBF8@<D0>(uint64_t a1@<X8>)
{
  sub_1BB5F2C70(v3);
  result = *&v3[1];
  *a1 = v3[0];
  *(a1 + 8) = result;
  return result;
}

double sub_1BB58DC3C(void *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return sub_1BB5F2C90(v3);
}

uint64_t sub_1BB58DC88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB5F2CD8();
  *a1 = result;
  return result;
}

uint64_t sub_1BB58DE40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB5F3084();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BB58DEA4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BB5F5738();
}

uint64_t sub_1BB58DF88@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BB5F5604();
}

uint64_t sub_1BB58E064@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB5F3660();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BB58E104@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BB5F374C();
  *a1 = result;
  return result;
}

__n128 sub_1BB58E280@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58E29C(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

void *sub_1BB58E2DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E300(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E324@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E348(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E36C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E390(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E3B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E3D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_pitch;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E3FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E420(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_roll;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E444@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E468(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_distance;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB58E59C@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58E5B8(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

void *sub_1BB58E5F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E61C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E640@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E664(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E688@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E6AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_distance;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB58E7B0@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58E7CC(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

void *sub_1BB58E80C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E830(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_trackerId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E854@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E878(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_groupId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58E89C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58E8C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKObjectObservation_distance;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB58E98C@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58E9A8(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

void *sub_1BB58E9E8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58EA0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_trackerId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58EA30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58EA54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58EAA8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58EACC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_distance;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

id sub_1BB58EB68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image);
  *a2 = v2;
  return v2;
}

void sub_1BB58EB80(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image);
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_image) = *a1;
  v3 = v2;
}

uint64_t sub_1BB58EBE8(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_standPosition) = *a1;
}

__n128 sub_1BB58EC34@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a2 = *v2;
  a2[1].n128_u8[0] = v3;
  return result;
}

__n128 sub_1BB58EC58(__n128 *a1, void *a2)
{
  v2 = a1[1].n128_u8[0];
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_imageSize;
  result = *a1;
  *v3 = *a1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_1BB58EC7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_1BB58EC98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_appID);
  *v4 = v3;
  v4[1] = v2;
}

void *sub_1BB58ECE8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58ED0C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKObservationMetadata_latency;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

id sub_1BB58EDAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_image);
  *a2 = v2;
  return v2;
}

void sub_1BB58EDC4(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_image);
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore10DKKeyframe_image) = *a1;
  v3 = v2;
}

uint64_t sub_1BB58EE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1BB58EF54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void *sub_1BB58F080@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceYaw;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F0A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceYaw;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58F0C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_facePitch;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F0EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_facePitch;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58F110@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceRoll;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F134(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_faceRoll;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58F158@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_distance;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F17C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter11Measurement_distance;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB58F2DC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58F2F8(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

__n128 sub_1BB58F314@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_bodyRect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58F330(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_bodyRect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

void *sub_1BB58F34C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceYaw;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F370(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceYaw;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58F394@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_facePitch;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F3B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_facePitch;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58F3DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRoll;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F400(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRoll;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1BB58F75C(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonMotionFilter_lastState) = *a1;
}

unint64_t sub_1BB58F910@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BB624924(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 sub_1BB58FACC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58FAE8(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

double sub_1BB58FB04@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  result = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

double sub_1BB58FB28(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB58FC98@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence);
  *a2 = result;
  return result;
}

double sub_1BB58FCB0(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_trackerConfidence) = *a1;
  return result;
}

void *sub_1BB58FCEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58FD10(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceYaw;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58FD34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58FD58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_facePitch;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB58FD7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB58FDA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKFaceTrackerState_faceRoll;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB58FE6C@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB58FE88(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

double sub_1BB58FEA4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  result = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

double sub_1BB58FEC8(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB590038@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence);
  *a2 = result;
  return result;
}

double sub_1BB590050(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = *a1;
  return result;
}

__n128 sub_1BB590134@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB590150(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

double sub_1BB59016C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  result = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

double sub_1BB590190(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB590300@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence);
  *a2 = result;
  return result;
}

double sub_1BB590318(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKObjectTrackerState_trackerConfidence) = *a1;
  return result;
}

__n128 sub_1BB5903FC@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB590418(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

double sub_1BB590434@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  result = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

double sub_1BB590458(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB5905C8@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence);
  *a2 = result;
  return result;
}

double sub_1BB5905E0(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKHandTrackerState_trackerConfidence) = *a1;
  return result;
}

uint64_t sub_1BB59065C(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

__n128 sub_1BB5906A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *(*a1 + 24);
  v3 = *(*a1 + 40);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1BB5906B4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  return result;
}

__n128 sub_1BB590770@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB59078C(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

double sub_1BB5907A8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  result = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

double sub_1BB5907CC(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

void *sub_1BB59096C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB590990(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceYaw;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB5909B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB5909D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_facePitch;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB5909FC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB590A20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_faceRoll;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1BB590AA4(void *a1, void *a2)
{
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_handTrackers) = *a1;
}

__n128 sub_1BB590B70@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB590B8C(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_bodyRect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

double sub_1BB590DE8@<D0>(void *a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence);
  *a2 = result;
  return result;
}

double sub_1BB590E00(double *a1, void *a2)
{
  result = *a1;
  *(*a2 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerConfidence) = *a1;
  return result;
}

double sub_1BB590E24@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB590E34(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

double sub_1BB590E44@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB590E54(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

double sub_1BB590E64@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 32);
  *a2 = result;
  return result;
}

double sub_1BB590E74(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 32) = *a1;
  return result;
}

double sub_1BB590E84@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 40);
  *a2 = result;
  return result;
}

double sub_1BB590E94(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 40) = *a1;
  return result;
}

double sub_1BB590EA4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

double sub_1BB590EB4(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 48) = *a1;
  return result;
}

double sub_1BB590EC4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 56);
  *a2 = result;
  return result;
}

double sub_1BB590ED4(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 56) = *a1;
  return result;
}

uint64_t sub_1BB590EE4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BB6BA7F4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1BB590FF8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1BB6BA7F4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[10]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1BB591108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1BB6BA844();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1BB5911F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1BB6BA7F4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1BB6BA844();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1BB5912F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1BB6BA844();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1BB59136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1BB6BA844();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1BB59147C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

double sub_1BB5914C4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 200);
  *a2 = result;
  return result;
}

double sub_1BB5914D4(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 200) = *a1;
  return result;
}

double sub_1BB5914E4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 208);
  *a2 = result;
  return result;
}

double sub_1BB5914F4(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 208) = *a1;
  return result;
}

id sub_1BB5915CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_1BB5915DC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v3 = v2;
}

uint64_t sub_1BB591634(void *a1, uint64_t a2)
{
  *(*a2 + 56) = *a1;
}

double sub_1BB591678@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 200);
  *a2 = result;
  return result;
}

double sub_1BB591688(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 200) = *a1;
  return result;
}

uint64_t sub_1BB5916B0(void *a1, void *a2)
{
  *(*a2 + qword_1EBC5F440) = *a1;
}

uint64_t sub_1BB5916FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BB591734()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1BB5917A8@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

__n128 sub_1BB5917CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_rect;
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = v2;
  return result;
}

void *sub_1BB5917F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB591814(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter11Measurement_distance;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

__n128 sub_1BB5918C4@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect;
  result = *v2;
  v4 = *(v2 + 16);
  *a2 = *v2;
  a2[1] = v4;
  return result;
}

__n128 sub_1BB5918E0(uint64_t a1, void *a2)
{
  v2 = (*a2 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_rect);
  result = *a1;
  v4 = *(a1 + 16);
  *v2 = *a1;
  v2[1] = v4;
  return result;
}

uint64_t sub_1BB5919DC(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

double sub_1BB591A20@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB591A30(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

double sub_1BB591A40@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB591A50(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

double sub_1BB591A60@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 32);
  *a2 = result;
  return result;
}

double sub_1BB591A70(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 32) = *a1;
  return result;
}

double sub_1BB591A80@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 40);
  *a2 = result;
  return result;
}

double sub_1BB591A90(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 40) = *a1;
  return result;
}

double sub_1BB591AA0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

double sub_1BB591AB0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 48) = *a1;
  return result;
}

double sub_1BB591AC0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 56);
  *a2 = result;
  return result;
}

double sub_1BB591AD0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 56) = *a1;
  return result;
}

double sub_1BB591AE0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 64);
  *a2 = result;
  return result;
}

double sub_1BB591AF0(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 64) = *a1;
  return result;
}

double sub_1BB591B00@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 72);
  *a2 = result;
  return result;
}

double sub_1BB591B10(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 72) = *a1;
  return result;
}

double sub_1BB591B20@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 80);
  *a2 = result;
  return result;
}

double sub_1BB591B30(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 80) = *a1;
  return result;
}

double sub_1BB591B40@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 88);
  *a2 = result;
  return result;
}

double sub_1BB591B50(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 88) = *a1;
  return result;
}

double sub_1BB591B60@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 96);
  *a2 = result;
  return result;
}

double sub_1BB591B70(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 96) = *a1;
  return result;
}

double sub_1BB591B80@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 104);
  *a2 = result;
  return result;
}

double sub_1BB591B90(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 104) = *a1;
  return result;
}

uint64_t sub_1BB591BB0(void *a1, uint64_t a2)
{
  *(*a2 + 112) = *a1;
}

uint64_t sub_1BB591C04(void *a1, uint64_t a2)
{
  *(*a2 + 120) = *a1;
}

uint64_t sub_1BB591C58(void *a1, uint64_t a2)
{
  *(*a2 + 128) = *a1;
}

double sub_1BB591C9C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 136);
  *a2 = result;
  return result;
}

double sub_1BB591CAC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 136) = *a1;
  return result;
}

double sub_1BB591CBC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 144);
  *a2 = result;
  return result;
}

double sub_1BB591CCC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 144) = *a1;
  return result;
}

double sub_1BB591CDC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 152);
  *a2 = result;
  return result;
}

double sub_1BB591CEC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 152) = *a1;
  return result;
}

double sub_1BB591CFC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 160);
  *a2 = result;
  return result;
}

double sub_1BB591D0C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 160) = *a1;
  return result;
}

double sub_1BB591D1C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 168);
  *a2 = result;
  return result;
}

double sub_1BB591D2C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 168) = *a1;
  return result;
}

double sub_1BB591D3C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 176);
  *a2 = result;
  return result;
}

double sub_1BB591D4C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 176) = *a1;
  return result;
}

double sub_1BB591D5C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 184);
  *a2 = result;
  return result;
}

double sub_1BB591D6C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 184) = *a1;
  return result;
}

uint64_t sub_1BB591D7C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 200);
  *a2 = *(*result + 192);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB591D94(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 192) = *result;
  *(v3 + 200) = v2;
  return result;
}

double sub_1BB591DCC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 216);
  *a2 = result;
  return result;
}

double sub_1BB591DDC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 216) = *a1;
  return result;
}

double sub_1BB591DEC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 224);
  *a2 = result;
  return result;
}

double sub_1BB591DFC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 224) = *a1;
  return result;
}

double sub_1BB591E0C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 232);
  *a2 = result;
  return result;
}

double sub_1BB591E1C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 232) = *a1;
  return result;
}

double sub_1BB591E2C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 240);
  *a2 = result;
  return result;
}

double sub_1BB591E3C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 240) = *a1;
  return result;
}

double sub_1BB591E4C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 248);
  *a2 = result;
  return result;
}

double sub_1BB591E5C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 248) = *a1;
  return result;
}

double sub_1BB591E6C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 256);
  *a2 = result;
  return result;
}

double sub_1BB591E7C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 256) = *a1;
  return result;
}

double sub_1BB591E8C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 264);
  *a2 = result;
  return result;
}

double sub_1BB591E9C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 264) = *a1;
  return result;
}

uint64_t sub_1BB591EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BB591F98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BB6BA7F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BB592080(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1BB6BA7F4();
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_1BB5921F8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C428);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for DKIdentityFilter.IdentityProbabilities(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1BB6BA7F4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1BB592370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BB59242C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BB6BA7F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BB5924F4(void *a1, uint64_t a2)
{
  *(*a2 + 64) = *a1;
}

uint64_t sub_1BB592548(void *a1, uint64_t a2)
{
  *(*a2 + 72) = *a1;
}

uint64_t sub_1BB59259C(void *a1, uint64_t a2)
{
  *(*a2 + 80) = *a1;
}

uint64_t sub_1BB5925F0(void *a1, uint64_t a2)
{
  *(*a2 + 88) = *a1;
}

id sub_1BB592634@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

void sub_1BB592644(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v3 = v2;
}

uint64_t sub_1BB59268C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 32);
  *a2 = *(*result + 24);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB5926A4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 24) = *result;
  *(v3 + 32) = v2;
  return result;
}

double sub_1BB5926EC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 200);
  *a2 = result;
  return result;
}

double sub_1BB5926FC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 200) = *a1;
  return result;
}

double sub_1BB59270C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 208);
  *a2 = result;
  return result;
}

double sub_1BB59271C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 208) = *a1;
  return result;
}

double sub_1BB59272C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 216);
  *a2 = result;
  return result;
}

double sub_1BB59273C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 216) = *a1;
  return result;
}

double sub_1BB59274C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 224);
  *a2 = result;
  return result;
}

double sub_1BB59275C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 224) = *a1;
  return result;
}

double sub_1BB59276C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 232);
  *a2 = result;
  return result;
}

double sub_1BB59277C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 232) = *a1;
  return result;
}

double sub_1BB59278C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 240);
  *a2 = result;
  return result;
}

double sub_1BB59279C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 240) = *a1;
  return result;
}

double sub_1BB5927AC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 248);
  *a2 = result;
  return result;
}

double sub_1BB5927BC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 248) = *a1;
  return result;
}

double sub_1BB5927CC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 256);
  *a2 = result;
  return result;
}

double sub_1BB5927DC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 256) = *a1;
  return result;
}

double sub_1BB59280C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 272);
  *a2 = result;
  return result;
}

double sub_1BB59281C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 272) = *a1;
  return result;
}

double sub_1BB59282C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 280);
  *a2 = result;
  return result;
}

double sub_1BB59283C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 280) = *a1;
  return result;
}

double sub_1BB59284C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 288);
  *a2 = result;
  return result;
}

double sub_1BB59285C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 288) = *a1;
  return result;
}

uint64_t sub_1BB59287C(void *a1, uint64_t a2)
{
  *(*a2 + 296) = *a1;
}

double sub_1BB592AB4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity;
  result = *(v2 + 8);
  *a2 = *v2;
  *(a2 + 8) = result;
  return result;
}

double sub_1BB592AD8(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity;
  *v3 = *a1;
  *(v3 + 8) = result;
  return result;
}

double sub_1BB592C50@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB592C60(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

double sub_1BB592C70@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB592C80(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

uint64_t sub_1BB592CB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*result + 48);
  *a2 = *(*result + 40);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB592CC8(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  *(v3 + 40) = *result;
  *(v3 + 48) = v2;
  return result;
}

uint64_t sub_1BB592CF8(void *a1, uint64_t a2)
{
  *(*a2 + 64) = *a1;
}

uint64_t sub_1BB592D8C(void *a1, uint64_t a2)
{
  *(*a2 + 80) = *a1;
}

uint64_t sub_1BB592E20(void *a1, uint64_t a2)
{
  *(*a2 + 96) = *a1;
}

double sub_1BB592E64@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 104);
  *a2 = result;
  return result;
}

double sub_1BB592E74(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 104) = *a1;
  return result;
}

double sub_1BB592E84@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 112);
  *a2 = result;
  return result;
}

double sub_1BB592E94(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 112) = *a1;
  return result;
}

__n128 sub_1BB592EA4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  *a2 = *(*a1 + 120);
  *(a2 + 16) = v3;
  result = *(v2 + 152);
  *(a2 + 32) = result;
  return result;
}

__n128 sub_1BB592EC0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  *(v2 + 120) = *a1;
  *(v2 + 136) = v3;
  result = *(a1 + 32);
  *(v2 + 152) = result;
  return result;
}

double sub_1BB592EDC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 168);
  *a2 = result;
  return result;
}

double sub_1BB592EEC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 168) = *a1;
  return result;
}

double sub_1BB592EFC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 176);
  *a2 = result;
  return result;
}

double sub_1BB592F0C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 176) = *a1;
  return result;
}

double sub_1BB592F1C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 16);
  *a2 = result;
  return result;
}

double sub_1BB592F2C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 16) = *a1;
  return result;
}

double sub_1BB592F3C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 24);
  *a2 = result;
  return result;
}

double sub_1BB592F4C(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 24) = *a1;
  return result;
}

double sub_1BB592F9C@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 40);
  *a2 = result;
  return result;
}

double sub_1BB592FAC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 40) = *a1;
  return result;
}

double sub_1BB592FBC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 48);
  *a2 = result;
  return result;
}

double sub_1BB592FCC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 48) = *a1;
  return result;
}

double sub_1BB592FDC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(*a1 + 56);
  *a2 = result;
  return result;
}

double sub_1BB592FEC(double *a1, uint64_t a2)
{
  result = *a1;
  *(*a2 + 56) = *a1;
  return result;
}

void *sub_1BB593018@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB59303C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

void *sub_1BB593060@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  v3 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  *a2 = v3;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1BB593084(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  v3 = *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v3 = *result;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1BB5930D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1BB593194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BB6BA7F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BB59324C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(*result + 16))
  {
    *a2 = *(*result + 32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB59326C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(*result + 16) <= 1uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(*result + 40);
  }

  return result;
}

uint64_t sub_1BB593290@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(*result + 16) <= 2uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *(*result + 48);
  }

  return result;
}

__n128 sub_1BB593328(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1BB593368(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1BB5933DC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1BB5DFB68();
}

uint64_t sub_1BB593460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BB6BA7F4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1BB593530(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BB6BA7F4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1BB593648(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BB5936D8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1BB593714(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BB59F668(a1, a2);
  }

  return a1;
}

uint64_t _s23IntelligentTrackingCore15DKFaceDirectionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB593774()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB5937C0()
{
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](0);
  return sub_1BB6BB964();
}

uint64_t sub_1BB593804()
{
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](0);
  return sub_1BB6BB964();
}

void *sub_1BB593844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v67 = a4;
  v64 = a1;
  v65 = a2;
  v7 = sub_1BB6BA7F4();
  v62 = *(v7 - 8);
  v63 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6BA734();
  sub_1BB6BA734();
  sub_1BB6BA734();
  sub_1BB6BA734();
  *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_lastHorizontalFraming) = 0;
  v68 = v5;
  *(v5 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_lastVerticalFraming) = 0;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  v11 = *(a3 + 32);
  v52 = *(a3 + 40);
  v53 = *(a3 + 56);
  v66 = a3;
  LODWORD(v60) = *(a3 + 48);
  *&v59 = type metadata accessor for DKPIDController();
  v12 = objc_allocWithZone(v59);
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp;
  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_ki;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd;
  v16 = MEMORY[0x1E69E7CC0];
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd] = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv] = v16;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError] = v16;
  v54 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError] = v16;
  v55 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError] = v16;
  v19 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit] = v16;
  v56 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError] = v16;
  v57 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError] = v16;
  v58 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero;
  v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero] = 0;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralThres] = 0x3FB999999999999ALL;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampDerivativeThres] = 0x3FC999999999999ALL;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_derivativeErrorSmoothing] = 0x3FECCCCCCCCCCCCDLL;
  v20 = *(v10 + 16);
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize] = v20;
  *&v12[v13] = v10;
  *&v12[v14] = v11;
  *&v12[v15] = v9;

  v21 = v52;

  v22 = v53;

  *&v12[v17] = v21;

  *&v12[v19] = v22;

  if (v20)
  {
    v23 = sub_1BB6BAE94();
    *(v23 + 16) = v20;
    bzero((v23 + 32), 8 * v20);
    *&v12[v18] = v23;

    v24 = sub_1BB6BAE94();
    *(v24 + 16) = v20;
    bzero((v24 + 32), 8 * v20);
    *&v12[v54] = v24;

    v25 = sub_1BB6BAE94();
    *(v25 + 16) = v20;
    bzero((v25 + 32), 8 * v20);
    *&v12[v55] = v25;

    v26 = sub_1BB6BAE94();
    *(v26 + 16) = v20;
    bzero((v26 + 32), 8 * v20);
    *&v12[v56] = v26;

    v16 = sub_1BB6BAE94();
    *(v16 + 16) = v20;
    bzero((v16 + 32), 8 * v20);
  }

  else
  {
    *&v12[v18] = v16;

    *&v12[v54] = v16;

    *&v12[v55] = v16;

    *&v12[v56] = v16;
  }

  *&v12[v57] = v16;

  v12[v58] = v60;
  *&v12[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl] = [objc_allocWithZone(type metadata accessor for DKRateControl()) init];
  v70.receiver = v12;
  v70.super_class = v59;
  v27 = objc_msgSendSuper2(&v70, sel_init);
  *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_pid) = v27;
  v28 = sub_1BB59CF38(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    v28 = sub_1BB59CF38((v29 > 1), v30 + 1, 1, v28);
    v29 = *(v28 + 3);
    v31 = v29 >> 1;
  }

  *(v28 + 2) = v32;
  v33 = &v28[3 * v30];
  *(v33 + 16) = 256;
  v33[34] = 1;
  v34 = v30 + 2;
  if (v31 < (v30 + 2))
  {
    v28 = sub_1BB59CF38((v29 > 1), v30 + 2, 1, v28);
  }

  *(v28 + 2) = v34;
  v35 = &v28[3 * v32];
  *(v35 + 16) = 1;
  v35[34] = 0;
  v36 = *(v28 + 3);
  if ((v30 + 3) > (v36 >> 1))
  {
    v28 = sub_1BB59CF38((v36 > 1), v30 + 3, 1, v28);
  }

  *(v28 + 2) = v30 + 3;
  v37 = &v28[3 * v34];
  *(v37 + 16) = 256;
  v37[34] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC8);
  swift_allocObject();

  v38 = sub_1BB596E18(0, v28);
  v39 = v68;
  *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalTrackingFSM) = v38;
  swift_allocObject();
  *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalTrackingFSM) = sub_1BB596E18(0, v28);
  v40 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v41 = v61;
  v42 = v62;
  v60 = *(v62 + 16);
  v43 = v63;
  v60(v61, v69 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v63);
  type metadata accessor for DKAccelerationLimiter();
  v44 = swift_allocObject();
  sub_1BB6BA724();
  v59 = xmmword_1BB6BC7D0;
  *(v44 + 16) = xmmword_1BB6BC7D0;
  *(v44 + 32) = 0;
  v45 = *(v42 + 32);
  v45(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime, v41, v43);
  *(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) = 1;
  *(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = 1;
  *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalAccelerationFilter) = v44;
  v46 = v69;
  v60(v41, v69 + v40, v43);
  v47 = swift_allocObject();
  sub_1BB6BA724();
  *(v47 + 16) = v59;
  *(v47 + 32) = 0;
  v45(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_updateTime, v41, v43);
  *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) = 1;
  *(v47 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = 1;
  *(v39 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalAccelerationFilter) = v47;
  sub_1BB6BAA24();
  v48 = v65;
  v39[2] = v64;
  v39[3] = v48;
  v49 = v67;
  v39[4] = v66;
  v39[5] = v49;
  v39[6] = v46;
  return v39;
}

uint64_t sub_1BB59401C()
{
  v1[2] = v0;
  v2 = sub_1BB6BA7F4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB5940DC, 0, 0);
}

uint64_t sub_1BB5940DC()
{
  v14 = v0;
  v1 = v0[2];

  sub_1BB594260(v2, &v13);

  v3 = v13;
  if (v13)
  {
    v5 = v0[4];
    v4 = v0[5];
    v7 = v0[2];
    v6 = v0[3];
    v8 = *(v1 + 48);
    (*(v5 + 16))(v4, v8 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v6);
    type metadata accessor for DKIntelligentTrackingCommand(0);
    v9 = swift_allocObject();
    (*(v5 + 32))(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v4, v6);
    v10 = v9 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
    *v10 = v3;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = v9;

    *(*(v7 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastCommand) = *(*(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command);
  }

  v11 = v0[1];

  return v11(1);
}

id sub_1BB594260@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v5 = sub_1BB6BA7F4();
  v121 = *(v5 - 8);
  v6 = (MEMORY[0x1EEE9AC00])();
  v114 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v115 = &v107 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v119 = &v107 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v117 = &v107 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v107 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v107 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v107 - v19;
  v116 = 0;
  v21 = type metadata accessor for DKCamera();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v20, &qword_1EBC5BCB0);
  v25 = *(v22 + 48);
  v113 = v21;
  if (v25(v20, 1, v21) == 1)
  {
    result = sub_1BB598308(v20, &qword_1EBC5BCB0);
    *a2 = 0;
    return result;
  }

  v110 = a2;
  sub_1BB5981C8(v20, v24);
  sub_1BB598368(a1);
  v28 = v27;
  v126 = a1;
  sub_1BB59859C(a1);
  v30 = v29;
  v112 = v24;
  if (v28)
  {
    v31 = v124;
    sub_1BB595CAC();
    v109 = v32;
    if (v30)
    {
      sub_1BB595FA8();
      v108 = v33;
    }

    else
    {
      v108 = 0;
    }

    v35 = &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime];
    v36 = v121;
    v118 = *(v121 + 16);
    v118(v17, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime], v5);
    v37 = v125;
    sub_1BB6BA734();
    v38 = sub_1BB6BA7C4();
    v39 = *(v36 + 8);
    v39(v37, v5);
    v123 = v39;
    v39(v17, v5);
    v40 = &OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideHorizontalTime;
    if (v38)
    {
LABEL_10:
      (*(v36 + 24))(v35, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v5);
    }
  }

  else
  {
    v31 = v124;
    if (v29)
    {
      sub_1BB595FA8();
      v108 = v34;
    }

    else
    {
      v108 = 0;
    }

    v36 = v121;
    v35 = &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideHorizontalTime];
    v118 = *(v121 + 16);
    v118(v17, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideHorizontalTime], v5);
    v58 = v125;
    sub_1BB6BA734();
    v59 = sub_1BB6BA7C4();
    v60 = *(v36 + 8);
    v60(v58, v5);
    v123 = v60;
    v60(v17, v5);
    v109 = 0;
    v40 = &OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime;
    if (v59)
    {
      goto LABEL_10;
    }
  }

  sub_1BB6BA734();
  v42 = v36 + 40;
  v41 = *(v36 + 40);
  v41(&v31[*v40], v17, v5);
  v122 = v42 - 24;
  if (v30)
  {
    v43 = &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime];
    v118(v17, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime], v5);
    v44 = v125;
    sub_1BB6BA734();
    v45 = sub_1BB6BA7C4();
    v46 = v123;
    v123(v44, v5);
    v47 = (v42 - 32);
    v46(v17, v5);
    v48 = &OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideVerticalTime;
    if ((v45 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v43 = &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideVerticalTime];
  v118(v17, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideVerticalTime], v5);
  v49 = v125;
  sub_1BB6BA734();
  v50 = sub_1BB6BA7C4();
  v51 = v123;
  v123(v49, v5);
  v47 = (v42 - 32);
  v51(v17, v5);
  v48 = &OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime;
  if (v50)
  {
LABEL_15:
    (*(v121 + 24))(v43, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v5);
  }

LABEL_16:
  sub_1BB6BA734();
  v41(&v31[*v48], v17, v5);
  v52 = *(v126 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming);
  v53 = v117;
  v111 = v41;
  if (v52 == 4 || v52 == v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_lastHorizontalFraming])
  {
    v54 = 0;
    v55 = v126;
    v56 = v118;
    v57 = v123;
  }

  else
  {
    v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_lastHorizontalFraming] = v52;
    v61 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalAccelerationFilter];
    v56 = v118;
    v118(v17, (v126 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time), v5);

    sub_1BB6BA754();
    v62 = v53;
    v57 = v123;
    v123(v17, v5);
    if (*(v61 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) == 1)
    {
      *(v61 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = 0;
      v41((v61 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout), v62, v5);
    }

    else
    {

      v57(v62, v5);
    }

    v54 = 1;
    v55 = v126;
  }

  v63 = *(v55 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming);
  v123 = v57;
  v120 = v47;
  if (v63 == 3)
  {
    LODWORD(v121) = 0;
    if (v54)
    {
      goto LABEL_28;
    }

LABEL_39:
    v67 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
    v56(v17, v55 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v5);
    v71 = v125;
    v56(v125, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime], v5);
    sub_1BB6BA744();
    v2 = v72;
    v57(v71, v5);
    v57(v17, v5);
    if (v2 <= 1.0)
    {
      goto LABEL_43;
    }

    v73 = &v112[*(v113 + 32)];
    v74 = *&v73[*(type metadata accessor for DKMotion3() + 24)];
    if (!*(v74 + 16))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (fabs(*(v74 + 32)) >= *(*(v31 + 4) + 176))
    {
LABEL_43:
      v56(v17, &v67[v126], v5);
      v77 = v125;
      v56(v125, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideHorizontalTime], v5);
      sub_1BB6BA744();
      v2 = v78;
      v57(v77, v5);
      v57(v17, v5);
      if (v2 <= 0.0)
      {
        v67 = v116;
        if ((v109 & 1) == 0)
        {
          v66 = &unk_1E7FB4000;
          if (!v121)
          {
            goto LABEL_47;
          }

          goto LABEL_30;
        }

        v91 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalTrackingFSM];
        v65 = *(v91 + 32);

        v66 = &unk_1E7FB4000;
        [v65 lock];
        sub_1BB5DC638(v91, &unk_1F3A47D30);
        if (v67)
        {
          goto LABEL_56;
        }

LABEL_46:
        [v65 unlock];

        if ((v121 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_30:
        v68 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalTrackingFSM];
        v69 = v31;
        v31 = *(v68 + 32);

        [v31 v66[379]];
        sub_1BB5DC638(v68, &unk_1F3A47D58);
        if (!v67)
        {
          [v31 unlock];

          sub_1BB6BA734();
          v111(&v69[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime], v17, v5);
          v31 = v69;
          v47 = v123;
          goto LABEL_61;
        }

LABEL_103:

        result = [v31 unlock];
        __break(1u);
        return result;
      }

      v75 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalTrackingFSM];
      v65 = *(v75 + 32);

      v66 = &unk_1E7FB4000;
      [v65 lock];
      v76 = &unk_1F3A47D08;
    }

    else
    {
      v75 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalTrackingFSM];
      v65 = *(v75 + 32);

      v66 = &unk_1E7FB4000;
      [v65 lock];
      v76 = &unk_1F3A47CE0;
    }

    v67 = v116;
    sub_1BB5DC638(v75, v76);
    if (v67)
    {
      goto LABEL_56;
    }

    goto LABEL_46;
  }

  if (v63 == v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_lastVerticalFraming])
  {
    LODWORD(v121) = 0;
    if (!v54)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_lastVerticalFraming] = v63;
    v70 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalAccelerationFilter];
    v56(v17, v55 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v5);

    sub_1BB6BA754();
    v57(v17, v5);
    if (*(v70 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) == 1)
    {
      *(v70 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile) = 0;
      v111((v70 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout), v119, v5);
    }

    else
    {

      v57(v119, v5);
    }

    LODWORD(v121) = 1;
    v55 = v126;
    if ((v54 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_28:
  v64 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalTrackingFSM];
  v65 = *(v64 + 32);

  v66 = &unk_1E7FB4000;
  [v65 lock];
  v67 = v116;
  sub_1BB5DC638(v64, &unk_1F3A47CB8);
  if (v67)
  {
LABEL_56:

    [v65 unlock];
    __break(1u);
    goto LABEL_57;
  }

  [v65 unlock];

  sub_1BB6BA734();
  v111(&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime], v17, v5);
  if (v121)
  {
    goto LABEL_30;
  }

LABEL_47:
  v79 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v56(v17, v126 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v5);
  v80 = v56;
  v81 = v125;
  v57 = v80;
  (v80)(v125, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime], v5);
  sub_1BB6BA744();
  v2 = v82;
  v83 = v123;
  v123(v81, v5);
  v47 = v83;
  (v83)(v17, v5);
  if (v2 <= 1.0)
  {
    goto LABEL_52;
  }

  v84 = &v112[*(v113 + 32)];
  v85 = *&v84[*(type metadata accessor for DKMotion3() + 24)];
  if (*(v85 + 16) < 2uLL)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (fabs(*(v85 + 40)) >= *(*(v31 + 4) + 176))
  {
LABEL_52:
    v56 = v57;
    (v57)(v17, v126 + v79, v5);
    v87 = v125;
    (v57)(v125, &v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideVerticalTime], v5);
    sub_1BB6BA744();
    v2 = v88;
    (v47)(v87, v5);
    (v47)(v17, v5);
    if (v2 > 0.0)
    {
      v89 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalTrackingFSM];
      v31 = *(v89 + 32);

      [v31 lock];
      v90 = &unk_1F3A47DA8;
LABEL_59:
      sub_1BB5DC638(v89, v90);
      if (v67)
      {
        goto LABEL_103;
      }

      [v31 unlock];

      v31 = v124;
      goto LABEL_61;
    }

LABEL_57:
    if ((v108 & 1) == 0)
    {
      goto LABEL_61;
    }

    v89 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalTrackingFSM];
    v31 = *(v89 + 32);

    [v31 lock];
    v90 = &unk_1F3A47DD0;
    goto LABEL_59;
  }

  v86 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalTrackingFSM];
  v31 = *(v86 + 32);

  [v31 lock];
  sub_1BB5DC638(v86, &unk_1F3A47D80);
  if (v67)
  {
    goto LABEL_103;
  }

  [v31 unlock];

  v31 = v124;
  v56 = v57;
LABEL_61:
  v57 = v56;
  sub_1BB5954E4(v126, &v127);
  v92 = v31;
  v93 = *&v31[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalTrackingFSM];
  v94 = *(v93 + 32);

  [v94 lock];
  v95 = *(v93 + 16);
  v67 = &unk_1E7FB4000;
  [v94 unlock];

  if (v95)
  {
    goto LABEL_65;
  }

  v31 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1BB6B0F28(v31);
    if (*(v31 + 2))
    {
      goto LABEL_64;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    v31 = sub_1BB6B0F28(v31);
    goto LABEL_67;
  }

  if (!*(v31 + 2))
  {
    goto LABEL_92;
  }

LABEL_64:
  *(v31 + 4) = 0;
  v127 = v31;
  v92 = v124;
LABEL_65:
  v96 = *&v92[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalTrackingFSM];
  v97 = *(v96 + 32);

  [v97 lock];
  v98 = *(v96 + 16);
  [v97 unlock];

  v94 = v126;
  if (v98)
  {
    goto LABEL_69;
  }

  v31 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_67:
  if (*(v31 + 2) < 2uLL)
  {
    __break(1u);
    goto LABEL_95;
  }

  *(v31 + 5) = 0;
  v127 = v31;
  v92 = v124;
LABEL_69:
  v99 = *&v92[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_horizontalAccelerationFilter];
  v67 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v100 = v115;
  v56(v115, &v94[OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time], v5);
  if (*(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) != 1)
  {
    (v47)(v100, v5);
    goto LABEL_78;
  }

  v56(v17, v99 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v5);

  sub_1BB6BA744();
  v2 = v101;
  (v47)(v17, v5);
  (v47)(v100, v5);
  if (v2 <= 0.0)
  {

    goto LABEL_78;
  }

  v102 = *(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile);

  if (v102)
  {
    goto LABEL_78;
  }

  v31 = v127;
  if (!*(v127 + 2))
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v2 = *(v127 + 4);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_99;
  }

  if (*(v31 + 2))
  {
    while (1)
    {
      *(v31 + 4) = v2 * 0.5;
      v127 = v31;
LABEL_78:
      v103 = *&v124[OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_verticalAccelerationFilter];
      v104 = &v67[v126];
      v67 = v114;
      (v57)(v114, v104, v5);
      if (*(v103 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profilesEnabled) != 1)
      {
        break;
      }

      (v57)(v17, v103 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profileTimeout, v5);

      sub_1BB6BA744();
      v2 = v105;
      (v47)(v17, v5);
      (v47)(v67, v5);
      if (v2 <= 0.0)
      {

        goto LABEL_87;
      }

      v106 = *(v103 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKAccelerationLimiter_profile);

      v47 = v110;
      if (v106)
      {
        goto LABEL_88;
      }

      v31 = v127;
      if (*(v127 + 2) >= 2uLL)
      {
        v2 = *(v127 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_83;
      }

LABEL_98:
      __break(1u);
LABEL_99:
      v31 = sub_1BB6B0F28(v31);
      if (!*(v31 + 2))
      {
        goto LABEL_100;
      }
    }

    (v47)(v67, v5);
LABEL_87:
    v47 = v110;
    goto LABEL_88;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  v31 = sub_1BB6B0F28(v31);
LABEL_83:
  if (*(v31 + 2) < 2uLL)
  {
    __break(1u);
    goto LABEL_103;
  }

  *(v31 + 5) = v2 * 0.5;
  v127 = v31;
LABEL_88:
  *v47 = v127;
  return sub_1BB59822C(v112);
}

void sub_1BB5954E4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BB6BA7F4();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v53 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00]();
  v11 = &v53 - v10;
  v12 = type metadata accessor for DKCamera();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00]();
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
  if (*(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32))
  {
    goto LABEL_13;
  }

  v18 = v16[2];
  v17 = v16[3];
  v20 = *v16;
  v19 = v16[1];
  sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v11, &qword_1EBC5BCB0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BB598308(v11, &qword_1EBC5BCB0);
LABEL_13:
    *a2 = &unk_1F3A47C80;
    return;
  }

  sub_1BB5981C8(v11, v15);
  v21 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
  if (!v21)
  {
    goto LABEL_12;
  }

  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_1BB59822C(v15);
    goto LABEL_13;
  }

  if (!sub_1BB6BB564())
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = MEMORY[0x1BFB111F0](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v22 = *(v21 + 32);
  }

  sub_1BB5982A0(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, v9, &qword_1EBC5BCB8);

  v23 = type metadata accessor for DKMotion3();
  if ((*(*(v23 - 8) + 48))(v9, 1, v23))
  {
    sub_1BB598308(v9, &qword_1EBC5BCB8);
    goto LABEL_12;
  }

  v24 = *&v9[*(v23 + 24)];

  sub_1BB598308(v9, &qword_1EBC5BCB8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
  inited = swift_initStackObject();
  v55 = xmmword_1BB6BC7E0;
  *(inited + 16) = xmmword_1BB6BC7E0;
  v58.origin.x = v20;
  v58.origin.y = v19;
  v58.size.width = v18;
  v58.size.height = v17;
  MidX = CGRectGetMidX(v58);
  v27 = *(v15 + *(v12 + 32) + *(v23 + 20));
  if (!*(v27 + 16))
  {
    goto LABEL_48;
  }

    ;
  }

    ;
  }

  *(inited + 32) = i;
  v59.origin.x = v20;
  v59.origin.y = v19;
  v59.size.width = v18;
  v59.size.height = v17;
  MidY = CGRectGetMidY(v59);
  if (*(v27 + 16) < 2uLL)
  {
    goto LABEL_49;
  }

    ;
  }

    ;
  }

  v31 = -j;
  *(inited + 40) = -j;
  if (j < 0.0)
  {
    if (*(inited + 16) < 2uLL)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v32 = 1.0 - fabs(i) / v15[1];
    if (v32 < 0.0)
    {
      v32 = 0.0;
    }

    *(inited + 40) = v32 * v31;
  }

  v33 = swift_initStackObject();
  *(v33 + 16) = v55;
  v34 = v24[2];
  if (!v34)
  {
    goto LABEL_50;
  }

  v35 = v33;
  *(v33 + 32) = v24[4];
  if (v34 == 1)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v36 = v24[5];

  *(v35 + 40) = v36;
  *&v55 = v2;
  v37 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_pid);
  v38 = sub_1BB68F59C(inited, v35);

  swift_setDeallocating();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1BB6BC7F0;
  *(v39 + 48) = 0;
  v40 = *(v38 + 16);
  if (!v40)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v41 = v39;
  v42 = *(v38 + 32);
  *(v39 + 32) = v42;
  if (*v15 - 1 <= 1)
  {
    if (v40 == 1)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v43 = *(v38 + 40);

LABEL_37:
    *(v41 + 40) = v43;
    v45 = *(v15 + 1) == 1;
    v53 = inited;
    if (v45)
    {
      v42 = v42 * 1.5;
      *(v41 + 32) = v42;
    }

    v46 = v57;
    v47 = *(v57 + 16);
    v54 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
    v56 = v47;
    v47(v7, a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v5);

    v48 = sub_1BB5EF174(v7, v42);

    v49 = *(v46 + 8);
    v57 = v46 + 8;
    v49(v7, v5);
    v50 = *(v41 + 16);
    if (v50)
    {
      *(v41 + 32) = v48;
      if (v50 != 1)
      {
        v51 = *(v41 + 40);
        v56(v7, a1 + v54, v5);

        v52 = sub_1BB5EF174(v7, v51);

        v49(v7, v5);
        if (*(v41 + 16) >= 2uLL)
        {
          *(v41 + 40) = v52;
          sub_1BB59822C(v15);
          swift_setDeallocating();
          *a2 = v41;
          return;
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v40 != 1)
  {
    v44 = *(v38 + 40);

    v43 = -v44;
    goto LABEL_37;
  }

LABEL_58:
  __break(1u);
}

void sub_1BB595CAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00]();
  v2 = &v23 - v1;
  v3 = type metadata accessor for DKCamera();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v8 = (v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
  if ((*(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32) & 1) == 0)
  {
    v10 = v8[2];
    v9 = v8[3];
    v12 = *v8;
    v11 = v8[1];
    sub_1BB5982A0(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v2, &qword_1EBC5BCB0);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1BB598308(v2, &qword_1EBC5BCB0);
      return;
    }

    sub_1BB5981C8(v2, v6);
    v13 = *(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastCommand);
    if (!v13)
    {
      goto LABEL_17;
    }

    v14 = (v13 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
    v15 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16);
    if (v15 >= 0x4000)
    {
      goto LABEL_17;
    }

    v17 = *v14;
    v16 = v14[1];
    v18 = &v6[*(v3 + 32)];
    v19 = *&v18[*(type metadata accessor for DKMotion3() + 20)];
    if (*(v19 + 16))
    {
      v20 = *(v19 + 32);

      sub_1BB598288(v17, v16, v15);
      v24.origin.x = v12;
      v24.origin.y = v11;
      v24.size.width = v10;
      v24.size.height = v9;
      if (v20 > CGRectGetMidX(v24))
      {
        if (!*(v17 + 16))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        if (*(v17 + 32) > 0.0)
        {
          sub_1BB598294(v17, v16, v15);

LABEL_15:
          sub_1BB59822C(v6);
          return;
        }
      }

      if (*(v19 + 16))
      {
        v21 = *(v19 + 32);
        v25.origin.x = v12;
        v25.origin.y = v11;
        v25.size.width = v10;
        v25.size.height = v9;
        if (v21 < CGRectGetMidX(v25))
        {
          if (*(v17 + 16))
          {
            v22 = *(v17 + 32);

            sub_1BB598294(v17, v16, v15);
            if (v22 < 0.0)
            {
              goto LABEL_15;
            }

            goto LABEL_17;
          }

LABEL_22:
          __break(1u);
          return;
        }

        sub_1BB598294(v17, v16, v15);

LABEL_17:
        sub_1BB59822C(v6);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }
}

void sub_1BB595FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00]();
  v2 = &v28 - v1;
  v3 = type metadata accessor for DKCamera();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v8 = (v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
  if ((*(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32) & 1) == 0)
  {
    v10 = v8[2];
    v9 = v8[3];
    v12 = *v8;
    v11 = v8[1];
    sub_1BB5982A0(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v2, &qword_1EBC5BCB0);
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1BB598308(v2, &qword_1EBC5BCB0);
      return;
    }

    sub_1BB5981C8(v2, v6);
    v13 = *(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastCommand);
    if (!v13)
    {
      goto LABEL_27;
    }

    v14 = (v13 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command);
    v15 = *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command + 16);
    if (v15 >= 0x4000)
    {
      goto LABEL_27;
    }

    v17 = *v14;
    v16 = v14[1];
    v18 = *v6 - 1;
    v19 = &v6[*(v3 + 32)];
    v20 = *&v19[*(type metadata accessor for DKMotion3() + 20)];
    v21 = *(v20 + 16);
    if (v18 > 1)
    {
      if (v21 >= 2)
      {
        v25 = *(v20 + 40);

        sub_1BB598288(v17, v16, v15);
        v31.origin.x = v12;
        v31.origin.y = v11;
        v31.size.width = v10;
        v31.size.height = v9;
        if (v25 <= CGRectGetMidY(v31))
        {
          goto LABEL_21;
        }

        if (*(v17 + 16) < 2uLL)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (*(v17 + 40) <= 0.0)
        {
LABEL_21:
          if (*(v20 + 16) >= 2uLL)
          {
            v26 = *(v20 + 40);
            v32.origin.x = v12;
            v32.origin.y = v11;
            v32.size.width = v10;
            v32.size.height = v9;
            if (v26 < CGRectGetMidY(v32))
            {
              if (*(v17 + 16) < 2uLL)
              {
LABEL_36:
                __break(1u);
                return;
              }

              v27 = *(v17 + 40);

              sub_1BB598294(v17, v16, v15);
              if (v27 < 0.0)
              {
                goto LABEL_25;
              }

LABEL_27:
              sub_1BB59822C(v6);
              return;
            }

LABEL_26:
            sub_1BB598294(v17, v16, v15);

            goto LABEL_27;
          }

          goto LABEL_32;
        }

        goto LABEL_20;
      }
    }

    else
    {
      if (v21 >= 2)
      {
        v22 = *(v20 + 40);

        sub_1BB598288(v17, v16, v15);
        v29.origin.x = v12;
        v29.origin.y = v11;
        v29.size.width = v10;
        v29.size.height = v9;
        if (v22 <= CGRectGetMidY(v29))
        {
          goto LABEL_11;
        }

        if (*(v17 + 16) < 2uLL)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (*(v17 + 40) >= 0.0)
        {
LABEL_11:
          if (*(v20 + 16) >= 2uLL)
          {
            v23 = *(v20 + 40);
            v30.origin.x = v12;
            v30.origin.y = v11;
            v30.size.width = v10;
            v30.size.height = v9;
            if (v23 < CGRectGetMidY(v30))
            {
              if (*(v17 + 16) >= 2uLL)
              {
                v24 = *(v17 + 40);

                sub_1BB598294(v17, v16, v15);
                if (v24 <= 0.0)
                {
                  goto LABEL_27;
                }

LABEL_25:
                sub_1BB59822C(v6);
                return;
              }

              goto LABEL_35;
            }

            goto LABEL_26;
          }

          goto LABEL_31;
        }

LABEL_20:
        sub_1BB598294(v17, v16, v15);

        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_1BB596394()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideHorizontalTime, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideVerticalTime, v2);
}

uint64_t sub_1BB5964B4()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideHorizontalTime;
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_insideVerticalTime, v4);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideHorizontalTime, v4);
  v5(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKControlTask_outsideVerticalTime, v4);

  return v0;
}

uint64_t sub_1BB596630()
{
  sub_1BB5964B4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKControlTask()
{
  result = qword_1EBC5BB88;
  if (!qword_1EBC5BB88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB5966DC()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BB596804(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB596824(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 168) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DKPersonSelectionFilter.SelectionCriteria(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKPersonSelectionFilter.SelectionCriteria(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKControlTask.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKControlTask.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKControlTask.ControlMethod(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DKControlTask.ControlMethod(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DKBodyKeyPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DKBodyKeyPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BB596D28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB596D48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1BB596D94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB596DB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1BB596E18(char a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = sub_1BB5B0050(MEMORY[0x1E69E7CC0]);
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v3 + 16) = a1 & 1;
  v40 = *(a2 + 16);
  v6 = 0;
  v7 = 0;
  if (v40)
  {
    v8 = 0;
    v9 = (a2 + 34);
    v38 = v3;
    v39 = a2;
    while (v8 < *(a2 + 16))
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v41 = *v9;
      sub_1BB58C41C(v6);
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BB597740;
      *(v12 + 24) = 0;
      sub_1BB58C41C(v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v3 + 24);
      *(v3 + 24) = 0x8000000000000000;
      v16 = sub_1BB6A36B0(v10);
      v17 = *(v14 + 16);
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_20;
      }

      v20 = v15;
      if (*(v14 + 24) >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E971C();
        }
      }

      else
      {
        sub_1BB5E5A20(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_1BB6A36B0(v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v16 = v21;
      }

      *(v3 + 24) = v14;

      v24 = *(v3 + 24);
      if ((v20 & 1) == 0)
      {
        v25 = (*(v12 + 16))(v23);
        v24[(v16 >> 6) + 8] |= 1 << v16;
        *(v24[6] + v16) = v10;
        *(v24[7] + 8 * v16) = v25;
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v24[2] = v28;
      }

      v29 = v24[7];
      v30 = *(v29 + 8 * v16);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v16) = v30;
      v32 = v11;
      if ((v31 & 1) == 0)
      {
        v30 = sub_1BB59CF38(0, *(v30 + 2) + 1, 1, v30);
        *(v29 + 8 * v16) = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1BB59CF38((v33 > 1), v34 + 1, 1, v30);
        *(v29 + 8 * v16) = v30;
      }

      ++v8;
      *(v30 + 2) = v34 + 1;
      v35 = &v30[3 * v34];
      v35[32] = v10;
      v35[33] = v32;
      v35[34] = v41;
      v9 += 3;
      v7 = sub_1BB598A48;
      v6 = sub_1BB597740;
      a2 = v39;
      v3 = v38;
      if (v40 == v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1BB6BB874();
    __break(1u);
  }

  else
  {
LABEL_18:
    v36 = v6;

    sub_1BB58C41C(v36);
    sub_1BB58C41C(v7);
    return v3;
  }

  return result;
}

uint64_t sub_1BB597128(char a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = sub_1BB5B040C(MEMORY[0x1E69E7CC0]);
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v3 + 16) = a1;
  v40 = *(a2 + 16);
  v6 = 0;
  v7 = 0;
  if (v40)
  {
    v8 = 0;
    v9 = (a2 + 34);
    v38 = v3;
    v39 = a2;
    while (v8 < *(a2 + 16))
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v41 = *v9;
      sub_1BB58C41C(v6);
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BB597740;
      *(v12 + 24) = 0;
      sub_1BB58C41C(v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v3 + 24);
      *(v3 + 24) = 0x8000000000000000;
      v16 = sub_1BB6A36B4(v10);
      v17 = *(v14 + 16);
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_20;
      }

      v20 = v15;
      if (*(v14 + 24) >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E98A0();
        }
      }

      else
      {
        sub_1BB5E5CC8(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_1BB6A36B4(v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v16 = v21;
      }

      *(v3 + 24) = v14;

      v24 = *(v3 + 24);
      if ((v20 & 1) == 0)
      {
        v25 = (*(v12 + 16))(v23);
        v24[(v16 >> 6) + 8] |= 1 << v16;
        *(v24[6] + v16) = v10;
        *(v24[7] + 8 * v16) = v25;
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v24[2] = v28;
      }

      v29 = v24[7];
      v30 = *(v29 + 8 * v16);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v16) = v30;
      v32 = v11;
      if ((v31 & 1) == 0)
      {
        v30 = sub_1BB59D394(0, *(v30 + 2) + 1, 1, v30);
        *(v29 + 8 * v16) = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1BB59D394((v33 > 1), v34 + 1, 1, v30);
        *(v29 + 8 * v16) = v30;
      }

      ++v8;
      *(v30 + 2) = v34 + 1;
      v35 = &v30[3 * v34];
      v35[32] = v10;
      v35[33] = v32;
      v35[34] = v41;
      v9 += 3;
      v7 = sub_1BB5987D8;
      v6 = sub_1BB597740;
      a2 = v39;
      v3 = v38;
      if (v40 == v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1BB6BB874();
    __break(1u);
  }

  else
  {
LABEL_18:
    v36 = v6;

    sub_1BB58C41C(v36);
    sub_1BB58C41C(v7);
    return v3;
  }

  return result;
}

uint64_t sub_1BB597434(char a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 24) = sub_1BB5B0434(MEMORY[0x1E69E7CC0]);
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v3 + 16) = a1;
  v40 = *(a2 + 16);
  v6 = 0;
  v7 = 0;
  if (v40)
  {
    v8 = 0;
    v9 = (a2 + 34);
    v38 = v3;
    v39 = a2;
    while (v8 < *(a2 + 16))
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v41 = *v9;
      sub_1BB58C41C(v6);
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1BB597740;
      *(v12 + 24) = 0;
      sub_1BB58C41C(v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *(v3 + 24);
      *(v3 + 24) = 0x8000000000000000;
      v16 = sub_1BB6A36B4(v10);
      v17 = *(v14 + 16);
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_20;
      }

      v20 = v15;
      if (*(v14 + 24) >= v19)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BB5E98B4();
        }
      }

      else
      {
        sub_1BB5E5CDC(v19, isUniquelyReferenced_nonNull_native);
        v21 = sub_1BB6A36B4(v10);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_22;
        }

        v16 = v21;
      }

      *(v3 + 24) = v14;

      v24 = *(v3 + 24);
      if ((v20 & 1) == 0)
      {
        v25 = (*(v12 + 16))(v23);
        v24[(v16 >> 6) + 8] |= 1 << v16;
        *(v24[6] + v16) = v10;
        *(v24[7] + 8 * v16) = v25;
        v26 = v24[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_21;
        }

        v24[2] = v28;
      }

      v29 = v24[7];
      v30 = *(v29 + 8 * v16);
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v16) = v30;
      v32 = v11;
      if ((v31 & 1) == 0)
      {
        v30 = sub_1BB59D3A8(0, *(v30 + 2) + 1, 1, v30);
        *(v29 + 8 * v16) = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1BB59D3A8((v33 > 1), v34 + 1, 1, v30);
        *(v29 + 8 * v16) = v30;
      }

      ++v8;
      *(v30 + 2) = v34 + 1;
      v35 = &v30[3 * v34];
      v35[32] = v10;
      v35[33] = v32;
      v35[34] = v41;
      v9 += 3;
      v7 = sub_1BB598A48;
      v6 = sub_1BB597740;
      a2 = v39;
      v3 = v38;
      if (v40 == v8)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1BB6BB874();
    __break(1u);
  }

  else
  {
LABEL_18:
    v36 = v6;

    sub_1BB58C41C(v36);
    sub_1BB58C41C(v7);
    return v3;
  }

  return result;
}

uint64_t sub_1BB59781C()
{
  swift_getWitnessTable();

  return sub_1BB6BA8B4();
}

uint64_t sub_1BB597888(uint64_t a1, id *a2)
{
  result = sub_1BB6BAC14();
  *a2 = 0;
  return result;
}

uint64_t sub_1BB597900(uint64_t a1, id *a2)
{
  v3 = sub_1BB6BAC24();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1BB597980@<X0>(uint64_t *a1@<X8>)
{
  sub_1BB6BAC34();
  v2 = sub_1BB6BAC04();

  *a1 = v2;
  return result;
}

_DWORD *sub_1BB5979C4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_1BB5979E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1BB5979F0()
{
  swift_getWitnessTable();

  return sub_1BB6BA8B4();
}

uint64_t sub_1BB597B18()
{
  sub_1BB6BB924();
  swift_getWitnessTable();
  sub_1BB6BA8C4();
  return sub_1BB6BB964();
}

uint64_t sub_1BB597B7C(uint64_t a1)
{
  v2 = sub_1BB597DCC(&qword_1EBC5BD20, type metadata accessor for VNImageOption);
  v3 = sub_1BB597DCC(&qword_1EBC5BD28, type metadata accessor for VNImageOption);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BB597C38@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BB6BAC04();

  *a1 = v2;
  return result;
}

uint64_t sub_1BB597C80(uint64_t a1)
{
  v2 = sub_1BB597DCC(&qword_1EBC5BCA0, type metadata accessor for AVVideoCodecType);
  v3 = sub_1BB597DCC(&qword_1EBC5BCA8, type metadata accessor for AVVideoCodecType);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1BB597DCC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB597E14()
{
  v0 = sub_1BB6BAC34();
  v1 = MEMORY[0x1BFB10BC0](v0);

  return v1;
}

uint64_t sub_1BB597E50()
{
  sub_1BB6BAC34();
  sub_1BB6BACC4();
}

uint64_t sub_1BB597EA4()
{
  sub_1BB6BAC34();
  sub_1BB6BB924();
  sub_1BB6BACC4();
  v0 = sub_1BB6BB964();

  return v0;
}

uint64_t sub_1BB597F18()
{
  v0 = sub_1BB6BAC34();
  v2 = v1;
  if (v0 == sub_1BB6BAC34() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1BB6BB7E4();
  }

  return v5 & 1;
}

unint64_t sub_1BB597FEC()
{
  result = qword_1EBC5BC78;
  if (!qword_1EBC5BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5BC78);
  }

  return result;
}

unint64_t sub_1BB598044()
{
  result = qword_1EBC5BC80;
  if (!qword_1EBC5BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5BC80);
  }

  return result;
}

unint64_t sub_1BB59809C()
{
  result = qword_1EBC5BC88;
  if (!qword_1EBC5BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5BC88);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BB5981C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKCamera();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB59822C(uint64_t a1)
{
  v2 = type metadata accessor for DKCamera();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB598288(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x8000) == 0)
  {
  }

  return result;
}

uint64_t sub_1BB598294(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x8000) == 0)
  {
  }

  return result;
}

uint64_t sub_1BB5982A0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB598308(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BB598368(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00]();
  v3 = &v16 - v2;
  v4 = type metadata accessor for DKCamera();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
  if ((*(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32) & 1) == 0)
  {
    v10 = v8[2];
    v9 = v8[3];
    v12 = *v8;
    v11 = v8[1];
    sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v3, &qword_1EBC5BCB0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1BB598308(v3, &qword_1EBC5BCB0);
      return;
    }

    sub_1BB5981C8(v3, v7);
    v13 = &v7[*(v4 + 32)];
    v14 = *&v13[*(type metadata accessor for DKMotion3() + 20)];
    if (*(v14 + 16))
    {
      v15 = *(v14 + 32);
      v17.origin.x = v12;
      v17.origin.y = v11;
      v17.size.width = v10;
      v17.size.height = v9;
      if (CGRectGetMinX(v17) >= v15)
      {
LABEL_8:
        sub_1BB59822C(v7);
        return;
      }

      if (*(v14 + 16))
      {
        v18.origin.x = v12;
        v18.origin.y = v11;
        v18.size.width = v10;
        v18.size.height = v9;
        CGRectGetMaxX(v18);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1BB59859C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00]();
  v3 = &v16 - v2;
  v4 = type metadata accessor for DKCamera();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D);
  if ((*(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D + 32) & 1) == 0)
  {
    v10 = v8[2];
    v9 = v8[3];
    v12 = *v8;
    v11 = v8[1];
    sub_1BB5982A0(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v3, &qword_1EBC5BCB0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1BB598308(v3, &qword_1EBC5BCB0);
      return;
    }

    sub_1BB5981C8(v3, v7);
    v13 = &v7[*(v4 + 32)];
    v14 = *&v13[*(type metadata accessor for DKMotion3() + 20)];
    if (*(v14 + 16) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v14 + 40);
      v17.origin.x = v12;
      v17.origin.y = v11;
      v17.size.width = v10;
      v17.size.height = v9;
      if (CGRectGetMinY(v17) >= v15)
      {
LABEL_8:
        sub_1BB59822C(v7);
        return;
      }

      if (*(v14 + 16) >= 2uLL)
      {
        v18.origin.x = v12;
        v18.origin.y = v11;
        v18.size.width = v10;
        v18.size.height = v9;
        CGRectGetMaxY(v18);
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BB5987D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_1BB59886C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t DKConstantAccelerationFilter.Measurement.__allocating_init(time:)(char *a1)
{
  v2 = swift_allocObject();
  DKConstantAccelerationFilter.Measurement.init(time:)(a1);
  return v2;
}

uint64_t DKConstantAccelerationFilter.Measurement.init(time:)(char *a1)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6, a1, v3);
  *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_updateIndices) = MEMORY[0x1E69E7CD0];
  v7((v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time), v6, v3);
  v8 = sub_1BB6BAE94();
  v8[2] = 3;
  v8[5] = 0;
  v8[6] = 0;
  v8[4] = 0;
  *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_measurement) = v8;
  v9 = sub_1BB6BAE94();
  v9[2] = 3;
  v9[5] = 0;
  v9[6] = 0;
  v9[4] = 0;
  v10 = *(v4 + 8);
  v10(a1, v3);
  v10(v6, v3);
  *(v1 + OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_covariance) = v9;
  return v1;
}

uint64_t sub_1BB598C44(unsigned __int8 *a1, double a2, double a3)
{
  sub_1BB69DF38(*a1, a2, a3);
}

uint64_t DKConstantAccelerationFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKConstantAccelerationFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKConstantAccelerationFilter::Index_optional __swiftcall DKConstantAccelerationFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1BB598E84(uint64_t a1)
{
  sub_1BB59A300(a1);
}

uint64_t sub_1BB598EAC(unsigned __int8 *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v6 + 56);
  *(v6 + 56) = 0x8000000000000000;
  sub_1BB599640(a2, a3 & 1, a4, a5 & 1, v11, isUniquelyReferenced_nonNull_native);
  *(v6 + 56) = v14;
}

uint64_t DKConstantAccelerationFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKConstantAccelerationFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DKConstantAccelerationFilter.__allocating_init(configuration:)(uint64_t a1)
{
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = a1;

  DKKalmanFilter.init(configuration:stateSize:)(v1, 3);
}

void DKConstantAccelerationFilter.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration) = a1;

  DKKalmanFilter.init(configuration:stateSize:)(v2, 3);
}

unsigned __int8 *sub_1BB599088(unsigned __int8 *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  if (*(v2 + 16) <= *result || *(v2 + 24) < 1)
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB59911C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v4, v6);
  sub_1BB6BA744();
  v11 = v10;
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F;
  v14 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v15 = v14[2];
  if (v15 < 1)
  {
    goto LABEL_29;
  }

  v16 = v14[3];
  if (v16 <= 1)
  {
    goto LABEL_29;
  }

  v17 = v14[4];
  *(v17 + 8 * v15) = v11;
  if (v16 == 2)
  {
    goto LABEL_29;
  }

  if (v15 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v17 + 16 * v15) = v11 * (v11 * 0.5);
  if (v15 == 1)
  {
    goto LABEL_29;
  }

  *(v17 + 16 * v15 + 8) = v11;
  (v9)(v8, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastUpdateTime, v4);
  sub_1BB6BA744();
  v19 = v18;
  v12(v8, v4);
  v20 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKConstantAccelerationFilter_caConfiguration);
  if (*(v20 + 72) >= v19)
  {
    v30 = *(v2 + v13);
    v31 = v30[2];
    if (v31 < 3)
    {
      goto LABEL_29;
    }

    v32 = v30[3];
    if (v32 <= 1)
    {
      goto LABEL_29;
    }

    if (!__OFADD__(v31, 2))
    {
      v25 = v30[4];
      *(v25 + 8 * (v31 + 2)) = 0;
      if (v32 != 2)
      {
        if (v31 + 0x4000000000000000 >= 0)
        {
          v33 = 2 * v31;
          v27 = __OFADD__(v33, 2);
          v28 = v33 + 2;
          if (!v27)
          {
            v29 = 1.0;
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        goto LABEL_26;
      }

      goto LABEL_29;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = *(v2 + v13);
  v22 = v21[2];
  if (v22 < 3)
  {
    goto LABEL_29;
  }

  v23 = v21[3];
  if (v23 <= 1)
  {
    goto LABEL_29;
  }

  if (__OFADD__(v22, 2))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = *(v20 + 80);
  v25 = v21[4];
  *(v25 + 8 * (v22 + 2)) = v24;
  if (v23 != 2)
  {
    if (v22 + 0x4000000000000000 >= 0)
    {
      v26 = 2 * v22;
      v27 = __OFADD__(v26, 2);
      v28 = v26 + 2;
      if (!v27)
      {
        v29 = 0.0;
LABEL_21:
        *(v25 + 8 * v28) = v29;
        return sub_1BB69E74C(a1);
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_29:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t DKConstantAccelerationFilter.deinit()
{
  v0 = DKKalmanFilter.deinit();

  return v0;
}

uint64_t DKConstantAccelerationFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB599500(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 <= result || (a2 | result) < 0 || *(v2 + 24) <= a2)
  {
    goto LABEL_9;
  }

  if ((a2 * v3) >> 64 != (a2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFADD__(a2 * v3, result))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    result = sub_1BB6BB524();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB5995A0(uint64_t result, uint64_t a2, double a3)
{
  v4 = v3[2];
  if (v4 > result && ((a2 | result) & 0x8000000000000000) == 0 && v3[3] > a2)
  {
    v5 = a2 * v4;
    if ((a2 * v4) >> 64 == (a2 * v4) >> 63)
    {
      if (!__OFADD__(v5, result))
      {
        *(v3[4] + 8 * (v5 + result)) = a3;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

unint64_t sub_1BB599640(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  result = sub_1BB6A1004(a5);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v14[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = result;
      sub_1BB5E9730();
      result = v23;
      goto LABEL_8;
    }

    sub_1BB5E5A34(v20, a6 & 1);
    result = sub_1BB6A1004(a5);
    if ((v21 & 1) != (v24 & 1))
    {
LABEL_14:
      result = sub_1BB6BB874();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 32 * result;
    *v26 = a1;
    *(v26 + 8) = a2 & 1;
    *(v26 + 16) = a3;
    *(v26 + 24) = a4 & 1;
  }

  else
  {

    return sub_1BB5E92F4(result, a5, a1, a2 & 1, a3, a4 & 1, v25);
  }

  return result;
}

uint64_t sub_1BB5997A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BB6A1288(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for DKPersonGroupFilter.StampedPerson(0);
      return sub_1BB59A8F8(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for DKPersonGroupFilter.StampedPerson);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BB5E9F9C();
    goto LABEL_7;
  }

  sub_1BB5E6868(v17, a3 & 1);
  v24 = sub_1BB6A1288(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1BB5E940C(v14, v11, a1, v20);
}

uint64_t sub_1BB59997C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BB6A1288(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for DKPersonGroup(0);
      return sub_1BB59A8F8(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for DKPersonGroup);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1BB5E9F60();
    goto LABEL_7;
  }

  sub_1BB5E682C(v17, a3 & 1);
  v24 = sub_1BB6A1288(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1BB5E93E0(v14, v11, a1, v20);
}

uint64_t sub_1BB599B50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BB6A1320(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BB5EA2F0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BB5E6D1C(v14, a3 & 1);
    v9 = sub_1BB6A1320(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE28);
      result = sub_1BB6BB874();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1BB5E952C(v9, a2, a1, v19);
  }
}

uint64_t sub_1BB599C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BB6A10FC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BB5EA9AC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BB5E78E8(v16, a4 & 1);
    v11 = sub_1BB6A10FC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BB6BB874();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1BB5E9570(v11, a2, a3, a1, v21);
}

uint64_t sub_1BB599DCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BB6A1004(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BB5EAB18();
      goto LABEL_7;
    }

    sub_1BB5E7B8C(v13, a3 & 1);
    v24 = sub_1BB6A1004(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1BB6BA7F4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1BB5E95B8(v10, a2, a1, v16);
}

unint64_t sub_1BB599F34(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1BB6A1004(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1BB5EB190();
      result = v17;
      goto LABEL_8;
    }

    sub_1BB5E8568(v14, a3 & 1);
    result = sub_1BB6A1004(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1BB6BB874();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
  }

  else
  {

    return sub_1BB5E952C(result, a2, a1, v19);
  }

  return result;
}

unint64_t sub_1BB59A040(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BB6A1004(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BB5EB59C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BB5E8CC0(v14, a3 & 1);
    v9 = sub_1BB6A1004(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1BB6BB874();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_1BB5E952C(v9, a2, a1, v19);
  }
}

uint64_t sub_1BB59A164(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1BB6BA844();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1BB6A1288(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_1BB5EB6F8();
    goto LABEL_7;
  }

  sub_1BB5E8F30(result, a3 & 1);
  result = sub_1BB6A1288(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1BB6BB874();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_1BB5E9664(v14, v11, a1, v20);
}

uint64_t sub_1BB59A300(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1BB5E5780(0, v2, 0);
    v4 = v13;
    v5 = (a1 + 32);
    v6 = *(v13 + 16);
    do
    {
      v8 = *v5++;
      v7 = v8;
      v13 = v4;
      v9 = *(v4 + 24);
      v10 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        sub_1BB5E5780((v9 > 1), v6 + 1, 1);
        v4 = v13;
      }

      *(v4 + 16) = v10;
      *(v4 + 8 * v6++ + 32) = v7;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v11 = 32;
  do
  {
    sub_1BB5ACCEC(&v13, *(v4 + v11));
    v11 += 8;
    --v10;
  }

  while (v10);
LABEL_10:

  return v1;
}

unint64_t sub_1BB59A40C()
{
  result = qword_1EBC5BDF0;
  if (!qword_1EBC5BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5BDF0);
  }

  return result;
}

unint64_t sub_1BB59A464()
{
  result = qword_1EBC5BDF8;
  if (!qword_1EBC5BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5BE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5BDF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BB59A684(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB59A8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BB59A988(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t DKMatrix.__allocating_init(rows:columns:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  DKMatrix.init(rows:columns:)(a1, a2);
  return v4;
}

uint64_t DKMatrix.init(rows:columns:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  result = a1 * a2;
  if ((a1 * a2) >> 64 == result >> 63)
  {
    v2[4] = sub_1BB6BB1B4();
    v2[5] = v5;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DKMatrix.__allocating_init(repeating:rows:columns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = sub_1BB59F4EC(a1, a2, a3);
  (*(*(*(v4 + 80) - 8) + 8))(a1);
  return v8;
}

uint64_t DKMatrix.init(repeating:rows:columns:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = sub_1BB59F4EC(a1, a2, a3);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v6;
}

uint64_t DKMatrix.__allocating_init(rows:columns:array:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  DKMatrix.init(rows:columns:array:)(a1, a2, a3);
  return v6;
}

uint64_t *DKMatrix.init(rows:columns:array:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  v4[2] = a1;
  v4[3] = a2;
  if ((a1 * a2) >> 64 != (a1 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3;
  v3 = *(v6 + 80);
  v4[4] = sub_1BB6BB1B4();
  v4[5] = v7;
  if (sub_1BB6BB1A4())
  {

    if ((_swift_isClassOrObjCExistentialType() & 1) == 0 || (v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {

      _swift_isClassOrObjCExistentialType();
      goto LABEL_8;
    }

LABEL_16:
    if (sub_1BB6BAEC4())
    {
      sub_1BB6BB394();
      swift_getWitnessTable();
      sub_1BB6BB464();
      v9 = swift_unknownObjectRetain();
      MEMORY[0x1BFB115E0](v9, v3);

LABEL_13:
      sub_1BB6BB174();
      swift_unknownObjectRelease();
      return v4;
    }

LABEL_8:
    if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v5 < 0 || (v5 & 0x4000000000000000) != 0))
    {
      swift_unknownObjectRetain();
    }

    else
    {
      _swift_isClassOrObjCExistentialType();
    }

    goto LABEL_13;
  }

  return v4;
}

uint64_t DKMatrix.__allocating_init(rows:columns:buffer:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1BB59F5FC(a1, a2);
  sub_1BB59F668(a3, a4);
  return v6;
}

uint64_t DKMatrix.init(rows:columns:buffer:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1BB59F560(a1, a2);
  sub_1BB59F668(a3, a4);
  return v6;
}

uint64_t DKMatrix.__deallocating_deinit()
{
  sub_1BB6BB194();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB59AF44(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v8 - v1;
  v4 = *v3;
  v5 = v3[1];
  (*(v6 + 16))(&v8 - v1);
  return sub_1BB59B120(v2, v4, v5);
}

uint64_t sub_1BB59B01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3[2];
  if (v4 <= a1 || (a2 | a1) < 0 || v3[3] <= a2)
  {
    goto LABEL_11;
  }

  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(v5, a1))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    result = sub_1BB6BB524();
    __break(1u);
    return result;
  }

  v6 = *(*(*v3 + 80) - 8);
  v7 = *(v6 + 16);
  v8 = v3[4] + *(v6 + 72) * (v5 + a1);

  return v7(a3, v8);
}

uint64_t sub_1BB59B120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  if (v4 <= a2 || (a3 | a2) < 0 || v3[3] <= a3)
  {
    goto LABEL_11;
  }

  v5 = a3 * v4;
  if ((a3 * v4) >> 64 != (a3 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (__OFADD__(v5, a2))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    result = sub_1BB6BB524();
    __break(1u);
    return result;
  }

  v7 = *(*(*v3 + 80) - 8);
  v8 = *(v7 + 40);
  v9 = v3[4] + *(v7 + 72) * (v5 + a2);

  return v8(v9, a1);
}

void (*sub_1BB59B228(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*v3 + 80);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[6] = v13;
  sub_1BB59B01C(a2, a3, v13);
  return sub_1BB59B358;
}

void sub_1BB59B358(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[1];
    v8 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1BB59B120(v3, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1BB59B120((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

void static DKMatrix.* infix(_:_:)()
{
  sub_1BB6BB524();
  __break(1u);
}

{
  sub_1BB6BB524();
  __break(1u);
}

uint64_t sub_1BB59B6A8()
{
  type metadata accessor for DKMatrix();

  v1 = sub_1BB59F7D0(v0);

  return v1;
}

BOOL sub_1BB59B71C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16) <= a1)
  {
    return 0;
  }

  v3 = *(v2 + 24);
  if ((a2 | a1) >= 0)
  {
    v6 = __OFSUB__(v3, a2);
    v4 = v3 == a2;
    v5 = v3 - a2 < 0;
  }

  else
  {
    v6 = 0;
    v4 = 1;
    v5 = 0;
  }

  return !(v5 ^ v6 | v4);
}

uint64_t static DKMatrix.zeros(rows:columns:)(uint64_t result, uint64_t a2)
{
  v3 = result * a2;
  if ((result * a2) >> 64 == (result * a2) >> 63)
  {
    v4 = result;
    v5 = *(*(*(v2 + 80) - 8) + 64);
    result = v3 * v5;
    if ((v3 * v5) >> 64 == (v3 * v5) >> 63)
    {
      v7 = sub_1BB6A2DC4(result);
      v9 = v8;
      type metadata accessor for DKMatrix();
      v10 = sub_1BB59F5FC(v4, a2);
      sub_1BB59F668(v7, v9);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static DKMatrix.ones(rows:columns:)(uint64_t result, uint64_t a2)
{
  v3 = result * a2;
  if ((result * a2) >> 64 == (result * a2) >> 63)
  {
    v4 = result;
    v5 = *(*(*(v2 + 80) - 8) + 64);
    result = v3 * v5;
    if ((v3 * v5) >> 64 == (v3 * v5) >> 63)
    {
      v9 = sub_1BB6A2DC4(result);
      v10 = v7;
      MEMORY[0x1EEE9AC00](v9);
      sub_1BB59E700(sub_1BB59F814);
      type metadata accessor for DKMatrix();
      sub_1BB59F834(v9, v10);
      v8 = sub_1BB59F5FC(v4, a2);
      sub_1BB59F668(v9, v10);
      sub_1BB59F668(v9, v10);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB59B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v23 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(*(*(*(v12 + 16) + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  if (a1)
  {
    v15 = *(v10 + 72);
    if (!v15)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (a2 - a1 == 0x8000000000000000 && v15 == -1)
    {
      goto LABEL_19;
    }
  }

  result = sub_1BB6BB1A4();
  v22 = result;
  if (!result)
  {
    return result;
  }

  v16 = a3 * a4;
  if ((a3 * a4) >> 64 != (a3 * a4) >> 63)
  {
    goto LABEL_16;
  }

  v17 = v16 - 1;
  if (__OFSUB__(v16, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v17 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v21[1] = swift_getAssociatedConformanceWitness();
  v18 = 0;
  v19 = v23;
  while (1)
  {
    sub_1BB6BB824();
    sub_1BB6BB7D4();
    result = (*(v10 + 40))(v22 + *(v10 + 72) * v18, v19, a5);
    if (v17 == v18)
    {
      break;
    }

    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t static DKMatrix.identity(_:)(uint64_t result)
{
  v2 = result * result;
  if ((result * result) >> 64 == (result * result) >> 63)
  {
    v3 = result;
    v4 = *(*(*(v1 + 80) - 8) + 64);
    result = v2 * v4;
    if ((v2 * v4) >> 64 == (v2 * v4) >> 63)
    {
      v7 = sub_1BB6A2DC4(result);
      v8 = v5;
      MEMORY[0x1EEE9AC00](v7);
      sub_1BB59E700(sub_1BB59F888);
      type metadata accessor for DKMatrix();
      sub_1BB59F834(v7, v8);
      v6 = sub_1BB59F5FC(v3, v3);
      sub_1BB59F668(v7, v8);
      sub_1BB59F668(v7, v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB59BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(*(*(*(v11 + 16) + 16) + 8) + 16);
  swift_getAssociatedTypeWitness();
  result = MEMORY[0x1EEE9AC00](a1);
  if (result)
  {
    v13 = *(v8 + 72);
    if (!v13)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (a2 - result == 0x8000000000000000 && v13 == -1)
    {
      goto LABEL_24;
    }
  }

  result = sub_1BB6BB1A4();
  if (!result)
  {
    return result;
  }

  v14 = a3 * a3;
  if ((a3 * a3) >> 64 != (a3 * a3) >> 63)
  {
    goto LABEL_21;
  }

  v15 = __OFADD__(a3, 1);
  v16 = a3 + 1;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v16)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  v17 = v14 >= 0;
  v24 = v14;
  v25 = v8;
  if (v16 > 0)
  {
    v17 = v14 < 1;
  }

  if (!v17)
  {
    v18 = result;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v20 = 0;
    v23[2] = v25 + 40;
    v23[3] = AssociatedConformanceWitness;
    do
    {
      if (__OFADD__(v20, v16))
      {
        v21 = ((v20 + v16) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v21 = v20 + v16;
      }

      sub_1BB6BB824();
      sub_1BB6BB7D4();
      result = (*(v25 + 40))(v18 + *(v25 + 72) * v20, v10, a4);
      v22 = v24 >= v21;
      if (v16 > 0)
      {
        v22 = v21 >= v24;
      }

      v20 = v21;
    }

    while (!v22);
  }

  return result;
}

uint64_t static DKMatrix.diagonal(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 16);
  result = static DKMatrix.zeros(rows:columns:)(v4, v4);
  v6 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = 0;
  while (1)
  {
    sub_1BB59B01C(v8, 0, v3);
    sub_1BB59B120(v3, v8, v8);
    if (v6 == v8)
    {
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return v7;
    }
  }

  return v7;
}

uint64_t sub_1BB59C058(uint64_t result)
{
  v2 = v1[2];
  if (__OFSUB__(v2, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 - 1 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v3 = v1[3];
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = result;
    v6 = 0;
    v7 = *(*v1 + 80);
    v8 = *(v7 - 8);
    v9 = *(v8 + 24);
    v10 = *(v8 + 72);
    while (1)
    {
      result = v9(v1[4] + v10 * v6, v5, v7);
      if (v4)
      {
        break;
      }

LABEL_11:
      if (v6 == v2 - 1)
      {
        return result;
      }

      v13 = __OFADD__(v6++, 1);
      v4 = v3 - 1;
      if (v13)
      {
        __break(1u);
        return result;
      }
    }

    v11 = 1;
    while (1)
    {
      v12 = v11 * v2;
      if ((v11 * v2) >> 64 != (v11 * v2) >> 63)
      {
        break;
      }

      v13 = __OFADD__(v12, v6);
      v14 = v12 + v6;
      if (v13)
      {
        goto LABEL_17;
      }

      result = v9(v1[4] + v14 * v10, v5, v7);
      if (v3 == ++v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BB59C1A8(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - v5;
  type metadata accessor for DKMatrix();
  v8 = v1[2];
  v7 = v1[3];
  v9 = swift_allocObject();
  result = DKMatrix.init(rows:columns:)(v7, v8);
  v17 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
    goto LABEL_20;
  }

  v11 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v11 | v17) < 0)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v12 = 0;
  v16 = v8;
  while (2)
  {
    v13 = v12 * v8;
    if ((v12 * v8) >> 64 != (v12 * v8) >> 63)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v14 = 0;
    while (1)
    {
      if (__OFADD__(v13, v14))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      (*(v4 + 16))(v6, v2[4] + *(v4 + 72) * (v13 + v14), v3);
      result = sub_1BB59B120(v6, v12, v14);
      if (v11 == v14)
      {
        break;
      }

      v15 = __OFADD__(v14++, 1);
      if (v15)
      {
        goto LABEL_18;
      }
    }

    if (v12 != v17)
    {
      v15 = __OFADD__(v12++, 1);
      v8 = v16;
      if (!v15)
      {
        continue;
      }

      __break(1u);
    }

    return v9;
  }
}

uint64_t DKMatrix<>.inverse()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  swift_allocObject();

  v2 = sub_1BB59F300(v1);

  if (!v2[4])
  {
    result = sub_1BB6BB524();
    __break(1u);
    return result;
  }

  v3 = *(v0 + 16);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (v3 < 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = sub_1BB6BAE94();
    *(v4 + 16) = v3;
    bzero((v4 + 32), 4 * v3);
    v5 = sub_1BB6BAE94();
    *(v5 + 16) = v3;
    bzero((v5 + 32), 8 * v3);
  }

  dgetrf_NEWLAPACK();

  dgetri_NEWLAPACK();

  swift_bridgeObjectRelease_n();
  return v2;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5BE38);
  swift_allocObject();

  v2 = sub_1BB59F8A8(v1);

  if (!v2[4])
  {
    result = sub_1BB6BB524();
    __break(1u);
    return result;
  }

  v3 = *(v0 + 16);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  if (v3 < 0)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = sub_1BB6BAE94();
    *(v4 + 16) = v3;
    bzero((v4 + 32), 4 * v3);
    v5 = sub_1BB6BAE94();
    *(v5 + 16) = v3;
    bzero((v5 + 32), 4 * v3);
  }

  sgetrf_NEWLAPACK();

  sgetri_NEWLAPACK();

  swift_bridgeObjectRelease_n();
  return v2;
}

uint64_t DKMatrix<>.transpose()()
{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v2;
  v4 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v4 - 0x1000000000000000) >> 61 != 7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = swift_slowAlloc();
  *(v5 + 32) = v6;
  *(v5 + 40) = v4;
  result = v0[4];
  if (!result)
  {
    return v5;
  }

  if (((v2 | v1) & 0x8000000000000000) == 0)
  {
    vDSP_mtransD(result, 1, v6, 1, v2, v1);
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

{
  v2 = v0[2];
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5BE38);
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v2;
  v4 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v4 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = swift_slowAlloc();
  *(v5 + 32) = v6;
  *(v5 + 40) = v4;
  result = v0[4];
  if (!result)
  {
    return v5;
  }

  if (((v2 | v1) & 0x8000000000000000) == 0)
  {
    vDSP_mtrans(result, 1, v6, 1, v2, v1);
    return v5;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t DKMatrix<>.dot(matrix:)(uint64_t a1)
{
  if (!*(v1 + 32) || !*(a1 + 32))
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 16);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    sub_1BB6BB524();
    __break(1u);
    return MEMORY[0x1EEDB0D48]();
  }

  return MEMORY[0x1EEDB0D48]();
}

{
  if (!*(v1 + 32) || !*(a1 + 32))
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 16);
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    sub_1BB6BB524();
    __break(1u);
    return MEMORY[0x1EEDB0E58]();
  }

  return MEMORY[0x1EEDB0E58]();
}

void DKMatrix<>.fill(repeating:)(double a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = a1;
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = v3 * v4;
    if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        vDSP_vfillD(v6, v2, 1, v5);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static DKMatrix<>.* infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5BE38);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = v6;
  v6[4] = swift_slowAlloc();
  v8[5] = v7;
  if (!a1[4] || !a2[4])
  {
    goto LABEL_23;
  }

  if (v4 > 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  if (v4 < 0xFFFFFFFF80000000 || v5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_17;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = a1[3];
  if (v9 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 > 0x7FFFFFFF)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = a2[2];
  if (v10 >= 0xFFFFFFFF80000000)
  {
    if (v10 <= 0x7FFFFFFF)
    {
      cblas_sgemm_NEWLAPACK();
      return v8;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t static DKMatrix<>.+ infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5BE38);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v6;
  v6[4] = swift_slowAlloc();
  v8[5] = v7;
  if (!a1[4] || !*(a2 + 32))
  {
    goto LABEL_12;
  }

  v9 = a1[3];
  if ((v4 * v9) >> 64 == (v4 * v9) >> 63)
  {
    if (((v4 * v9) & 0x8000000000000000) == 0)
    {
      MEMORY[0x1BFB123D0]();
      return v8;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t static DKMatrix<>.- infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5BE38);
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v5;
  v7 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v6;
  v6[4] = swift_slowAlloc();
  v8[5] = v7;
  if (!a1[4] || !*(a2 + 32))
  {
    goto LABEL_12;
  }

  v9 = a1[3];
  if ((v4 * v9) >> 64 == (v4 * v9) >> 63)
  {
    if (((v4 * v9) & 0x8000000000000000) == 0)
    {
      MEMORY[0x1BFB12450]();
      return v8;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
LABEL_12:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

void DKMatrix<>.fill(repeating:)(float a1)
{
  v7 = *MEMORY[0x1E69E9840];
  __A = a1;
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[2];
    v4 = v1[3];
    v5 = v3 * v4;
    if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        vDSP_vfill(&__A, v2, 1, v5);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

char *sub_1BB59CF38(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BFE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 3 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1BB59D03C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1BB59D140(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BED0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1BB59D244(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1BB59D3BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 3 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

size_t sub_1BB59D598(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF50);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF58) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF58) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1BB59D7FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BB59D930(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 24 * v9);
  }

  return v11;
}

char *sub_1BB59DA68(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}