void *uarpPlatformCreateRxAsset(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  if (UARPLayer2RequestBuffer(a1, &v5, 0x2D8uLL, 52428, 1213))
  {
    return 0;
  }

  result = v5;
  if (v5)
  {
    v5[87] = a2;
    *(result + 76) = 0;
    result[89] = *(a1 + 632);
    *(a1 + 632) = result;
  }

  return result;
}

BOOL uarpPlatformCompareHash(uint64_t a1, void *__s1, size_t __n, void *__s2, int a5)
{
  if (!*(a1 + 416))
  {
    return 1;
  }

  if (__n == a5)
  {
    return memcmp(__s1, __s2, __n) == 0;
  }

  return 0;
}

uint64_t UARPPlatformDownstreamEndpointByID(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*i)
        {
          if (*(result + 160) == a2 && *(result + 120) == a3)
          {
            break;
          }
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t UARPPlatformDownstreamEndpointByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 620);
    if (v5)
    {
      for (i = *(a1 + 624); ; ++i)
      {
        result = *i;
        if (*(*i + 160) == a2 && *(result + 40) == a3)
        {
          break;
        }

        if (!--v5)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointAddEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 620);
  if (v4)
  {
    v5 = *(a1 + 624);
    v6 = *(a1 + 620);
    while (*v5)
    {
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *v5 = a2;
  }

  else
  {
LABEL_5:
    v7 = v4 + 1;
    v11 = 0;
    result = UARPLayer2RequestBuffer(a1, &v11, (8 * (v4 + 1)), 52428, 1360);
    if (!result)
    {
      v9 = *(a1 + 620);
      if (v9)
      {
        for (i = 0; i != v9; ++i)
        {
          v11[i] = *(*(a1 + 624) + i * 8);
        }
      }

      else
      {
        v9 = 0;
      }

      v11[v9] = a2;
      UARPLayer2ReturnBuffer(a1, *(a1 + 624), 52428, 1377);
      result = 0;
      *(a1 + 620) = v7;
      *(a1 + 624) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointAddToList(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  v3 = *(result + 688);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *(v3 + 24);
    }

    while (v3);
    v5 = (v4 + 24);
  }

  else
  {
    v5 = (result + 688);
  }

  *v5 = a3;
  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnList(uint64_t a1, uint64_t a2, int a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 8) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = *(a1 + 688); result; result = *(result + 24))
  {
    if (*(result + 16) == a3)
    {
      break;
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointIDFindOnListByDelegate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 16) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 8);
}

uint64_t uarpPlatformDownstreamEndpointDelegateFindOnListByID(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 688);
  if (!v3)
  {
    return 0;
  }

  while (*(v3 + 8) != a3)
  {
    v3 = *(v3 + 24);
    if (!v3)
    {
      return 0;
    }
  }

  return *(v3 + 16);
}

uint64_t uarpPlatformDownstreamEndpointRemoveFromList(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 688);
  if (result)
  {
    if (*(result + 8) == a3)
    {
      v5 = (a1 + 688);
LABEL_7:
      *v5 = *(result + 24);
    }

    else
    {
      while (1)
      {
        v6 = result;
        result = *(result + 24);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == a3)
        {
          v5 = (v6 + 24);
          goto LABEL_7;
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformSendDownstreamMessageWithDownstreamID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v5 = *(a1 + 688);
  if (!v5)
  {
    return 58;
  }

  while (*(v5 + 8) != a3)
  {
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 58;
    }
  }

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, a3, a4, a5);
}

void uarpPlatformReleaseEndpointIDs(uint64_t a1)
{
  if (*(a1 + 664))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 672) + v2;
      UARPLayer2ReturnBuffer(a1, *(v4 + 8), 52428, 1605);
      *(v4 + 2) = 0;
      *(v4 + 8) = 0;
      ++v3;
      v2 += 16;
    }

    while (v3 < *(a1 + 664));
  }

  UARPLayer2ReturnBuffer(a1, *(a1 + 672), 52428, 1592);
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
}

uint64_t uarpPlatformReleaseEndpointTags(uint64_t a1, uint64_t a2, uint64_t a3)
{
  UARPLayer2ReturnBuffer(a1, *(a3 + 8), 52428, 1605);
  *(a3 + 2) = 0;
  *(a3 + 8) = 0;
  return 0;
}

uint64_t uarpPlatformEndpointSendSyncMsg(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a1 + 616))
    {
      v5 = 1;
    }

    else
    {
      uarpTransmitQueuePurge(a1, a2);
      v5 = 0;
    }

    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0, 6u, v5);
    if (v6)
    {

      return uarpTransmitBuffer2(a1, a2, v6);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 1u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      if (a3 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = a3;
      }

      *(a2 + 48) = v10;
      *(v9 + 6) = uarpHtons(v10);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendVersionDiscoveryResponse(uint64_t a1, uint64_t a2, __int16 a3)
{
  result = 30;
  if (a1 && a2)
  {
    *(a2 + 48) = a3;
    v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 2u, 0xCu, 0);
    if (v6)
    {
      v7 = v6;
      v8 = v6[3];
      v8[3] = uarpHtons(0);
      v8[4] = uarpHtons(*(a2 + 48));
      v8[5] = *(a2 + 36);
      v9 = UARPProtocolVersionResponseAdjustByProtocolVersion(*(a2 + 48));
      v10 = uarpHtons(v8[1]);
      v8[1] = v10 - v9;
      v8[1] = uarpHtons((v10 - v9));
      *(v7 + 18) -= v9;

      return uarpTransmitBuffer2(a1, a2, v7);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendInformationRequest(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 3u, 0xAu, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtonl(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDataTransferNotification(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = 30;
  if (a1 && a2)
  {
    v7 = uarpAllocPrepareTransmitBuffer2(a1, a2, 8u, 8u, 1);
    if (v7)
    {
      v8 = v7;
      v9 = v7[3];
      *(v9 + 6) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v8);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpSendDynamicAssetPreProcessingStatus(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x13u, 0xCu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = *a3;
  *(v12 + 10) = uarpHtons(a5 | a4);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendAssetRequestData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v10 = uarpAllocPrepareTransmitBuffer2(a1, a2, 6u, 0xEu, 1);
  if (!v10)
  {
    return 11;
  }

  v11 = v10;
  v12 = v10[3];
  *(v12 + 6) = uarpHtons(a3);
  *(v12 + 8) = uarpHtonl(a4);
  if (a5 >= 0xFFFF)
  {
    v13 = 0xFFFF;
  }

  else
  {
    v13 = a5;
  }

  *(v12 + 12) = uarpHtons(v13);

  return uarpTransmitBuffer2(a1, a2, v11);
}

uint64_t uarpSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (!a2)
  {
    return 13;
  }

  v12 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, (a6 + 11), a4 == 32);
  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  v14 = v12[3];
  v15 = *a3;
  *(v14 + 8) = *(a3 + 2);
  *(v14 + 6) = v15;
  *(v14 + 9) = uarpHtons(a4);
  if (a5 && a6)
  {
    memcpy((v14 + 11), a5, a6);
  }

  return uarpTransmitBuffer2(a1, a2, v13);
}

uint64_t uarpSendDownstreamEndpointDiscovery(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x15u, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpSendDownstreamEndpointReachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x17u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpSendDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x19u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpTransmitMessageToDownstreamEndpointID(uint64_t a1, uint64_t a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v10 = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  v11 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Bu, (a5 + 8), v10);
  if (!v11)
  {
    return 11;
  }

  v12 = v11;
  v13 = v11[3];
  *(v13 + 6) = uarpHtons(a3);
  memcpy((v13 + 8), a4, a5);

  return uarpTransmitBuffer2(a1, a2, v12);
}

uint64_t uarpPlatformEndpointRecvMessage(uint64_t a1, void *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = 30;
  if (a1 && a2 && a3)
  {
    UARPLayer2LogPacket(a1, a2);
    if (a4 <= 5)
    {
      v9 = *(a1 + 440);
      if (v9)
      {
        v10 = *(a1 + 608);
        v11 = uarpEndpointRoleToString(*(a1 + 616));
        v9(v10, 0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>", v11, a4);
      }

      else
      {
        uarpEndpointRoleToString(*(a1 + 616));
        uarpLogError(0, "<ROLE=%s> ESPRESSO: UARP.LAYER2.RECV.MSG: Length too small <%u>");
      }

      return 8;
    }

    v12 = uarpHtons(*a3);
    v13 = uarpHtons(a3[1]);
    v14 = uarpHtons(a3[2]);
    *(a2 + 32) = v14;
    v15 = v13 + 6;
    if (a4 < v15)
    {
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too small ! expected <%u>, got <%u>";
LABEL_10:
      v16(v17, 0, v18);
      return 8;
    }

    if (a4 > v15)
    {
      v19 = *(a1 + 440);
      if (v19)
      {
        v19(*(a1 + 608), 0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      else
      {
        uarpLogError(0, "%s: ESPRESSO:Message <type=0x%04x, id=0x%04x> Length too big ! expected <%u>, got <%u>", "uarpPlatformEndpointRecvMessage", v12, v14, v15, a4);
      }

      if (a4 - v15 < 6)
      {
        return 8;
      }

      v22 = (a3 + v15);
      uarpHtons(*v22);
      uarpHtons(v22[1]);
      uarpHtons(v22[2]);
      v16 = *(a1 + 440);
      if (!v16)
      {
        uarpLogError(0, "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>");
        return 8;
      }

      v17 = *(a1 + 608);
      v18 = "%s: ESPRESSO:Bonus Message <type=0x%04x, length=x0x%04x, id=0x%04x>";
      goto LABEL_10;
    }

    v4 = 1;
    *(a1 + 644) = 1;
    switch(v12)
    {
      case 0:
        if (!*(a1 + 616))
        {
          uarpTransmitQueuePurge(a1, a2);
          uarpPlatformEndpointSendSyncMsg(a1, a2);
          goto LABEL_371;
        }

        v20 = a2[14];
        if (!v20)
        {
          goto LABEL_284;
        }

        while (!*(v20 + 40) || uarpHtons(*v20[3]))
        {
          v20 = *v20;
          if (!v20)
          {
            goto LABEL_284;
          }
        }

        *(v20 + 40) = 0;
        *(v20 + 39) = *(v20 + 38);
LABEL_284:
        *(a2 + 130) = 0;
        *(a2 + 122) = 0;
        *(a2 + 146) = 0;
        *(a2 + 138) = 0;
        *(a2 + 24) = 0;
        if ((*(a1 + 616) - 1) <= 1)
        {
          uarpSendVersionDiscoveryRequest(a1, a2, *(a2 + 6));
        }

        goto LABEL_371;
      case 1:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v90 = uarpHtons(a3[3]);
        v91 = *(a1 + 12);
        if (v90 < v91)
        {
          v91 = v90;
        }

        if (v91 <= 1)
        {
          v92 = 1;
        }

        else
        {
          v92 = v91;
        }

        *(a2 + 24) = v92;
        uarpSendVersionDiscoveryResponse(a1, a2, v92);
        v93 = *(a2 + 24);
        UARPLayer2ProtocolVersion(a1, a2);
        goto LABEL_371;
      case 2:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v77 = a2[14];
        if (!v77)
        {
          goto LABEL_213;
        }

        while (!*(v77 + 40) || uarpHtons(*v77[3]) != 1)
        {
          v77 = *v77;
          v4 = 9;
          if (!v77)
          {
            goto LABEL_372;
          }
        }

        *(v77 + 40) = 0;
        *(v77 + 39) = *(v77 + 38);
        v4 = uarpHtons(a3[3]);
        v161 = uarpHtons(a3[4]);
        v162 = 0;
        v163 = 0;
        if (a4 >= 0xC)
        {
          v162 = *(a3 + 10);
          v163 = *(a3 + 11);
        }

        *(a2 + 25) = v162;
        *(a2 + 26) = v163;
        if (v4)
        {
          v4 = 2;
        }

        else
        {
          if (v161 <= 1)
          {
            v181 = 1;
          }

          else
          {
            v181 = v161;
          }

          if (v181 >= 7)
          {
            v182 = 7;
          }

          else
          {
            v182 = v181;
          }

          *(a2 + 24) = v182;
          UARPLayer2ProtocolVersion(a1, a2);
        }

        goto LABEL_372;
      case 3:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v79 = uarpAllocPrepareTransmitBuffer2(a1, a2, 4u, 0x10u, 0);
        if (!v79)
        {
          goto LABEL_282;
        }

        v80 = v79;
        v81 = v79[3];
        *(v81 + 8) = uarpHtonl(*(a3 + 3));
        *(v81 + 12) = *(v80 + 8) - 16;
        updated = uarpCallbackUpdateInformationTLV(a1, a2, (v81 + 8));
        v83 = updated;
        if (updated)
        {
          v84 = 16;
        }

        else
        {
          v174 = *(v81 + 12);
          *(v81 + 2) = uarpHtons((v174 + 10));
          *(v81 + 8) = uarpHtonl(*(v81 + 8));
          *(v81 + 12) = uarpHtonl(*(v81 + 12));
          v84 = v174 + 16;
        }

        *(v81 + 6) = uarpHtons(v83);
        *(v80 + 18) = v84;
        goto LABEL_317;
      case 4:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v56 = uarpHtons(a3[3]);
        if (a4 < 0x10)
        {
          goto LABEL_213;
        }

        v57 = v56;
        v58 = uarpHtonl(*(a3 + 2));
        v59 = uarpHtonl(*(a3 + 3));
        if (v59 > 0xFFFFFFEF)
        {
          goto LABEL_303;
        }

        if (v59 + 16 > a4)
        {
          goto LABEL_213;
        }

        v60 = v59;
        v61 = a2[14];
        if (!v61)
        {
          goto LABEL_370;
        }

        while (!*(v61 + 40) || uarpHtons(*v61[3]) != 3 || v58 != uarpHtonl(*(v61[3] + 6)))
        {
          v61 = *v61;
          if (!v61)
          {
            goto LABEL_370;
          }
        }

        *(v61 + 40) = 0;
        *(v61 + 39) = *(v61 + 38);
LABEL_370:
        uarpPlatformResponseAccessoryInfo(a1, a2, v57, v58, v60, a3 + 4);
        goto LABEL_371;
      case 5:
        if (a4 < 0x24)
        {
          goto LABEL_213;
        }

        v200 = 0;
        uarpTagStructUnpack32(*(a3 + 3), &v200);
        v104 = uarpHtons(a3[5]);
        v105 = uarpHtons(a3[6]);
        v199[0] = 0;
        v199[1] = 0;
        uarpVersionEndianSwap((a3 + 7), v199);
        v106 = uarpHtonl(*(a3 + 15));
        v107 = uarpHtons(a3[17]);
        v108 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xDu, 0x24u, 0);
        if (!v108)
        {
          goto LABEL_282;
        }

        v109 = v108;
        v110 = v108[3];
        *(v110 + 6) = uarpPayloadTagPack(&v200);
        *(v110 + 10) = uarpHtons(v104);
        *(v110 + 12) = uarpHtons(v105);
        uarpVersionEndianSwap(v199, (v110 + 14));
        *(v110 + 30) = uarpHtonl(v106);
        *(v110 + 34) = uarpHtons(v107);
        v4 = uarpTransmitBuffer2(a1, a2, v109);
        if (v4)
        {
          goto LABEL_372;
        }

        v111 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v105);
        if (v111 && !*(v111 + 8))
        {
          goto LABEL_371;
        }

        PreparedAsset = uarpPlatformFindPreparedAsset(a1, a2, v105, v104, &v200);
        if (!PreparedAsset)
        {
          PreparedAsset = uarpPlatformCreateRxAsset(a1, a2);
          if (!PreparedAsset)
          {
            goto LABEL_282;
          }
        }

        v113 = PreparedAsset;
        *(PreparedAsset + 452) = -1;
        *(PreparedAsset + 448) = uarpHtons(a3[17]);
        *(v113 + 44) = v105;
        *(v113 + 46) = v104;
        *(v113 + 48) = v200;
        *(v113 + 52) = *v199;
        *(v113 + 68) = uarpHtonl(*(a3 + 15));
        v114 = *(v113 + 46);
        if (v114)
        {
          UARPLayer2SuperBinaryOffered(a1, a2);
        }

        else
        {
          if ((v114 & 2) == 0)
          {
            v4 = 22;
            goto LABEL_372;
          }

          UARPLayer2DynamicAssetOffered(a1, a2);
        }

        goto LABEL_371;
      case 6:
        if (a4 < 0xE)
        {
          goto LABEL_213;
        }

        v118 = uarpHtons(a3[6]);
        if (*a2 >= v118)
        {
          v119 = v118;
        }

        else
        {
          v119 = *a2;
        }

        LOWORD(v199[0]) = v119;
        v120 = uarpHtonl(*(a3 + 2));
        v121 = uarpHtons(a3[3]);
        v122 = uarpAllocPrepareTransmitBuffer2(a1, a2, 7u, (v119 + 18), 0);
        if (!v122)
        {
          goto LABEL_282;
        }

        v80 = v122;
        v123 = v122[3];
        v124 = uarpPlatformAssetDataRequest(a1, a2, v121, v119, v120, (v123 + 18), v199);
        *(v123 + 6) = uarpHtons(v124);
        *(v123 + 8) = a3[3];
        *(v123 + 10) = *(a3 + 2);
        *(v123 + 14) = a3[6];
        *(v123 + 16) = uarpHtons(LOWORD(v199[0]));
        v125 = LOWORD(v199[0]) + 18;
        *(v123 + 2) = uarpHtons((LOWORD(v199[0]) + 12));
        *(v80 + 18) = v125;
LABEL_317:
        v129 = a1;
        v130 = a2;
        v131 = v80;
        goto LABEL_318;
      case 7:
        if (a4 < 0x12)
        {
          goto LABEL_213;
        }

        v85 = uarpHtons(a3[4]);
        v86 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v85);
        if (!v86)
        {
          goto LABEL_327;
        }

        v87 = a2[14];
        if (!v87)
        {
          goto LABEL_213;
        }

        v88 = v86;
        while (1)
        {
          if (*(v87 + 40))
          {
            if (uarpHtons(*v87[3]) == 6)
            {
              v89 = v87[3];
              if (v85 == uarpHtons(*(v89 + 6)) && *(a3 + 5) == *(v89 + 8) && a3[7] == *(v89 + 12))
              {
                break;
              }
            }
          }

          v87 = *v87;
          v4 = 9;
          if (!v87)
          {
            goto LABEL_372;
          }
        }

        *(v87 + 40) = 0;
        *(v87 + 39) = *(v87 + 38);
        v194 = uarpHtons(a3[3]);
        v195 = uarpHtonl(*(a3 + 5));
        v196 = uarpHtons(a3[7]);
        v197 = uarpHtons(a3[8]);
        if (v197 + 18 > a4)
        {
LABEL_213:
          v4 = 9;
        }

        else
        {
          v198 = uarpPlatformAssetResponseData(a1, v88, v194, a3 + 9, v195, v196, v197);
          if (v198 == 29)
          {
            v4 = 0;
          }

          else
          {
            v4 = v198;
          }
        }

        goto LABEL_372;
      case 8:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v153 = uarpHtons(a3[3]);
        v154 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xEu, 8u, 0);
        if (!v154)
        {
          goto LABEL_282;
        }

        *(v154[3] + 6) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v154);
        if (v26)
        {
          goto LABEL_319;
        }

        if ((v153 & 1) != 0 && *(a2 + 60) == 1)
        {
          *(a2 + 60) = 0;
          v26 = UARPLayer2DataTransferPause(a1, a2);
          goto LABEL_319;
        }

        if ((v153 & 2) == 0 || *(a2 + 60))
        {
          v4 = 33;
          goto LABEL_372;
        }

        *(a2 + 60) = 1;
        v26 = uarpPlatformDataTransferResume(a1, a2);
        goto LABEL_319;
      case 9:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v64 = uarpHtons(a3[3]);
        v65 = uarpHtons(a3[4]);
        v66 = uarpPlatformAssetFindByAssetID(a1, a2, 1, v64);
        if (!v66)
        {
          goto LABEL_371;
        }

        v67 = v66;
        v68 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFu, 0xAu, 0);
        if (!v68)
        {
          goto LABEL_282;
        }

        v69 = v68;
        v70 = v68[3];
        *(v70 + 6) = uarpHtons(v64);
        *(v70 + 8) = uarpHtons(v65);
        v26 = uarpTransmitBuffer2(a1, a2, v69);
        if (!v26)
        {
          v26 = UARPLayer2AssetProcessingNotification2(a1, a2, v67, v65);
        }

        goto LABEL_319;
      case 10:
        LOWORD(v199[0]) = 0;
        v126 = UARPLayer2ApplyStagedAssets(a1, a2);
        v4 = 11;
        v127 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xBu, 0xAu, 0);
        if (!v127)
        {
          goto LABEL_372;
        }

        v95 = v127;
        v128 = v127[3];
        *(v128 + 6) = uarpHtons(v126);
        *(v128 + 8) = uarpHtons(LOWORD(v199[0]));
        goto LABEL_211;
      case 11:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v55 = a2[14];
        if (!v55)
        {
          goto LABEL_296;
        }

        while (!*(v55 + 40) || uarpHtons(*v55[3]) != 10)
        {
          v55 = *v55;
          if (!v55)
          {
            goto LABEL_296;
          }
        }

        *(v55 + 40) = 0;
        *(v55 + 39) = *(v55 + 38);
LABEL_296:
        uarpHtons(a3[3]);
        uarpHtons(a3[4]);
        v26 = UARPLayer2ApplyStagedAssetsResponse(a1, a2);
        goto LABEL_319;
      case 12:
        if (a4 < 8)
        {
          goto LABEL_213;
        }

        v62 = uarpHtons(a3[3]);
        v63 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x10u, 8u, 0);
        if (!v63)
        {
          goto LABEL_282;
        }

        *(v63[3] + 6) = a3[3];
        v4 = uarpTransmitBuffer2(a1, a2, v63);
        if (!v4)
        {
          uarpPlatformAssetRescinded(a1, a2, v62);
        }

        goto LABEL_372;
      case 13:
        if (a4 < 0x24)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpHtons(*v39[3]) != 5 || a3[6] != *(v39[3] + 12))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 14:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v48 = a2[14];
        if (!v48)
        {
          goto LABEL_290;
        }

        while (!*(v48 + 40) || uarpHtons(*v48[3]) != 8)
        {
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_290;
          }
        }

        *(v48 + 40) = 0;
        *(v48 + 39) = *(v48 + 38);
LABEL_290:
        v160 = uarpHtons(a3[3]);
        if (v160)
        {
          v26 = UARPLayer2DataTransferPauseAck(a1, a2);
        }

        else
        {
          if ((v160 & 2) == 0)
          {
            v4 = 26;
            goto LABEL_372;
          }

          v26 = UARPLayer2DataTransferResumeAck(a1, a2);
        }

        goto LABEL_319;
      case 15:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v78 = a2[14];
        if (!v78)
        {
          goto LABEL_330;
        }

        while (!*(v78 + 40) || uarpHtons(*v78[3]) != 9 || a3[3] != *(v78[3] + 6))
        {
          v78 = *v78;
          if (!v78)
          {
            goto LABEL_330;
          }
        }

        *(v78 + 40) = 0;
        *(v78 + 39) = *(v78 + 38);
LABEL_330:
        v177 = uarpHtons(a3[3]);
        uarpHtons(a3[4]);
        v178 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v177);
        if (!v178)
        {
          goto LABEL_371;
        }

        v179 = v178;
        v4 = UARPLayer2AssetProcessingNotificationAck(a1, a2, v178);
        *(v179 + 72) = 1;
        goto LABEL_372;
      case 16:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v47 = a2[14];
        if (!v47)
        {
          goto LABEL_324;
        }

        while (!*(v47 + 40) || uarpHtons(*v47[3]) != 12 || a3[3] != *(v47[3] + 6))
        {
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_324;
          }
        }

        *(v47 + 40) = 0;
        *(v47 + 39) = *(v47 + 38);
LABEL_324:
        v175 = uarpHtons(a3[3]);
        if (v175 == 0xFFFF)
        {
          UARPLayer2RescindAllAssetsAck(a1, a2, 0);
          goto LABEL_371;
        }

        v176 = uarpPlatformAssetFindByAssetID(a1, a2, 0, v175);
        if (v176)
        {
          UARPLayer2AssetRescindedAck(a1, a2, v176);
          goto LABEL_371;
        }

LABEL_327:
        v4 = 17;
        goto LABEL_372;
      case 17:
        if (a4 < 0xA)
        {
          goto LABEL_213;
        }

        v100 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x12u, 0xEu, 0);
        if (!v100)
        {
          goto LABEL_282;
        }

        v101 = v100;
        v102 = v100[3];
        *(v102 + 6) = uarpHtonl(0);
        *(v102 + 10) = *(a3 + 3);
        v26 = uarpTransmitBuffer2(a1, a2, v101);
        if (!v26)
        {
          v26 = UARPLayer2AssetSolicitation(a1, a2);
        }

        goto LABEL_319;
      case 18:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (!*(v39 + 40) || uarpHtons(*v39[3]) != 17 || !uarp4ccCompare(a3 + 10, (v39[3] + 6)))
        {
          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_273;
      case 19:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v134 = uarpHtons(a3[5]);
        v135 = *(a3 + 3);
        LODWORD(v199[0]) = v135;
        v136 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x14u, 0xCu, 0);
        if (!v136)
        {
          goto LABEL_282;
        }

        v137 = v136;
        v138 = v136[3];
        *(v138 + 6) = v135;
        *(v138 + 10) = uarpHtons(v134);
        v4 = uarpTransmitBuffer2(a1, a2, v137);
        if (v4)
        {
          goto LABEL_372;
        }

        v139 = uarpPlatformAssetFindByTag(a1, a2, 0, v199);
        if (v139)
        {
          *(v139 + 72) = 1;
          v26 = UARPLayer2AssetPreProcessingNotification(a1, a2, v139);
          goto LABEL_319;
        }

        v4 = 3;
        goto LABEL_372;
      case 20:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        v103 = a2[14];
        if (!v103)
        {
          goto LABEL_333;
        }

        while (!*(v103 + 40) || uarpHtons(*v103[3]) != 19 || !uarp4ccCompare(a3 + 6, (v103[3] + 6)))
        {
          v103 = *v103;
          if (!v103)
          {
            goto LABEL_333;
          }
        }

        *(v103 + 40) = 0;
        *(v103 + 39) = *(v103 + 38);
LABEL_333:
        uarpHtons(a3[5]);
        LODWORD(v199[0]) = *(a3 + 3);
        v180 = uarpPlatformAssetFindByTag(a1, a2, 1, v199);
        if (!v180)
        {
          goto LABEL_371;
        }

        *(v180 + 72) = 1;
        v26 = UARPLayer2AssetPreProcessingNotificationAck(a1, a2, v180);
        if (v26 == 3)
        {
          goto LABEL_371;
        }

        goto LABEL_319;
      case 21:
        v115 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x16u, 8u, 0);
        if (!v115)
        {
          goto LABEL_282;
        }

        v116 = v115;
        v117 = v115[3];
        *(v117 + 6) = uarpHtons(0);
        v26 = uarpTransmitBuffer2(a1, a2, v116);
        if (!v26)
        {
          v26 = fUarpLayer3DownstreamEndpointDiscovery(a1, a2);
        }

        goto LABEL_319;
      case 22:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpHtons(*v76[3]) != 21)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 23:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v140 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x18u, 0xAu, 0);
        if (!v140)
        {
          goto LABEL_282;
        }

        v141 = v140;
        v142 = v140[3];
        *(v142 + 6) = uarpHtons(0);
        *(v142 + 8) = a3[3];
        v26 = uarpTransmitBuffer2(a1, a2, v141);
        if (v26)
        {
          goto LABEL_319;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, 0x20uLL, 56797, 1483);
        if (!v4)
        {
          v143 = uarpHtons(a3[3]);
          v144 = v199[0];
          *(v199[0] + 4) = v143;
          v144[2] = 0;
          v144[3] = 0;
          uarpPlatformDownstreamEndpointAddToList(a1, a2, v144);
          v145 = *(a1 + 448);
          if (v145)
          {
            v146 = *(a1 + 608);
            v147 = uarpEndpointRoleToString(*(a1 + 616));
            v145(v146, 6, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v147, a1, a2, *(v199[0] + 4));
          }

          else
          {
            v192 = uarpEndpointRoleToString(*(a1 + 616));
            uarpLogInfo(6u, "%s: <ROLE=%s> : Add Downstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointReachable", v192, a1, a2, *(v199[0] + 4));
          }

          v193 = *(v199[0] + 4);
          v4 = fUarpLayer3DownstreamEndpointReachable(a1, a2);
          if (v4)
          {
            UARPLayer2ReturnBuffer(a1, v199[0], 56797, 1512);
          }
        }

        goto LABEL_372;
      case 24:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpHtons(*v76[3]) != 23)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 25:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v71 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Au, 0xAu, 0);
        if (!v71)
        {
          goto LABEL_282;
        }

        v72 = v71;
        v73 = uarpHtons(a3[3]);
        v74 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v73);
        if (v74)
        {
          v75 = 0;
        }

        else
        {
          v173 = *(a1 + 440);
          if (v173)
          {
            v173(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          else
          {
            uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachable");
          }

          v75 = 58;
        }

        v183 = v72[3];
        *(v183 + 6) = uarpHtons(v75);
        *(v183 + 8) = a3[3];
        v184 = uarpTransmitBuffer2(a1, a2, v72);
        v4 = v184;
        if (!v74 || v184)
        {
          goto LABEL_372;
        }

        v185 = *(a1 + 448);
        if (v185)
        {
          v186 = *(a1 + 608);
          v187 = uarpEndpointRoleToString(*(a1 + 616));
          v185(v186, 6, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v187, a1, a2, v73);
        }

        else
        {
          v188 = uarpEndpointRoleToString(*(a1 + 616));
          uarpLogInfo(6u, "%s: <ROLE=%s> : RemoveDownstream Endpoint <Local=%p> <Remote=%p> DS.ID <%hu>", "uarpMsgRecvDownstreamEndpointUnreachable", v188, a1, a2, v73);
        }

        if (fUarpLayer3DownstreamEndpointUnreachable(a1, a2))
        {
          goto LABEL_371;
        }

        v189 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v74 + 8));
        v190 = a1;
        v191 = 1655;
        goto LABEL_357;
      case 26:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v152 = a2[14];
        if (!v152)
        {
          goto LABEL_309;
        }

        while (!*(v152 + 40) || uarpHtons(*v152[3]) != 25)
        {
          v152 = *v152;
          if (!v152)
          {
            goto LABEL_309;
          }
        }

        *(v152 + 40) = 0;
        *(v152 + 39) = *(v152 + 38);
LABEL_309:
        v168 = uarpHtons(a3[4]);
        v169 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v168);
        if (v169)
        {
          v170 = v169;
          uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v169 + 8));
          v171 = *(v170 + 8);
          fUarpLayer3DownstreamEndpointReleased(a1, a2);
          goto LABEL_371;
        }

        v172 = *(a1 + 440);
        if (v172)
        {
          v172(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointUnreachableAck");
        }

        v4 = 58;
        goto LABEL_372;
      case 27:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v41 = uarpHtons(a3[3]);
        v42 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, v41);
        if (v42)
        {
          v43 = v42;
          uarpMsgRecvDownstreamEndpointMessageSendAck(a1, a2, v41, 0);
          v26 = fUarpLayer3DownstreamEndpointRecvMessage(a1, a2, v43);
          goto LABEL_319;
        }

        v155 = *(a1 + 440);
        if (v155)
        {
          v155(*(a1 + 608), 8, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        else
        {
          uarpLogError(8u, "UARP.LAYER2 <%s> Cannot find downstream endpoint", "uarpMsgRecvDownstreamEndpointMessage");
        }

        v4 = 58;
        uarpMsgRecvDownstreamEndpointMessageSendAck(a1, a2, v41, 0x3Au);
        goto LABEL_372;
      case 28:
        if (a4 < 0xA)
        {
          goto LABEL_303;
        }

        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpHtons(*v76[3]) != 27)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_266;
      case 29:
        v148 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Eu, 8u, 0);
        if (!v148)
        {
          goto LABEL_282;
        }

        v149 = v148;
        v150 = v148[3];
        *(v150 + 6) = uarpHtons(0);
        v4 = uarpTransmitBuffer2(a1, a2, v149);
        if (!v4)
        {
          fUarpLayer3NoFirmwareUpdateAvailable(a1, a2);
        }

        goto LABEL_372;
      case 30:
        v76 = a2[14];
        if (!v76)
        {
          goto LABEL_371;
        }

        while (!*(v76 + 40) || uarpHtons(*v76[3]) != 29)
        {
          v4 = 0;
          v76 = *v76;
          if (!v76)
          {
            goto LABEL_372;
          }
        }

LABEL_266:
        v4 = 0;
        *(v76 + 40) = 0;
        *(v76 + 39) = *(v76 + 38);
        goto LABEL_372;
      case 31:
        v94 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x20u, (2 * *(a1 + 664) + 10) & 0xFFFE, 0);
        if (!v94)
        {
          goto LABEL_282;
        }

        v95 = v94;
        v96 = v94[3];
        *(v96 + 6) = uarpHtons(0);
        *(v96 + 8) = uarpHtons(*(a1 + 664));
        if (*(a1 + 664))
        {
          v97 = 0;
          v98 = 0;
          v99 = v96 + 10;
          do
          {
            *(v99 + 2 * v98++) = uarpHtons(*(*(a1 + 672) + v97));
            v97 += 16;
          }

          while (v98 < *(a1 + 664));
        }

LABEL_211:
        v129 = a1;
        v130 = a2;
        v131 = v95;
        goto LABEL_318;
      case 32:
        v44 = a4 >= 0xA;
        v132 = a4 - 10;
        if (!v44)
        {
          goto LABEL_303;
        }

        v133 = a2[14];
        if (!v133)
        {
          goto LABEL_302;
        }

        while (!*(v133 + 40) || uarpHtons(*v133[3]) != 31)
        {
          v133 = *v133;
          if (!v133)
          {
            goto LABEL_302;
          }
        }

        *(v133 + 40) = 0;
        *(v133 + 39) = *(v133 + 38);
LABEL_302:
        v164 = uarpHtons(a3[4]);
        if (v132 < 2 * v164)
        {
          goto LABEL_303;
        }

        v165 = a3 + 5;
        if (v164)
        {
          v166 = v164;
          v167 = v165;
          do
          {
            *v167 = uarpHtons(*v167);
            ++v167;
            --v166;
          }

          while (v166);
        }

        UARPLayer2EndpointIDs(a1, a2);
        goto LABEL_371;
      case 33:
        if (a4 < 8)
        {
          goto LABEL_303;
        }

        v49 = uarpHtons(a3[3]);
        v50 = v49;
        v51 = *(a1 + 672);
        v52 = *(a1 + 664);
        if (!*(a1 + 664))
        {
          goto LABEL_89;
        }

        v53 = *(a1 + 672);
        while (*v53 != v49)
        {
          v53 += 8;
          if (!--v52)
          {
LABEL_89:
            v54 = 0;
            goto LABEL_277;
          }
        }

        v54 = v53[1];
        v51 = v53;
LABEL_277:
        v156 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x22u, (4 * v54 + 12) & 0xFFFC, 0);
        if (!v156)
        {
LABEL_282:
          v4 = 11;
          goto LABEL_372;
        }

        v157 = v156;
        v158 = v156[3];
        v158[3] = uarpHtons(0);
        v158[4] = uarpHtons(v50);
        v158[5] = uarpHtons(v54);
        if (v54)
        {
          v159 = 0;
          do
          {
            *&v158[v159 + 6] = *(*(v51 + 1) + v159 * 2);
            v159 += 2;
          }

          while (2 * v54 != v159);
        }

        v129 = a1;
        v130 = a2;
        v131 = v157;
LABEL_318:
        v26 = uarpTransmitBuffer2(v129, v130, v131);
        goto LABEL_319;
      case 34:
        v44 = a4 >= 0xC;
        v45 = a4 - 12;
        if (!v44)
        {
          goto LABEL_303;
        }

        v46 = a2[14];
        if (!v46)
        {
          goto LABEL_287;
        }

        while (!*(v46 + 40) || uarpHtons(*v46[3]) != 33)
        {
          v46 = *v46;
          if (!v46)
          {
            goto LABEL_287;
          }
        }

        *(v46 + 40) = 0;
        *(v46 + 39) = *(v46 + 38);
LABEL_287:
        uarpHtons(a3[4]);
        if (v45 < 2 * uarpHtons(a3[5]))
        {
LABEL_303:
          v4 = 8;
        }

        else
        {
          UARPLayer2EndpointIDComponents(a1, a2);
LABEL_371:
          v4 = 0;
        }

        goto LABEL_372;
      case 35:
        if (a4 < 0x10)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        v30 = *(a3 + 3);
        v200 = *(a3 + 2);
        v31 = uarpHtonl(v30);
        if (v31 >> 30)
        {
          goto LABEL_303;
        }

        v32 = v31;
        v33 = 4 * v31;
        if (v33 > a4 - 16)
        {
          goto LABEL_303;
        }

        v34 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x24u, (4 * v31 + 18), 0);
        if (!v34)
        {
          goto LABEL_282;
        }

        v35 = v34;
        v36 = v34[3];
        *(v36 + 6) = uarpHtons(0);
        *(v36 + 8) = a3[3];
        *(v36 + 10) = *(a3 + 2);
        *(v36 + 14) = *(a3 + 3);
        memcpy((v36 + 18), a3 + 8, v33);
        v4 = uarpTransmitBuffer2(a1, a2, v35);
        if (v4)
        {
          goto LABEL_372;
        }

        v199[0] = 0;
        v4 = UARPLayer2RequestBuffer(a1, v199, v33, 56797, 2292);
        if (v4)
        {
          goto LABEL_372;
        }

        if (v32)
        {
          v37 = 0;
          do
          {
            v38 = uarpHtonl(*&a3[v37 + 8]);
            *(v199[0] + v37 * 2) = v38;
            v37 += 2;
          }

          while (2 * v32 != v37);
        }

        UARPLayer2EndpointBulkInformationQuery(a1, a2);
        v189 = v199[0];
        v190 = a1;
        v191 = 2313;
LABEL_357:
        UARPLayer2ReturnBuffer(v190, v189, 56797, v191);
        goto LABEL_371;
      case 36:
        if (a4 < 0x12)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpHtons(*v39[3]) == 35)
            {
              v40 = v39[3];
              if (*(v40 + 6) == a3[4] && uarp4ccCompare((v40 + 8), a3 + 10))
              {
                goto LABEL_273;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

      case 37:
        if (a4 < 0xC)
        {
          goto LABEL_303;
        }

        uarpHtons(a3[3]);
        LODWORD(v199[0]) = *(a3 + 2);
        uarpHtons(a3[1]);
        v27 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x26u, 0xEu, 0);
        if (!v27)
        {
          goto LABEL_282;
        }

        v28 = v27;
        v29 = v27[3];
        *(v29 + 6) = uarpHtons(0);
        *(v29 + 8) = a3[3];
        *(v29 + 10) = *(a3 + 2);
        v4 = uarpTransmitBuffer2(a1, a2, v28);
        if (!v4)
        {
          UARPLayer2EndpointBulkInformationResponse(a1, a2);
        }

        goto LABEL_372;
      case 38:
        if (a4 < 0xE)
        {
          goto LABEL_303;
        }

        v39 = a2[14];
        if (!v39)
        {
          goto LABEL_371;
        }

        while (1)
        {
          if (*(v39 + 40))
          {
            if (uarpHtons(*v39[3]) == 37)
            {
              v151 = v39[3];
              if (*(v151 + 6) == a3[4] && uarp4ccCompare((v151 + 8), a3 + 10))
              {
                break;
              }
            }
          }

          v4 = 0;
          v39 = *v39;
          if (!v39)
          {
            goto LABEL_372;
          }
        }

LABEL_273:
        v4 = 0;
        *(v39 + 40) = 0;
        *(v39 + 39) = *(v39 + 38);
        goto LABEL_372;
      default:
        if (v12 != 0xFFFF)
        {
          goto LABEL_372;
        }

        if (a4 < 0xB)
        {
          goto LABEL_303;
        }

        v23 = a2[14];
        if (!v23)
        {
          goto LABEL_38;
        }

        break;
    }

    while (1)
    {
      if (*(v23 + 40))
      {
        if (uarpHtons(*v23[3]) == 0xFFFF)
        {
          v24 = v23[3];
          v25 = *(v23 + 18);
          if (UARPLayer2VendorSpecificCheckExpectedResponse(a1, a2))
          {
            break;
          }
        }
      }

      v23 = *v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }

    *(v23 + 40) = 0;
    *(v23 + 39) = *(v23 + 38);
LABEL_38:
    uarpHtons(*(a3 + 9));
    v26 = UARPLayer2VendorSpecificRecvMessage(a1, a2);
LABEL_319:
    v4 = v26;
LABEL_372:
    *(a1 + 644) = 0;
    uarpTransmitQueueReclaimEntries(a1, a2);
    uarpTransmitQueueService(a1, a2);
    uarpPlatformGarbageCollection(a1, a2);
  }

  return v4;
}

uint64_t uarpMsgRecvDownstreamEndpointMessageSendAck(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  result = UARPProtocolVersionRequiresDownstreamMessageACK(*(a2 + 48));
  if (result)
  {
    result = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Cu, 0xAu, 0);
    if (result)
    {
      v9 = result;
      v10 = *(result + 24);
      *(v10 + 6) = uarpHtons(a4);
      *(v10 + 8) = uarpHtons(a3);

      return uarpTransmitBuffer2(a1, a2, v9);
    }
  }

  return result;
}

int *uarpAssetTagStructVersions()
{
  result = &uarpAssetTagStructVersions_myTag;
  uarpAssetTagStructVersions_myTag = 1397900630;
  return result;
}

_BYTE *uarpAssetTagVersions4cc()
{
  uarpAssetTagStructVersions_myTag = 1397900630;
  uarpPayloadTagStructPack(&uarpAssetTagStructVersions_myTag, uarpAssetTagVersions4cc_payload4cc);
  return uarpAssetTagVersions4cc_payload4cc;
}

__int16 *uarpOuiVersions()
{
  result = &uarpOuiVersions_myOui;
  uarpOuiVersions_myOui = -6588;
  byte_27EE5DA9E = 110;
  return result;
}

uint64_t uarpVersionsAssetAddPayloadInfo(uint64_t a1, uint64_t a2, int *a3, unsigned int *a4, unsigned int *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = *a3;
  uarpVersionEndianSwap(a4, &v10);
  uarpVersionEndianSwap(a5, &v11);
  return UARPSuperBinaryAddMetaData(a1, a2, 0x44E66E00u, 0x24u, &v9);
}

__int16 *uarpOuiAppleGenericFeatures()
{
  result = &uarpOuiAppleGenericFeatures_myOui;
  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_27EE5DAA1 = 99;
  return result;
}

uint64_t uarpApplePlatformEndpointRecvMessage(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, unsigned int *a5, unsigned int a6)
{
  result = 30;
  if (!a1 || !a2 || !a3 || !a5)
  {
    return result;
  }

  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_27EE5DAA1 = 99;
  if (!uarpOuiCompare(a3, &uarpOuiAppleGenericFeatures_myOui))
  {
    return 9;
  }

  if (a4 != 33)
  {
    if (a4 == 32 && a6 >= 4)
    {
      v12 = *a2;
      v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xFFFFu, *a2, 0);
      if (!v13)
      {
        return 11;
      }

      v14 = v13;
      v15 = v13[3];
      uarpOuiAppleGenericFeatures_myOui = 2492;
      byte_27EE5DAA1 = 99;
      *(v15 + 6) = 2492;
      *(v15 + 8) = 99;
      *(v15 + 9) = uarpHtons(0x21u);
      v16 = *(a1 + 40);
      v47 = 0;
      v17 = uarpHtonl(*a5);
      v18 = (v12 - 23);
      switch(v17)
      {
        case 1u:
          v19 = v16[1];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 1;
          goto LABEL_99;
        case 2u:
          v19 = v16[3];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 2;
          goto LABEL_99;
        case 3u:
          v19 = v16[5];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 3;
          goto LABEL_99;
        case 4u:
          v33 = v16[7];
          if (!v33)
          {
            goto LABEL_100;
          }

          v34 = v33(*(a1 + 608), 4, v15 + 23, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
          if (v47 != 8)
          {
            goto LABEL_89;
          }

LABEL_72:
          *(v15 + 23) = uarpHtonll(*(v15 + 23));
          break;
        case 5u:
          v29 = v16[9];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 5;
          goto LABEL_87;
        case 6u:
          v29 = v16[11];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 6;
          goto LABEL_87;
        case 7u:
          v36 = v16[13];
          if (!v36)
          {
            goto LABEL_100;
          }

          v34 = v36(*(a1 + 608), 7, v15 + 23, v18, &v47);
          if (*(a2 + 48) >= 4u && v47 == 8)
          {
            goto LABEL_72;
          }

          break;
        case 8u:
          v29 = v16[17];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 8;
          goto LABEL_87;
        case 9u:
          v29 = v16[19];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 9;
          goto LABEL_87;
        case 0xAu:
          v29 = v16[21];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 10;
          goto LABEL_87;
        case 0xBu:
          v29 = v16[23];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 11;
          goto LABEL_87;
        case 0xCu:
          v19 = v16[25];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 12;
          goto LABEL_99;
        case 0xDu:
          v19 = v16[27];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 13;
          goto LABEL_99;
        case 0xEu:
          v19 = v16[29];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 14;
          goto LABEL_99;
        case 0xFu:
          v19 = v16[31];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 15;
          goto LABEL_99;
        case 0x10u:
          v29 = v16[33];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 16;
          goto LABEL_87;
        case 0x11u:
          v19 = v16[35];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 17;
          goto LABEL_99;
        case 0x12u:
          v19 = v16[37];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 18;
          goto LABEL_99;
        case 0x13u:
          v29 = v16[39];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 19;
          goto LABEL_87;
        case 0x14u:
          v29 = v16[41];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 20;
          goto LABEL_87;
        case 0x15u:
          v29 = v16[43];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 21;
          goto LABEL_87;
        case 0x16u:
          v29 = v16[45];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 22;
          goto LABEL_87;
        case 0x17u:
          v19 = v16[47];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 23;
          goto LABEL_99;
        case 0x18u:
          v19 = v16[49];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 24;
          goto LABEL_99;
        case 0x19u:
          v19 = v16[51];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 25;
          goto LABEL_99;
        case 0x1Au:
          v19 = v16[53];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 26;
          goto LABEL_99;
        case 0x1Bu:
          v19 = v16[55];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 27;
          goto LABEL_99;
        case 0x1Cu:
          v19 = v16[57];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 28;
          goto LABEL_99;
        case 0x1Du:
          v19 = v16[15];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 29;
          goto LABEL_99;
        case 0x1Eu:
          v19 = v16[59];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 30;
          goto LABEL_99;
        case 0x1Fu:
          v19 = v16[61];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 31;
          goto LABEL_99;
        case 0x20u:
          v19 = v16[63];
          if (!v19)
          {
            goto LABEL_100;
          }

          v20 = *(a1 + 608);
          v21 = v15 + 23;
          v22 = 32;
LABEL_99:
          v34 = v19(v20, v22, v21, v18, &v47);
          break;
        case 0x21u:
          v29 = v16[65];
          if (!v29)
          {
            goto LABEL_100;
          }

          v30 = *(a1 + 608);
          v31 = v15 + 23;
          v32 = 33;
LABEL_87:
          v34 = v29(v30, v32, v31, v18, &v47);
          if (*(a2 + 48) < 4u)
          {
            break;
          }

          v35 = v47;
LABEL_89:
          if (v35 == 4)
          {
            *(v15 + 23) = uarpHtonl(*(v15 + 23));
          }

          break;
        default:
LABEL_100:
          v34 = 26;
          break;
      }

      *(v15 + 11) = uarpHtonl(v34);
      *(v15 + 15) = uarpHtonl(v17);
      *(v15 + 19) = uarpHtonl(v47);
      v37 = v47 + 23;
      *(v15 + 2) = uarpHtons((v47 + 17));
      *(v14 + 18) = v37;
      return uarpTransmitBuffer2(a1, a2, v14);
    }

    return 9;
  }

  if (a6 < 4)
  {
    return 9;
  }

  if (a6 < 0xC)
  {
    return 8;
  }

  v23 = uarpHtonl(a5[1]);
  v24 = uarpHtonl(a5[2]);
  result = 8;
  if (v24 <= 0xFFFFFFF3 && v24 + 12 <= a6)
  {
    v25 = (a5 + 3);
    if (v24)
    {
      v26 = a5 + 3;
    }

    else
    {
      v26 = 0;
    }

    v27 = *(a1 + 40);
    switch(v23)
    {
      case 1:
        v28 = v27[2];
        if (v28)
        {
          goto LABEL_159;
        }

        return 1;
      case 2:
        v28 = v27[4];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 3:
        v28 = v27[6];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 4:
        v41 = v27[8];
        v38 = (v27 + 8);
        if (!v41)
        {
          return 1;
        }

        if (v24 == 8)
        {
          goto LABEL_149;
        }

        if (v24 != 4)
        {
          goto LABEL_158;
        }

        break;
      case 5:
        v39 = v27[10];
        v38 = (v27 + 10);
        v28 = v39;
        if (!v39)
        {
          return 1;
        }

        goto LABEL_156;
      case 6:
        v43 = v27[12];
        v38 = (v27 + 12);
        v28 = v43;
        if (!v43)
        {
          return 1;
        }

        goto LABEL_156;
      case 7:
        v44 = v27[14];
        v38 = (v27 + 14);
        v28 = v44;
        if (!v44)
        {
          return 1;
        }

        if (v24 != 8)
        {
          goto LABEL_159;
        }

LABEL_149:
        *v25 = uarpHtonll(*v25);
        goto LABEL_158;
      case 8:
        v42 = v27[18];
        v38 = (v27 + 18);
        v28 = v42;
        if (!v42)
        {
          return 1;
        }

        goto LABEL_156;
      case 9:
        v46 = v27[20];
        v38 = (v27 + 20);
        v28 = v46;
        if (v46)
        {
          goto LABEL_156;
        }

        return 1;
      case 10:
        v40 = v27[22];
        v38 = (v27 + 22);
        v28 = v40;
        if (!v40)
        {
          return 1;
        }

        goto LABEL_156;
      case 11:
        v45 = v27[24];
        v38 = (v27 + 24);
        v28 = v45;
        if (!v45)
        {
          return 1;
        }

LABEL_156:
        if (v24 == 4)
        {
          break;
        }

        goto LABEL_159;
      case 12:
        v28 = v27[26];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 13:
        v28 = v27[28];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 14:
        v28 = v27[30];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 15:
        v28 = v27[32];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 16:
        v28 = v27[34];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 34);
        break;
      case 17:
        v28 = v27[36];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 18:
        v28 = v27[38];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 19:
        v28 = v27[40];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 40);
        break;
      case 20:
        v28 = v27[42];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 42);
        break;
      case 21:
        v28 = v27[44];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 44);
        break;
      case 22:
        v28 = v27[46];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 46);
        break;
      case 23:
        v28 = v27[48];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 24:
        v28 = v27[50];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 25:
        v28 = v27[52];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 26:
        v28 = v27[54];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 27:
        v28 = v27[56];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 28:
        v28 = v27[58];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 29:
        v28 = v27[16];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 30:
        v28 = v27[60];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 31:
        v28 = v27[62];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 32:
        v28 = v27[64];
        if (!v28)
        {
          return 1;
        }

        goto LABEL_159;
      case 33:
        v28 = v27[66];
        if (!v28)
        {
          return 1;
        }

        if (v24 != 4)
        {
          goto LABEL_159;
        }

        v38 = (v27 + 66);
        break;
      default:
        return 1;
    }

    *v25 = uarpHtonl(*v25);
LABEL_158:
    v28 = *v38;
LABEL_159:
    v28(*(a1 + 608), *(a2 + 40), v26, v24);
    return 0;
  }

  return result;
}

BOOL uarpApplePlatformMessageCheckExpectedResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  if (a6 < 0xB)
  {
    return 0;
  }

  if (*(a5 + 6) != *(a3 + 6) || *(a5 + 8) != *(a3 + 8))
  {
    return 0;
  }

  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_27EE5DAA1 = 99;
  v10 = *(a5 + 6) == 2492 && *(a5 + 8) == 99;
  if (!v10 || uarpHtons(*(a5 + 9)) != 33)
  {
    return 0;
  }

  v12 = uarpHtons(*(a3 + 9));
  result = 0;
  if (a6 >= 0x17 && v12 == 32)
  {
    return *(a5 + 15) == *(a3 + 11);
  }

  return result;
}

uint64_t uarpApplePlatformMessageCheckValidToSend(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 1;
  }

  uarpOuiAppleGenericFeatures_myOui = 2492;
  byte_27EE5DAA1 = 99;
  if (*(a3 + 6) != 2492 || *(a3 + 8) != 99)
  {
    return 1;
  }

  v11 = uarpHtons(*(a3 + 9));
  result = 1;
  if (a4 >= 0xF && v11 == 32)
  {
    if (uarpHtonl(*(a3 + 11)) == 2 && (*(a2 + 48) < 2u || *(a2 + 24)))
    {
      v12 = *(v4 + 32);
      if (v12)
      {
LABEL_14:
        v12(*(a1 + 608), *(a2 + 40), 0, 0);
      }
    }

    else
    {
      if (uarpHtonl(*(a3 + 11)) != 1 || *(a2 + 48) >= 2u && !*(a2 + 24))
      {
        return 1;
      }

      v12 = *(v4 + 16);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return result;
}

uint64_t uarpApplePlatformMessageExceededRetries(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = *(result + 40);
  if (v4)
  {
    uarpOuiAppleGenericFeatures_myOui = 2492;
    byte_27EE5DAA1 = 99;
    if (*(a3 + 6) == 2492 && *(a3 + 8) == 99)
    {
      v9 = result;
      result = uarpHtons(*(a3 + 9));
      if (a4 >= 0xF && result == 32)
      {
        result = uarpHtonl(*(a3 + 11));
        if (result == 1)
        {
          v10 = v4[2];
          if (!v10)
          {
            return result;
          }
        }

        else
        {
          result = uarpHtonl(*(a3 + 11));
          if (result == 2)
          {
            v10 = v4[4];
            if (!v10)
            {
              return result;
            }
          }

          else
          {
            result = uarpHtonl(*(a3 + 11));
            if (result == 3)
            {
              v10 = v4[6];
              if (!v10)
              {
                return result;
              }
            }

            else
            {
              result = uarpHtonl(*(a3 + 11));
              if (result == 4)
              {
                v10 = v4[8];
                if (!v10)
                {
                  return result;
                }
              }

              else
              {
                result = uarpHtonl(*(a3 + 11));
                if (result == 5)
                {
                  v10 = v4[10];
                  if (!v10)
                  {
                    return result;
                  }
                }

                else
                {
                  result = uarpHtonl(*(a3 + 11));
                  if (result == 6)
                  {
                    v10 = v4[12];
                    if (!v10)
                    {
                      return result;
                    }
                  }

                  else
                  {
                    result = uarpHtonl(*(a3 + 11));
                    if (result == 7)
                    {
                      v10 = v4[14];
                      if (!v10)
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = uarpHtonl(*(a3 + 11));
                      if (result == 29)
                      {
                        v10 = v4[16];
                        if (!v10)
                        {
                          return result;
                        }
                      }

                      else
                      {
                        result = uarpHtonl(*(a3 + 11));
                        if (result == 8)
                        {
                          v10 = v4[18];
                          if (!v10)
                          {
                            return result;
                          }
                        }

                        else
                        {
                          result = uarpHtonl(*(a3 + 11));
                          if (result == 9)
                          {
                            v10 = v4[20];
                            if (!v10)
                            {
                              return result;
                            }
                          }

                          else
                          {
                            result = uarpHtonl(*(a3 + 11));
                            if (result == 10)
                            {
                              v10 = v4[22];
                              if (!v10)
                              {
                                return result;
                              }
                            }

                            else
                            {
                              result = uarpHtonl(*(a3 + 11));
                              if (result == 11)
                              {
                                v10 = v4[24];
                                if (!v10)
                                {
                                  return result;
                                }
                              }

                              else
                              {
                                result = uarpHtonl(*(a3 + 11));
                                if (result == 12)
                                {
                                  v10 = v4[26];
                                  if (!v10)
                                  {
                                    return result;
                                  }
                                }

                                else
                                {
                                  result = uarpHtonl(*(a3 + 11));
                                  if (result == 13)
                                  {
                                    v10 = v4[28];
                                    if (!v10)
                                    {
                                      return result;
                                    }
                                  }

                                  else
                                  {
                                    result = uarpHtonl(*(a3 + 11));
                                    if (result == 14)
                                    {
                                      v10 = v4[30];
                                      if (!v10)
                                      {
                                        return result;
                                      }
                                    }

                                    else
                                    {
                                      result = uarpHtonl(*(a3 + 11));
                                      if (result == 15)
                                      {
                                        v10 = v4[32];
                                        if (!v10)
                                        {
                                          return result;
                                        }
                                      }

                                      else
                                      {
                                        result = uarpHtonl(*(a3 + 11));
                                        if (result == 16)
                                        {
                                          v10 = v4[34];
                                          if (!v10)
                                          {
                                            return result;
                                          }
                                        }

                                        else
                                        {
                                          result = uarpHtonl(*(a3 + 11));
                                          if (result == 17)
                                          {
                                            v10 = v4[36];
                                            if (!v10)
                                            {
                                              return result;
                                            }
                                          }

                                          else
                                          {
                                            result = uarpHtonl(*(a3 + 11));
                                            if (result == 18)
                                            {
                                              v10 = v4[38];
                                              if (!v10)
                                              {
                                                return result;
                                              }
                                            }

                                            else
                                            {
                                              result = uarpHtonl(*(a3 + 11));
                                              if (result == 19)
                                              {
                                                v10 = v4[40];
                                                if (!v10)
                                                {
                                                  return result;
                                                }
                                              }

                                              else
                                              {
                                                result = uarpHtonl(*(a3 + 11));
                                                if (result == 20)
                                                {
                                                  v10 = v4[42];
                                                  if (!v10)
                                                  {
                                                    return result;
                                                  }
                                                }

                                                else
                                                {
                                                  result = uarpHtonl(*(a3 + 11));
                                                  if (result == 21)
                                                  {
                                                    v10 = v4[44];
                                                    if (!v10)
                                                    {
                                                      return result;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    result = uarpHtonl(*(a3 + 11));
                                                    if (result == 22)
                                                    {
                                                      v10 = v4[46];
                                                      if (!v10)
                                                      {
                                                        return result;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      result = uarpHtonl(*(a3 + 11));
                                                      if (result == 23)
                                                      {
                                                        v10 = v4[48];
                                                        if (!v10)
                                                        {
                                                          return result;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        result = uarpHtonl(*(a3 + 11));
                                                        if (result == 24)
                                                        {
                                                          v10 = v4[50];
                                                          if (!v10)
                                                          {
                                                            return result;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          result = uarpHtonl(*(a3 + 11));
                                                          if (result == 30)
                                                          {
                                                            v10 = v4[60];
                                                            if (!v10)
                                                            {
                                                              return result;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            result = uarpHtonl(*(a3 + 11));
                                                            if (result == 31)
                                                            {
                                                              v10 = v4[62];
                                                              if (!v10)
                                                              {
                                                                return result;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              result = uarpHtonl(*(a3 + 11));
                                                              if (result == 32)
                                                              {
                                                                v10 = v4[64];
                                                                if (!v10)
                                                                {
                                                                  return result;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                result = uarpHtonl(*(a3 + 11));
                                                                if (result != 33)
                                                                {
                                                                  return result;
                                                                }

                                                                v10 = v4[66];
                                                                if (!v10)
                                                                {
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
                }
              }
            }
          }
        }

        v11 = *(v9 + 608);
        v12 = *(a2 + 40);

        return v10(v11, v12, 0, 0);
      }
    }
  }

  return result;
}

uint64_t uarpCompressionHeaderEndianSwap(unsigned __int16 *a1, uint64_t a2)
{
  *a2 = uarpHtons(*a1);
  *(a2 + 2) = uarpHtonl(*(a1 + 1));
  *(a2 + 6) = uarpHtons(a1[3]);
  result = uarpHtons(a1[4]);
  *(a2 + 8) = result;
  return result;
}

char *uarpAssetTagChdr4cc()
{
  result = uarpAssetTagChdr4cc_assetTag;
  uarpAssetTagChdr4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructChdr()
{
  uarpAssetTagChdr4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructChdr_myTag;
  uarpAssetTagStructChdr_myTag = *uarpAssetTagChdr4cc_assetTag;
  return result;
}

char *uarpAssetTagHeySiriModel4cc()
{
  result = uarpAssetTagHeySiriModel4cc_assetTag;
  uarpAssetTagHeySiriModel4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructHeySiriModel()
{
  uarpAssetTagHeySiriModel4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructHeySiriModel_myTag;
  uarpAssetTagStructHeySiriModel_myTag = *uarpAssetTagHeySiriModel4cc_assetTag;
  return result;
}

__int16 *uarpOuiHeySiriModel()
{
  result = &uarpOuiHeySiriModel_myOui;
  uarpOuiHeySiriModel_myOui = -29856;
  byte_27EE5DAAE = 14;
  return result;
}

uint64_t uarpPayloadTagUnpack(uint64_t result, char *a2)
{
  v2 = result >> 8;
  v3 = WORD1(result);
  if (result)
  {
    v4 = result;
  }

  else
  {
    v4 = 48;
  }

  if (!result)
  {
    LOBYTE(v2) = 48;
    LOBYTE(v3) = 48;
  }

  *a2 = v4;
  a2[1] = v2;
  if (result)
  {
    v5 = BYTE3(result);
  }

  else
  {
    v5 = 48;
  }

  a2[2] = v3;
  a2[3] = v5;
  return result;
}

_BYTE *uarpPayloadTagStructPack(_BYTE *result, _BYTE *a2)
{
  *a2 = *result;
  a2[1] = result[1];
  a2[2] = result[2];
  a2[3] = result[3];
  return result;
}

uint64_t uarpVersionCompare(_DWORD *a1, _DWORD *a2)
{
  if (*a1 > *a2)
  {
    return 2;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 > v4)
  {
    return 2;
  }

  if (v3 < v4)
  {
    return 1;
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 > v6)
  {
    return 2;
  }

  if (v5 < v6)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = v7 < v8;
  if (!v10 && v9)
  {
    return 2;
  }

  else
  {
    return v11;
  }
}

uint64_t uarpAssetCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 46) == *(a2 + 46) && *(a1 + 48) == *(a2 + 48) && *(a1 + 49) == *(a2 + 49) && *(a1 + 50) == *(a2 + 50) && *(a1 + 51) == *(a2 + 51) && *(a1 + 68) == *(a2 + 68) && *(a1 + 448) == *(a2 + 448))
  {
    return uarpVersionCompare((a1 + 52), (a2 + 52));
  }

  else
  {
    return 3;
  }
}

uint64_t uarpVersionEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  result = uarpHtonl(a1[3]);
  a2[3] = result;
  return result;
}

const char *uarpStatusCodeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC2D38[a1];
  }
}

int *uarpAssetTagStructSuperBinary()
{
  result = &uarpAssetTagStructSuperBinary_myTag;
  uarpAssetTagStructSuperBinary_myTag = 0;
  return result;
}

const char *uarpApplyFlagsToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC2F48[a1 - 1];
  }
}

const char *uarpProcessingFlagsReasonToString(int a1)
{
  HIDWORD(v2) = a1 - 256;
  LODWORD(v2) = a1 - 256;
  v1 = v2 >> 8;
  if (v1 > 0xE)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC2F78[v1];
  }
}

const char *uarpProcessingStatusToString(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC2FF0[(a1 - 1)];
  }
}

__int128 *uarpStageStatusToString(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    if (a1 == 1)
    {
      result = uarpStageStatusToString_stageStatusString;
      strcpy(uarpStageStatusToString_stageStatusString, "Upload Complete");
      return result;
    }

    if (a1 == 2)
    {
      v1 = "Upload Denied";
      goto LABEL_13;
    }

LABEL_12:
    v1 = "<unknown>";
    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v1 = "Asset Not Found";
    goto LABEL_13;
  }

  if (a1 == 4)
  {
    v1 = "Asset Corrupt";
    goto LABEL_13;
  }

  if (a1 != 3)
  {
    goto LABEL_12;
  }

  v1 = "Upload Abandoned";
LABEL_13:
  v3 = uarpProcessingFlagsReasonToString(a1 & 0xFF00);
  snprintf(uarpStageStatusToString_stageStatusString, 0x100uLL, "%s (%s)", v1, v3);
  return uarpStageStatusToString_stageStatusString;
}

const char *uarpEndpointRoleToString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC3060[a1];
  }
}

const char *uarpLoggingCategoryToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC3018[a1];
  }
}

void *uarpProcessPayloadTLVInternal(void *result, uint64_t a2, uint64_t a3, signed int a4, size_t __size, unsigned int *a6)
{
  v10 = result;
  if (a4 != -858619624)
  {
    if (a4 == -858619625)
    {
      if (__size == 2)
      {
        v12 = uarpHtons(*a6);
        *(a3 + 76) = v12;
        UARPLayer2HashInfo(v10, v12, (a3 + 88), (a3 + 104));
        v13 = *(a3 + 88);
        if (!v13 || !UARPLayer2RequestBuffer(v10, (a3 + 80), v13, 34952, 850) && *(a3 + 80))
        {
          v14 = *(a3 + 104);
          if (!v14 || !UARPLayer2RequestBuffer(v10, (a3 + 96), v14, 34952, 866) && *(a3 + 96))
          {
            v18 = *(a3 + 76);
            v19 = *(a3 + 80);

            return UARPLayer2HashInit(v10, v18, v19);
          }
        }

        *(a3 + 76) = 0;
      }

LABEL_11:

      return UARPLayer2AssetCorrupt(v10, a2);
    }

    if (*(a3 + 76))
    {
      v21 = uarpHtonl(a4);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v21, 4);
      v20 = uarpHtonl(__size);
      UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), &v20, 4);
      result = UARPLayer2HashUpdate(v10, *(a3 + 76), *(a3 + 80), a6, __size);
    }

    if (a4 > -858619631)
    {
      if (a4 == -858619630)
      {
        if (__size == 2)
        {
          result = uarpHtons(*a6);
          *(a3 + 56) = result;
          return result;
        }
      }

      else
      {
        if (a4 != -858619623)
        {
          return result;
        }

        if (__size == 4)
        {
          result = uarpHtonl(*a6);
          *(a3 + 128) = result;
          return result;
        }
      }
    }

    else if (a4 == -858619641)
    {
      *(a3 + 72) = __size;
      if (!UARPLayer2RequestBuffer(v10, (a3 + 64), __size, 34952, 966))
      {
        v17 = *(a3 + 64);
        if (v17)
        {
          return memcpy(v17, a6, *(a3 + 72));
        }
      }
    }

    else
    {
      if (a4 != -858619636)
      {
        return result;
      }

      if (__size == 4)
      {
        result = uarpHtonl(*a6);
        if (result)
        {
          *(a3 + 52) = 1;
          if (!*(a2 + 656))
          {
            result = UARPLayer2RequestBuffer(v10, (a2 + 656), *(a2 + 648), 34952, 942);
            if (*(a2 + 656))
            {
              *(a2 + 664) = *(a2 + 648);
              *(a2 + 668) = 0;
            }
          }

          return result;
        }
      }
    }

    return UARPLayer2AssetCorrupt(v10, a2);
  }

  *(a3 + 120) = __size;
  if (UARPLayer2RequestBuffer(result, (a3 + 112), __size, 34952, 887))
  {
    goto LABEL_11;
  }

  v15 = *(a3 + 112);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(a3 + 120);

  return memcpy(v15, a6, v16);
}

uint64_t uarpAssetSuperBinaryVersionForProtocolVersion(unsigned int a1)
{
  if (a1 < 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t uarpDownstreamEndpointGetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 120);
    }
  }

  return result;
}

void uarpPrintDataResponseDetails(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  v12 = *(a1 + 448);
  if (v12)
  {
    v13 = *(a1 + 608);
    v14 = *(a1 + 616);
    if (v14 > 2)
    {
      v15 = "<unknown>";
    }

    else
    {
      v15 = off_278EC3060[v14];
    }

    v18 = uarpStatusCodeToString(a4);
    v12(v13, 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v15, v18, a5, a6, a7);
  }

  else
  {
    v16 = *(a1 + 616);
    if (v16 > 2)
    {
      v17 = "<unknown>";
    }

    else
    {
      v17 = off_278EC3060[v16];
    }

    v19 = uarpStatusCodeToString(a4);
    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP status=<%s>, offset=0x%08x, requestedlength=%u, respondedlength=%u", v17, v19, a5, a6, a7);
  }

  v20 = *(a1 + 448);
  if (v20)
  {
    v21 = *(a1 + 616);
    if (v21 > 2)
    {
      v22 = "<unknown>";
    }

    else
    {
      v22 = off_278EC3060[v21];
    }

    v20(*(a1 + 608), 1, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v22, *(a3 + 88), *(a3 + 92));
  }

  else
  {
    v23 = *(a1 + 616);
    if (v23 > 2)
    {
      v24 = "<unknown>";
    }

    else
    {
      v24 = off_278EC3060[v23];
    }

    uarpLogInfo(1u, "<ROLE=%s> UARP.LAYER2.DATA.RESP offset=0x%08x, requestedlength=%u", v24, *(a3 + 88), *(a3 + 92));
  }
}

uint64_t uarpCopyDefaultInfoString(_DWORD *a1, uint64_t a2)
{
  if (a2 < 7)
  {
    return 0;
  }

  *(a1 + 3) = 1314344782;
  *a1 = 1313558101;
  return a2;
}

uint64_t uarpMessageAdjustedForEndpointID(unsigned __int16 *a1, unsigned int a2, _WORD *a3, void *a4, unsigned int *a5)
{
  result = 30;
  if (a2 >= 6 && a1 && a3 && a4 && a5)
  {
    v10 = a2;
    if (uarpHtons(*a1) == 27)
    {
      v11 = v10 >= 8;
      v10 -= 8;
      if (!v11)
      {
        return 30;
      }

      *a3 = uarpHtons(a1[3]);
      *a4 = a1 + 4;
    }

    else
    {
      *a3 = 0;
      *a4 = a1;
    }

    result = 0;
    *a5 = v10;
  }

  return result;
}

const char *uarpMessageTypeToString(__int16 a1)
{
  if ((a1 + 1) > 0x27u)
  {
    return "<unknown>";
  }

  else
  {
    return off_278EC3078[(a1 + 1)];
  }
}

void *uarpAllocateTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = 0;
  v6 = UARPLayer2RequestBuffer(a1, &v12, 0x48uLL, 61166, 61);
  result = 0;
  if (!v6)
  {
    v8 = *a2 + *(a2 + 30) + 26;
    if (v8 <= a3)
    {
      v8 = a3;
    }

    v11 = v8;
    if (UARPLayer2RequestTransmitMsgBuffer(a1, a2, v12 + 1, &v11, 61166, 95))
    {
      UARPLayer2ReturnBuffer(a1, v12, 61166, 101);
      return 0;
    }

    else
    {
      v9 = v11;
      result = v12;
      *(v12 + 4) = v11;
      v10 = *(a2 + 30);
      result[3] = result[1] + v10;
      *(result + 8) = v9 - v10;
      *(result + 18) = 0;
    }
  }

  return result;
}

void *uarpAllocPrepareTransmitBuffer2(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, int a5)
{
  v10 = *(a2 + 104);
  if (v10)
  {
    *(a2 + 104) = *v10;
    v11 = *(v10 + 8);
    if (v11 >= a4)
    {
      goto LABEL_6;
    }

    UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v10[1], 61166, 128);
    UARPLayer2ReturnBuffer(a1, v10, 61166, 133);
  }

  TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, a4);
  v10 = TransmitBuffer2;
  if (!TransmitBuffer2)
  {
    return v10;
  }

  v11 = *(TransmitBuffer2 + 8);
LABEL_6:
  *(v10 + 18) = a4;
  *(v10 + 40) = a5;
  if (a5)
  {
    v13 = *(a2 + 18) + 1;
  }

  else
  {
    v13 = 1;
  }

  *(v10 + 39) = v13;
  *(v10 + 32) = *(a2 + 16);
  bzero(v10[3], v11);
  v14 = uarpHtons(a3);
  v15 = v10[3];
  *v15 = v14;
  v15[1] = a4 - 6;
  v16 = uarpHtons((a4 - 6));
  v17 = v10[3];
  *(v17 + 2) = v16;
  *(v17 + 4) = 0;
  return v10;
}

uint64_t uarpAllocateTransmitBuffers(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 34))
  {
    v4 = 0;
    do
    {
      TransmitBuffer2 = uarpAllocateTransmitBuffer2(a1, a2, 0);
      bzero(TransmitBuffer2[1], *(TransmitBuffer2 + 4));
      *(TransmitBuffer2 + 42) = 0;
      *(TransmitBuffer2 + 9) = 0;
      *(TransmitBuffer2 + 40) = 0;
      TransmitBuffer2[6] = 0;
      TransmitBuffer2[7] = 0;
      *(TransmitBuffer2 + 32) = 0;
      *TransmitBuffer2 = *(a2 + 104);
      *(a2 + 104) = TransmitBuffer2;
      ++v4;
    }

    while (v4 < *(a2 + 34));
  }

  return 0;
}

uint64_t uarpTransmitBuffer2(uint64_t a1, uint64_t a2, void *a3)
{
  UARPLayer2MonotonicClockTime(a1, a3 + 6);
  *a3 = 0;
  v6 = (a2 + 112);
  for (i = *(a2 + 112); i; i = *i)
  {
    v6 = i;
  }

  *v6 = a3;
  if (!*(a2 + 54))
  {
    uarpTransmitQueueService(a1, a2);
  }

  return 0;
}

uint64_t uarpTransmitQueueService(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 644) == 1)
  {
    return 0;
  }

  v20[11] = v2;
  v20[12] = v3;
  UARPLayer2WatchdogCancel(a1, a2);
  v20[0] = 0;
  v6 = UARPLayer2MonotonicClockTime(a1, v20);
  v7 = *(a2 + 112);
  if (!v7)
  {
    uarpTransmitQueueReclaimEntries(v6, a2);
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(v7 + 42) == 1)
    {
      goto LABEL_5;
    }

    v10 = v7[3];
    if (!v10)
    {
      v11 = *(a1 + 440);
      if (v11)
      {
        v6 = v11(*(a1 + 608), 6, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      else
      {
        uarpLogError(6u, "%s: ESPRESSO Corrupt Entry ? pBuffer = %p, pMsg = %p", "uarpTransmitEntryIsValidToSend", v7[1], 0);
      }

      goto LABEL_5;
    }

    v6 = uarpHtons(*v10);
    if (v6 != 0xFFFF)
    {
      break;
    }

    v12 = v7[3];
    v13 = *(v7 + 18);
    v6 = UARPLayer2VendorSpecificCheckValidToSend(a1, a2);
    if (v6)
    {
      goto LABEL_17;
    }

LABEL_5:
    *(v7 + 38) = *(v7 + 39) + 1;
    v7[7] = v20[0];
LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_26;
    }
  }

  if (v6 == 3)
  {
    v6 = uarpHtonl(*(v7[3] + 6));
    if (v6 == 9 && *(a2 + 48) <= 2u)
    {
      v6 = UARPLayer2FriendlyNameResponse(a1, a2);
      goto LABEL_5;
    }
  }

LABEL_17:
  v14 = v20[0];
  if (v20[0] && v20[0] - v7[7] < ((8389 * (*(v7 + 32) >> 3)) >> 20))
  {
    goto LABEL_6;
  }

  v15 = *(v7 + 38);
  if (v15 >= *(v7 + 39))
  {
    goto LABEL_6;
  }

  *(v7 + 38) = v15 + 1;
  v7[7] = v14;
  *(v7[3] + 4) = uarpHtons(*(a2 + 62));
  ++*(a2 + 62);
  UARPLayer2SendMessage(a1, a2, v7[1], *(a2 + 30) + *(v7 + 18));
  v16 = v7[3];
  v17 = *(v7 + 18);
  v6 = UARPLayer2LogPacket(a1, a2);
  if (*(v7 + 40) == 1)
  {
    v9 = 1;
  }

  if (++v8 < *(a2 + 20) || !*(v7 + 40))
  {
    goto LABEL_6;
  }

LABEL_26:
  uarpTransmitQueueReclaimEntries(v6, a2);
  if (v8 >= 1 && v9 == 1)
  {
    v18 = *(a2 + 16);
    UARPLayer2WatchdogSet(a1, a2);
  }

  return 0;
}

void uarpTransmitQueueReclaimEntries(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 104);
    while (1)
    {
      v6 = *v3;
      *v3 = 0;
      if (!*(v3 + 40) && *(v3 + 38) >= *(v3 + 39))
      {
        break;
      }

      if (v4)
      {
        v7 = v4;
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        goto LABEL_11;
      }

      v4 = v3;
LABEL_12:
      v3 = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    bzero(v3[1], *(v3 + 4));
    *(v3 + 42) = 0;
    *(v3 + 9) = 0;
    *(v3 + 40) = 0;
    v3[6] = 0;
    v3[7] = 0;
    *(v3 + 32) = 0;
    *v3 = *v5;
    v8 = (a2 + 104);
LABEL_11:
    *v8 = v3;
    goto LABEL_12;
  }

  v4 = 0;
LABEL_15:
  *(a2 + 112) = v4;
}

void uarpTransmitQueuesCleanup(uint64_t a1, uint64_t a2)
{
  UARPLayer2WatchdogCancel(a1, a2);
  v4 = *(a2 + 104);
  *(a2 + 104) = 0;
  if (v4)
  {
    do
    {
      v5 = *v4;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v4[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v4, 61166, 133);
      v4 = v5;
    }

    while (v5);
  }

  v6 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v6)
  {
    do
    {
      v7 = *v6;
      UARPLayer2ReturnTransmitMsgBuffer(a1, a2, v6[1], 61166, 128);
      UARPLayer2ReturnBuffer(a1, v6, 61166, 133);
      v6 = v7;
    }

    while (v7);
  }
}

void uarpTransmitQueueAssetRescinded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    while (v3)
    {
      if (uarpHtons(*v3[3]) == 6)
      {
        v5 = uarpHtons(*(v3[3] + 6));
        if (!a3 || v5 == *(a3 + 44))
        {
          *(v3 + 42) = 1;
          v3 = *v3;
        }
      }
    }
  }
}

void uarpTransmitQueuePurge(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  *(a2 + 112) = 0;
  if (v2)
  {
    do
    {
      v4 = *v2;
      bzero(v2[1], *(v2 + 4));
      *(v2 + 42) = 0;
      *(v2 + 9) = 0;
      *(v2 + 40) = 0;
      v2[6] = 0;
      v2[7] = 0;
      *(v2 + 32) = 0;
      *v2 = *(a2 + 104);
      *(a2 + 104) = v2;
      v2 = v4;
    }

    while (v4);
  }
}

char *uarpAssetTagSysconfig4cc()
{
  result = uarpAssetTagSysconfig4cc_assetTag;
  uarpAssetTagSysconfig4cc_assetTag[4] = 0;
  return result;
}

int *uarpAssetTagStructSysconfig()
{
  uarpAssetTagSysconfig4cc_assetTag[4] = 0;
  result = &uarpAssetTagStructSysconfig_myTag;
  uarpAssetTagStructSysconfig_myTag = *uarpAssetTagSysconfig4cc_assetTag;
  return result;
}

__int16 *uarpOuiSysconfig()
{
  result = &uarpOuiSysconfig_myOui;
  uarpOuiSysconfig_myOui = -22144;
  byte_27EE5DBBA = -105;
  return result;
}

uint64_t UARPSuperBinarySetupHeader(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, int a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  result = 30;
  if (a3 >= 2)
  {
    if (v9)
    {
      v16 = 0x2C00000002;
      v18 = *a4;
      v20 = 0x2C00000000;
      v21 = 40 * a5;
      v19 = 40 * a5 + 44;
      v17 = v19;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v16, 44, 0);
      if (!result)
      {
        if (a5)
        {
          v11 = 44;
          while (1)
          {
            v15 = 0;
            v14 = 0u;
            v13 = 0u;
            v12 = 40;
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v9, &v12, 40, v11);
            if (result)
            {
              break;
            }

            v11 = (v11 + 40);
            if (!--a5)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddMetaData(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  v16 = 0;
  LOWORD(__dst[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &v16, 4, 0, __dst);
  v12 = result;
  if (LOWORD(__dst[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(__dst[0]) != 4)
  {
    return result;
  }

  if (v16 < 2)
  {
    return 30;
  }

  memset(__dst, 0, 44);
  v18 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, __dst, 44, 0, &v18);
  if (!result)
  {
    if (v18 == 44)
    {
      v14 = HIDWORD(__dst[1]);
      v15 = __dst[2];
      v17[0] = uarpHtonl(a3);
      v17[1] = uarpHtonl(a4);
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 8, (v15 + v14));
      if (!result)
      {
        LODWORD(__dst[2]) += 8;
        DWORD2(__dst[0]) += 8;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a5, a4, (HIDWORD(__dst[1]) + LODWORD(__dst[2])));
        if (!result)
        {
          LODWORD(__dst[2]) += a4;
          DWORD2(__dst[0]) += a4;
          return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, __dst, 44, 0);
        }
      }
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPreparePayload(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, _OWORD *a5)
{
  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v16[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v16);
  v12 = result;
  if (LOWORD(v16[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v16[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v16, 44, 0, &v19);
  if (!result)
  {
    if (v19 != 44)
    {
      return 11;
    }

    v14 = (DWORD1(v16[2]) + 40 * a3);
    result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 40, v14, &v19);
    if (!result)
    {
      if (v19 == 40)
      {
        DWORD1(v17[0]) = uarpPayloadTagPack(a4);
        *(v17 + 8) = *a5;
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 40, v14);
      }

      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v11 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v11)
  {
    return 30;
  }

  v12 = v11;
  __dst = 0;
  LOWORD(v21[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v11, &__dst, 4, 0, v21);
  v14 = result;
  if (LOWORD(v21[0]) == 4)
  {
    v15 = 0;
  }

  else
  {
    v15 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v15;
  }

  if (v14 || LOWORD(v21[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v25 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, v21, 44, 0, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 44)
  {
    return 11;
  }

  v16 = (DWORD1(v21[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v12, &v22, 40, v16, &v25);
  if (result)
  {
    return result;
  }

  if (v25 != 40)
  {
    return 11;
  }

  v17 = DWORD2(v23);
  if (!DWORD2(v23))
  {
    v17 = DWORD2(v21[0]);
    DWORD2(v23) = DWORD2(v21[0]);
  }

  v18 = HIDWORD(v23);
  v20[0] = uarpHtonl(a4);
  v20[1] = uarpHtonl(a5);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v20, 8, (v18 + v17));
  if (!result)
  {
    HIDWORD(v23) += 8;
    DWORD2(v21[0]) += 8;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, a6, a5, (DWORD2(v23) + HIDWORD(v23)));
    if (!result)
    {
      HIDWORD(v23) += a5;
      DWORD2(v21[0]) += a5;
      result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, &v22, 40, v16);
      if (!result)
      {
        return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v12, v21, 44, 0);
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryAddPayloadDataLarge(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v10 = 0;
  while (a5)
  {
    if (a5 >= 0xFFFF)
    {
      v11 = 0xFFFF;
    }

    else
    {
      v11 = a5;
    }

    result = UARPSuperBinaryAddPayloadData(a1, a2, a3, a4 + v10, v11);
    v10 += v11;
    a5 -= v11;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t UARPSuperBinaryAddPayloadData(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (HIWORD(a5))
  {
    return 39;
  }

  v9 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v9)
  {
    return 30;
  }

  v10 = v9;
  __dst = 0;
  LOWORD(v17[0]) = 0;
  LODWORD(result) = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v9, &__dst, 4, 0, v17);
  v12 = result;
  if (LOWORD(v17[0]) == 4)
  {
    v13 = 0;
  }

  else
  {
    v13 = 11;
  }

  if (result)
  {
    result = result;
  }

  else
  {
    result = v13;
  }

  if (v12 || LOWORD(v17[0]) != 4)
  {
    return result;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v20 = 0;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v17, 44, 0, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 44)
  {
    return 11;
  }

  v14 = (DWORD1(v17[2]) + 40 * a3);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v10, v18, 40, v14, &v20);
  if (result)
  {
    return result;
  }

  if (v20 != 40)
  {
    return 11;
  }

  v15 = v19;
  if (!v19)
  {
    v15 = DWORD2(v17[0]);
    LODWORD(v19) = DWORD2(v17[0]);
  }

  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, a4, a5, (HIDWORD(v19) + v15));
  if (!result)
  {
    HIDWORD(v19) += a5;
    DWORD2(v17[0]) += a5;
    result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v18, 40, v14);
    if (!result)
    {
      return uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v10, v17, 44, 0);
    }
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeHeader(uint64_t a1, uint64_t a2)
{
  v3 = uarpPlatformAssetFindByAssetContextAndList(a1, a2, 1);
  if (!v3)
  {
    return 30;
  }

  v4 = v3;
  v12 = 0;
  __dst = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v3, &__dst, 4, 0, &v12);
  if (result)
  {
    return result;
  }

  if (v12 != 4)
  {
    return 11;
  }

  if (__dst < 2)
  {
    return 30;
  }

  v16 = 0;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, 44);
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v13, 44, 0, &v16);
  if (result)
  {
    return result;
  }

  if (v16 != 44)
  {
    return 11;
  }

  v6 = v13[0];
  v7 = v13[1];
  *(v4 + 28) = *(&v13[1] + 12);
  *v4 = v6;
  *(v4 + 16) = v7;
  uarpSuperBinaryHeaderEndianSwap(v13, v13);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v13, 44, 0);
  if (!result)
  {
    v8 = *(v4 + 40);
    if (v8 >= 0x28)
    {
      v9 = v8 / 0x28;
      v10 = *(v4 + 36);
      do
      {
        result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, v4, v14, 40, v10, &v16);
        if (result)
        {
          break;
        }

        if (v16 != 40)
        {
          return 11;
        }

        uarpPayloadHeaderEndianSwap(v14, v14);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, v4, v14, 40, v10);
        if (result)
        {
          break;
        }

        v10 = (v10 + 40);
        --v9;
      }

      while (v9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpSuperBinaryHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = uarpHtonl(a1[1]);
  a2[2] = uarpHtonl(a1[2]);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  a2[9] = uarpHtonl(a1[9]);
  result = uarpHtonl(a1[10]);
  a2[10] = result;
  return result;
}

uint64_t uarpPayloadHeaderEndianSwap(unsigned int *a1, _DWORD *a2)
{
  v4 = uarpHtonl(*a1);
  v6 = a1[1];
  v5 = a1[2];
  *a2 = v4;
  a2[1] = v6;
  a2[2] = uarpHtonl(v5);
  a2[3] = uarpHtonl(a1[3]);
  a2[4] = uarpHtonl(a1[4]);
  a2[5] = uarpHtonl(a1[5]);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t uarpPayloadHeader2EndianSwap(unsigned int *a1, _DWORD *a2)
{
  *a2 = uarpHtonl(*a1);
  a2[1] = a1[1];
  uarpVersionEndianSwap(a1 + 2, a2 + 2);
  a2[6] = uarpHtonl(a1[6]);
  a2[7] = uarpHtonl(a1[7]);
  a2[8] = uarpHtonl(a1[8]);
  result = uarpHtonl(a1[9]);
  a2[9] = result;
  return result;
}

uint64_t UARPSuperBinaryQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  memset(__dst, 0, 44);
  v5 = 0;
  result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, 0, a2, __dst, 44, 0, &v5);
  if (!result)
  {
    if (v5 == 44)
    {
      uarpSuperBinaryHeaderEndianSwap(__dst, __dst);
      result = 0;
      *a3 = DWORD2(__dst[0]);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t UARPSuperBinaryPrepareDynamicAsset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 12) = a3;
  *(a2 + 20) = a4;
  *(a2 + 8) = 44;
  *a2 = 0x2C00000002;
  *(a2 + 28) = xmmword_247B3D500;
  *(a2 + 48) = a5;
  *(a2 + 448) = 0;
  *(a2 + 632) = 0;
  *(a2 + 720) = 0;
  *(a2 + 672) = 0u;
  return 0;
}

uint64_t UARPSuperBinaryAddSuperBinaryMetaData(uint64_t a1, uint64_t a2, int a3, unsigned int a4, const void *a5)
{
  v13 = 0;
  v9 = a4;
  UARPLayer2RequestBuffer(a1, &v13, a4 + 24, 39321, 827);
  v10 = v13;
  v11 = (v13 + 3);
  v13[1] = v13 + 3;
  *v10 = a3;
  *(v10 + 1) = a4;
  memcpy(v11, a5, v9);
  v10[2] = *(a2 + 720);
  *(a2 + 720) = v10;
  *(a2 + 8) += a4 + 8;
  *(a2 + 32) += a4 + 8;
  *(a2 + 46) |= 0x80u;
  return 0;
}

uint64_t UARPSuperBinaryAddPayload2(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8, char a9)
{
  v21 = 0;
  UARPLayer2RequestBuffer(a1, &v21, 0xB8uLL, 39321, 881);
  v17 = v21;
  v21[22] = *(a2 + 632);
  *(a2 + 632) = v17;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[4] = 0;
  *v17 = 40;
  *(v17 + 1) = a4;
  v17[1] = a5;
  v17[2] = a6;
  *(v17 + 9) = a8;
  *(v17 + 7) = 0;
  *(v17 + 31) = a3;
  if (!a9)
  {
    __dst = 0;
    UARPLayer2RequestBuffer(a1, &__dst, a8, 39321, 906);
    v18 = __dst;
    v17[17] = __dst;
    memcpy(v18, a7, a8);
  }

  *(v17 + 148) = a9;
  *(v17 + 36) = a8;
  v17[21] = 0;
  *(a2 + 8) += a8 + 40;
  *(a2 + 40) += 40;
  *(a2 + 28) += 40;
  ++*(a2 + 448);
  return 0;
}

uint64_t UARPSuperBinaryAppendPayloadMetaData(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, const void *a6)
{
  v6 = *(a2 + 448);
  v7 = *(a2 + 632);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 11;
  }

  v14 = 1;
  while (*(v7 + 124) != a3)
  {
    v9 = 11;
    if (v14 < v6)
    {
      v7 = *(v7 + 176);
      ++v14;
      if (v7)
      {
        continue;
      }
    }

    return v9;
  }

  v18 = 0;
  UARPLayer2RequestBuffer(a1, &v18, a5 + 24, 39321, 950);
  v15 = v18;
  v16 = (v18 + 3);
  v18[1] = v18 + 3;
  *v15 = a4;
  *(v15 + 1) = a5;
  memcpy(v16, a6, a5);
  v9 = 0;
  v15[2] = *(v7 + 168);
  *(v7 + 168) = v15;
  *(v7 + 28) += a5 + 8;
  *(a2 + 8) += a5 + 8;
  *(a2 + 684) += a5 + 8;
  *(a2 + 46) |= 8u;
  return v9;
}

uint64_t UARPSuperBinaryAppendPayloadMetaDataBlob(uint64_t a1, uint64_t a2, int a3, const void *a4, size_t a5)
{
  v5 = *(a2 + 448);
  v6 = *(a2 + 632);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 11;
  }

  v12 = 1;
  result = 11;
  while (*(v6 + 124) != a3)
  {
    if (v12 < v5)
    {
      v6 = *(v6 + 176);
      ++v12;
      if (v6)
      {
        continue;
      }
    }

    return result;
  }

  if (*(v6 + 152))
  {
    return 27;
  }

  UARPLayer2ReturnBuffer(a1, 0, 39321, 1001);
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  UARPLayer2RequestBuffer(a1, 0, a5, 39321, 1010);
  memcpy(*(v6 + 152), a4, a5);
  result = 0;
  *(v6 + 160) = a5;
  *(v6 + 28) += a5;
  *(a2 + 8) += a5;
  *(a2 + 684) += a5;
  *(a2 + 46) |= 8u;
  return result;
}

uint64_t UARPSuperBinaryBuildMetaData(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t **a4, unsigned int a5, unsigned int *a6)
{
  v8 = *a6;
  v9 = *a4;
  if (a3)
  {
    v11 = a3;
    while (1)
    {
      v12 = uarpHtonl(*v11);
      v13 = uarpHtonl(*(v11 + 4));
      v8 += *(v11 + 4) + 8;
      if (v8 > a5)
      {
        return 11;
      }

      *v9 = v12 | (v13 << 32);
      v14 = (v9 + 1);
      memcpy(v14, *(v11 + 8), *(v11 + 4));
      v9 = &v14[*(v11 + 4)];
      v11 = *(v11 + 16);
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    *a6 = v8;
    *a4 = v9;
  }

  return result;
}

uint64_t UARPSuperBinaryFinalizeDynamicAsset(uint64_t a1, uint64_t a2)
{
  uarpSuperBinaryHeaderEndianSwap(a2, a2);
  result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, a2, 44, 0);
  if (!result)
  {
    uarpSuperBinaryHeaderEndianSwap(a2, a2);
    v5 = *(a2 + 4);
    v6 = *(a2 + 32);
    v7 = (a2 + 632);
    v8 = *(a2 + 448);
    if (v8)
    {
      v9 = 0;
      v10 = *(a2 + 40) + v5 + v6;
      v11 = v10 + *(a2 + 684);
      v12 = (a2 + 632);
      while (1)
      {
        v13 = *v12;
        v13[6] = v10;
        v13[8] = v11;
        uarpPayloadHeader2EndianSwap(v13, v13);
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v13, 40, v5);
        if (result)
        {
          break;
        }

        uarpPayloadHeader2EndianSwap(v13, v13);
        v5 = *v13 + v5;
        v10 += v13[7];
        v11 += v13[9];
        v12 = (v13 + 44);
        ++v9;
        v8 = *(a2 + 448);
        if (v9 >= v8)
        {
          v6 = *(a2 + 32);
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      if (v6)
      {
        __dst = 0;
        v28 = 0;
        result = UARPLayer2RequestBuffer(a1, &__dst, v6, 39321, 1127);
        if (result)
        {
          return result;
        }

        v27 = __dst;
        result = UARPSuperBinaryBuildMetaData(result, v14, *(a2 + 720), &v27, *(a2 + 32), &v28);
        if (result)
        {
          return result;
        }

        v15 = __dst;
        *(a2 + 672) = __dst;
        v16 = v28;
        *(a2 + 680) = v28;
        result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v15, v16, v5);
        if (result)
        {
          return result;
        }

        v5 = v16 + v5;
        v8 = *(a2 + 448);
      }

      if (!v8)
      {
        return 0;
      }

      v17 = 0;
      v18 = a2 + 632;
      do
      {
        v19 = *v18;
        v20 = *(*v18 + 28);
        if (v20)
        {
          __dst = 0;
          v28 = 0;
          result = UARPLayer2RequestBuffer(a1, &__dst, v20, 39321, 1171);
          if (result)
          {
            return result;
          }

          v21 = __dst;
          v27 = __dst;
          v22 = *(v19 + 152);
          if (v22)
          {
            v21 = memcpy(__dst, v22, *(v19 + 160));
            v28 = *(v19 + 160);
          }

          result = UARPSuperBinaryBuildMetaData(v21, v22, *(v19 + 168), &v27, *(v19 + 28), &v28);
          if (result)
          {
            return result;
          }

          v23 = __dst;
          *(v19 + 152) = __dst;
          v24 = v28;
          *(v19 + 160) = v28;
          result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, v23, v24, v5);
          if (result)
          {
            return result;
          }

          v5 = v24 + v5;
          v8 = *(a2 + 448);
        }

        v18 = v19 + 176;
        ++v17;
      }

      while (v17 < v8);
      if (v8)
      {
        for (i = 0; i < v8; ++i)
        {
          v26 = *v7;
          if (!*(v26 + 148))
          {
            result = uarpPlatformEndpointAssetSetBytesAtOffset(a1, 0, a2, *(v26 + 136), *(v26 + 144), v5);
            if (result)
            {
              return result;
            }

            v8 = *(a2 + 448);
          }

          result = 0;
          v5 = (*(v26 + 144) + v5);
          v7 = (v26 + 176);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t UARPSuperBinaryGetInternalSuperBinaryMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 32);
  if (v7 && ((v8 = *(a2 + 28), v9 = v7 + v8, v10 = a5 >= v8, v11 = a5 - v8, v10) ? (v12 = v9 > a5) : (v12 = 0), v12))
  {
    v15 = v7 - v11;
    if (a4 >= v15)
    {
      v13 = v15;
    }

    else
    {
      v13 = a4;
    }

    memcpy(__dst, (*(a2 + 672) + v11), v13);
    result = 0;
  }

  else
  {
    v13 = 0;
    result = 40;
  }

  *a6 = v13;
  return result;
}

uint64_t UARPSuperBinaryGetInternalPayloadMetaData(int a1, uint64_t a2, void *__dst, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v7 = *(a2 + 632);
  if (!v7)
  {
LABEL_9:
    v14 = 0;
    result = 40;
    goto LABEL_14;
  }

  while (1)
  {
    v8 = *(v7 + 28);
    if (v8)
    {
      break;
    }

LABEL_8:
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v7 + 24);
  v10 = v8 + v9;
  v11 = a5 >= v9;
  v12 = a5 - v9;
  if (!v11 || v10 <= a5)
  {
    v7 = *(v7 + 176);
    goto LABEL_8;
  }

  v16 = v8 - v12;
  if (a4 >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = a4;
  }

  memcpy(__dst, (*(v7 + 152) + v12), v14);
  result = 0;
LABEL_14:
  *a6 = v14;
  return result;
}

uint64_t uarpPlatformEndpointInit(char *a1, uint64_t a2, unsigned int a3, __int128 *a4, const void *a5, uint64_t a6, uint64_t a7)
{
  result = 30;
  if (a3 <= 2 && a2 && a1 && a4 && a5)
  {
    bzero(a1, 0x2C8uLL);
    memcpy(a1 + 48, a5, 0x230uLL);
    *(a1 + 76) = a2;
    *(a1 + 5) = a6;
    *(a1 + 160) = 1;
    *(a1 + 82) = a7;
    v16 = *a4;
    v15 = a4[1];
    *(a1 + 4) = *(a4 + 4);
    *a1 = v16;
    *(a1 + 1) = v15;
    if (!*(a1 + 6))
    {
      *(a1 + 6) = 7;
    }

    *(a1 + 154) = a3;
    a1[644] = 0;
    *(a1 + 162) = 1;
    *(a1 + 340) = 1;
    *(a1 + 174) = 1024;
    v17 = calloc(0x20uLL, 0x400uLL);
    result = 0;
    *(a1 + 88) = v17;
  }

  return result;
}

void uarpPlatformEndpointDeinit(uint64_t a1)
{
  UARPLayer2ReturnBuffer(a1, *(a1 + 624), 43690, 85);
  *(a1 + 620) = 0;
  *(a1 + 624) = 0;

  uarpPlatformCleanupAssets(a1);
}

uint64_t uarpPlatformRemoteEndpointAdd(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        *(a2 + 40) = a4;
        v7 = *a1;
        v8 = *(a1 + 16);
        *(a2 + 32) = *(a1 + 32);
        *a2 = v7;
        *(a2 + 16) = v8;
        if (!a3 || (v10 = *a3, v9 = a3[1], *(a2 + 32) = *(a3 + 4), *a2 = v10, *(a2 + 16) = v9, (v11 = *(a2 + 4)) != 0) && *a2 && *(a2 + 8) >= v11)
        {
          if (!*(a2 + 12))
          {
            *(a2 + 12) = *(a1 + 12);
          }

          *(a2 + 48) = 0;
          v12 = *(a1 + 648);
          *(a1 + 648) = v12 + 1;
          *(a2 + 56) = v12;
          *(a2 + 60) = 1;
          *(a2 + 62) = 1;
          *(a2 + 28) = 0;
          *(a2 + 88) = 0;
          result = uarpPlatformRemoteEndpointAddEntry(a1, a2);
          if (!result)
          {
            if (!*(a2 + 20))
            {
              *(a2 + 20) = 1;
            }

            result = uarpAllocateTransmitBuffers(a1, a2);
            if (!result)
            {
              if ((*(a1 + 616) - 1) > 1)
              {
                return 0;
              }

              result = uarpPlatformEndpointSendSyncMsg(a1, a2);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformRemoteEndpointRemove(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    uarpTransmitQueuesCleanup(a1, a2);
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 1);
    uarpPlatformReleaseEndpointIDs(a1);
    v5 = *(a1 + 620);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        v8 = *(a1 + 624);
        if (*(v8 + v6) == a2)
        {
          *(v8 + v6) = 0;
        }

        v6 += 8;
      }

      while (v7 != v6);
    }

    uarpPlatformEndpointStreamingRecvDeinit(a1, a2);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformEndpointRequestInfoProperty(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a1 && a2 && a3 - 13 >= 0xFFFFFFF4)
  {
    return uarpSendInformationRequest(a1, a2, a3);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetIsAcceptable(void *a1, uint64_t a2, _BYTE *a3, __int16 *a4)
{
  ActiveFirmwareVersion = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          *a3 = 1;
          *a4 = 0;
          v16[0] = 0;
          v16[1] = 0;
          ActiveFirmwareVersion = uarpPlatformEndpointQueryActiveFirmwareVersion(a1, a2, v16);
          if (!ActiveFirmwareVersion)
          {
            v9 = uarpVersionCompare(v16, (a2 + 52));
            if (v9 == 1)
            {
              v15[0] = 0;
              v15[1] = 0;
              ActiveFirmwareVersion = uarpPlatformEndpointQueryStagedFirmwareVersion(a1, a2, v15);
              if (ActiveFirmwareVersion)
              {
                return ActiveFirmwareVersion;
              }

              v10 = uarpVersionCompare(v15, (a2 + 52));
              if (v10 == 1)
              {
                return ActiveFirmwareVersion;
              }

              *a3 = 0;
              v11 = v10 == 0;
              v12 = 1280;
              v13 = 768;
            }

            else
            {
              ActiveFirmwareVersion = 0;
              *a3 = 0;
              v11 = v9 == 0;
              v12 = 1536;
              v13 = 1024;
            }

            if (v11)
            {
              v12 = v13;
            }

            *a4 = v12;
          }
        }
      }
    }
  }

  return ActiveFirmwareVersion;
}

uint64_t uarpPlatformEndpointAssetAcceptWithPayloadAndDecompressionWindows(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned int a9)
{
  result = 30;
  if (a1 && a2 && a3 && (!a6 || a7 && *(a2 + 8) <= a7) && (!a8 || a9 && *(a2 + 8) <= a9))
  {
    v15 = *(a1 + 632);
    if (v15)
    {
      v16 = *(a1 + 632);
      while (v16 != a3 || *(v16 + 304))
      {
        v16 = *(v16 + 712);
        if (!v16)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      *(a3 + 712) = v15;
      *(a1 + 632) = a3;
    }

    if (a4)
    {
      *(a3 + 704) = a4;
    }

    *(a3 + 72) = 0;
    if (!a5)
    {
      return 30;
    }

    v17 = a5[1];
    *(a3 + 80) = *a5;
    *(a3 + 96) = v17;
    v18 = a5[2];
    v19 = a5[3];
    v20 = a5[5];
    *(a3 + 144) = a5[4];
    *(a3 + 160) = v20;
    *(a3 + 112) = v18;
    *(a3 + 128) = v19;
    v21 = a5[6];
    v22 = a5[7];
    v23 = a5[9];
    *(a3 + 208) = a5[8];
    *(a3 + 224) = v23;
    *(a3 + 176) = v21;
    *(a3 + 192) = v22;
    v24 = a5[10];
    v25 = a5[11];
    v26 = a5[13];
    *(a3 + 272) = a5[12];
    *(a3 + 288) = v26;
    *(a3 + 240) = v24;
    *(a3 + 256) = v25;
    if (a6)
    {
      if (!*(a3 + 652))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 640), 43690, 425);
      }

      *(a3 + 640) = a6;
      *(a3 + 648) = a7;
      *(a3 + 652) = 1;
    }

    else if (!*(a3 + 640))
    {
      v29 = (a3 + 640);
      *(a3 + 652) = 0;
      v30 = *(a2 + 8);
      *(a3 + 648) = v30;
      result = UARPLayer2RequestBuffer(a1, (a3 + 640), v30, 43690, 443);
      if (result)
      {
        return result;
      }

      if (!*v29)
      {
        return 11;
      }
    }

    if (a8)
    {
      if (!*(a3 + 668))
      {
        UARPLayer2ReturnBuffer(a1, *(a3 + 656), 43690, 462);
      }

      *(a3 + 656) = a8;
      *(a3 + 664) = a9;
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    *(a3 + 668) = v27;
    if (uarpVersionCompare((a3 + 52), (a3 + 12)) || *(a3 + 68) != *(a3 + 8))
    {

      return uarpPlatformAssetSuperBinaryPullHeader(a1, a3);
    }

    else if (*(a3 + 688) == *(a3 + 32))
    {
      v28 = *(a3 + 452);
      if (v28 == -1)
      {
        UARPLayer2AssetMetaDataComplete(a1, a3);
        return 0;
      }

      else if (v28 == *(a3 + 456))
      {
        if (*(a3 + 512) == *(a3 + 492))
        {
          if (*(a3 + 508) || (result = uarpPlatformAssetPayloadPullData(a1, a3), !result))
          {

            return uarpPlatformAssetRequestData(a1, a3, (a3 + 312));
          }
        }

        else
        {

          return uarpPlatformAssetPayloadPullMetaData(a1, a3);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a3);
      }
    }

    else
    {

      return uarpPlatformAssetSuperBinaryPullMetaData(a1, a3);
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetSetCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *(a3 + 16);
      *(a2 + 80) = *a3;
      *(a2 + 96) = v3;
      v4 = *(a3 + 32);
      v5 = *(a3 + 48);
      v6 = *(a3 + 80);
      *(a2 + 144) = *(a3 + 64);
      *(a2 + 160) = v6;
      *(a2 + 112) = v4;
      *(a2 + 128) = v5;
      v7 = *(a3 + 96);
      v8 = *(a3 + 112);
      v9 = *(a3 + 144);
      *(a2 + 208) = *(a3 + 128);
      *(a2 + 224) = v9;
      *(a2 + 176) = v7;
      *(a2 + 192) = v8;
      result = *(a3 + 160);
      v11 = *(a3 + 176);
      v12 = *(a3 + 208);
      *(a2 + 272) = *(a3 + 192);
      *(a2 + 288) = v12;
      *(a2 + 240) = result;
      *(a2 + 256) = v11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetDeny(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _OWORD *a6)
{
  v6 = 30;
  if (a1 && a2 && a3)
  {
    if (a5)
    {
      *(a3 + 704) = a5;
    }

    if (a6)
    {
      v8 = a6[1];
      *(a3 + 80) = *a6;
      *(a3 + 96) = v8;
      v9 = a6[2];
      v10 = a6[3];
      v11 = a6[5];
      *(a3 + 144) = a6[4];
      *(a3 + 160) = v11;
      *(a3 + 112) = v9;
      *(a3 + 128) = v10;
      v12 = a6[6];
      v13 = a6[7];
      v14 = a6[9];
      *(a3 + 208) = a6[8];
      *(a3 + 224) = v14;
      *(a3 + 176) = v12;
      *(a3 + 192) = v13;
      v15 = a6[10];
      v16 = a6[11];
      v17 = a6[13];
      *(a3 + 272) = a6[12];
      *(a3 + 288) = v17;
      *(a3 + 240) = v15;
      *(a3 + 256) = v16;
      v6 = uarpAssetProcessingComplete(a1, a2, a3, a4 | 2u);
      if (!v6)
      {
        *(a3 + 72) = 1;
      }
    }

    else
    {
      return 30;
    }
  }

  return v6;
}

uint64_t uarpPlatformEndpointAssetRelease(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, *(a3 + 704));

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformEndpointAssetRelease2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = uarpPlatformAssetFindByAssetContext(a1, a3);

  return uarpPlatformAssetProcessingCompleteInternal(a1, 0, v4, 1u, 0, 1);
}

uint64_t uarpPlatformAssetFindByAssetContext(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 632);
    if (v4)
    {
      result = v4;
      while (*(result + 304) != 1 || *(result + 704) != a2)
      {
        result = *(result + 712);
        if (!result)
        {
          while (v4)
          {
            if (!*(v4 + 304) && *(v4 + 704) == a2)
            {
              return v4;
            }

            v4 = *(v4 + 712);
          }

          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryNumberOfPayloads(uint64_t a1, uint64_t a2, _WORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 448);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryFormatVersion(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *a2;
    }
  }

  return result;
}

__n128 uarpPlatformEndpointAssetQueryAssetVersion(uint64_t a1, uint64_t a2, __n128 *a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      result = *(a2 + 52);
      *a3 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryAssetLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 68);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetQueryTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 48);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetSetPayloadIndex2(void *a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (*(a2 + 448) <= a3)
    {
      return 44;
    }

    else
    {
      *(a2 + 456) = a3;
      *(a2 + 508) = 0;
      if (*(a2 + 460) == 1)
      {
        v6 = *(a2 + 632);
        if (v6)
        {
          v7 = (a2 + 464);
          while (1)
          {
            v8 = *(v6 + 31);
            if (v8 == *(a2 + 456))
            {
              *(a2 + 452) = v8;
              v9 = *v6;
              v10 = v6[2];
              *(a2 + 480) = v6[1];
              *(a2 + 496) = v10;
              *v7 = v9;
              v11 = v6[3];
              v12 = v6[4];
              v13 = v6[6];
              *(a2 + 544) = v6[5];
              *(a2 + 560) = v13;
              *(a2 + 512) = v11;
              *(a2 + 528) = v12;
              v14 = v6[7];
              v15 = v6[8];
              v16 = v6[9];
              *(a2 + 624) = *(v6 + 20);
              *(a2 + 592) = v15;
              *(a2 + 608) = v16;
              *(a2 + 576) = v14;
              for (i = *(v6 + 21); i; i = *(i + 16))
              {
                uarpProcessPayloadTLVInternal(a1, a2, a2 + 464, *i, *(i + 4), *(i + 8));
              }

              v18 = *(v6 + 19);
              if (v18)
              {
                UARPLayer2HashFinal(a1, v18, *(v6 + 10), *(v6 + 12), *(v6 + 26));
                if (memcmp(*(v6 + 12), *(v6 + 14), *(v6 + 30)))
                {
                  return 54;
                }
              }
            }

            v6 = *(v6 + 22);
            if (!v6)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
LABEL_13:

          return uarpPlatformEndpointPayloadRequestData(a1, a2);
        }
      }

      else
      {

        return uarpPlatformAssetSuperBinaryPullProposedPayloadHeader(a1, a2);
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestData(uint64_t a1, uint64_t a2)
{
  v3 = 30;
  if (!a1 || !a2)
  {
    return v3;
  }

  v4 = *(a2 + 500);
  if (v4)
  {
    v4 -= *(a2 + 508);
  }

  if (v4 >= *(a2 + 648))
  {
    v4 = *(a2 + 648);
  }

  if (!v4)
  {
    UARPLayer2PayloadDataComplete2(a1, a2);
    return 0;
  }

  return uarpPlatformAssetPayloadPullData(a1, a2);
}

uint64_t uarpPlatformEndpointAssetPayloadVersion(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 472);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetPayloadTag(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    if (*(a2 + 452) == -1)
    {
      return 32;
    }

    else
    {
      result = 0;
      *a3 = *(a2 + 468);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestAllHeadersAndMetaData(uint64_t a1, uint64_t a2)
{
  *(a2 + 460) = 1;
  if (*(a2 + 448) < 1)
  {
    if (*(a2 + 32))
    {

      return uarpPlatformAssetPullAllMetaData(a1, a2);
    }

    else
    {
      UARPLayer2AssetAllHeadersAndMetaDataComplete(a1, *(a2 + 696), a2);
      return 0;
    }
  }

  else
  {

    return uarpPlatformAssetPullAllPayloadHeaders(a1, a2);
  }
}

uint64_t uarpPlatformEndpointAssetSetPayloadOffset(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a2)
  {
    return 30;
  }

  if (a2[113] == -1)
  {
    return 44;
  }

  if (a2[125] <= a3)
  {
    return 43;
  }

  result = 0;
  a2[127] = a3;
  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataPause(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 73) = 1;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPayloadRequestDataResume(uint64_t a1, uint64_t a2)
{
  v2 = 30;
  if (a1 && a2 && (v2 = *(a2 + 73), *(a2 + 73)) && (*(a2 + 73) = 0, (v2 = *(a2 + 696)) != 0))
  {
    return uarpPlatformAssetRequestData(a1, a2, (a2 + 312));
  }

  else
  {
    return v2;
  }
}

uint64_t uarpPlatformEndpointAssetFullyStaged(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetProcessingComplete(a1, *(a2 + 696), a2, 1u);
  }

  else
  {
    return 30;
  }
}

double uarpPlatformEndpointSuperBinaryMerge(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 && a2)
  {
    if (a3)
    {
      v3 = *a2;
      v4 = a2[1];
      *(a3 + 28) = *(a2 + 28);
      *a3 = v3;
      *(a3 + 16) = v4;
      *(a2 + 72) = 1;
      *(a3 + 72) = 0;
      *(a3 + 73) = *(a2 + 73);
      *(a3 + 312) = *(a2 + 312);
      v5 = *(a2 + 328);
      v6 = *(a2 + 344);
      v7 = *(a2 + 376);
      *(a3 + 360) = *(a2 + 360);
      *(a3 + 376) = v7;
      *(a3 + 328) = v5;
      *(a3 + 344) = v6;
      v8 = *(a2 + 392);
      v9 = *(a2 + 408);
      v10 = *(a2 + 424);
      *(a3 + 440) = *(a2 + 55);
      *(a3 + 408) = v9;
      *(a3 + 424) = v10;
      *(a3 + 392) = v8;
      *(a3 + 452) = *(a2 + 113);
      *(a3 + 456) = *(a2 + 114);
      v11 = a2[29];
      v12 = a2[31];
      *(a3 + 480) = a2[30];
      *(a3 + 496) = v12;
      *(a3 + 464) = v11;
      v13 = a2[32];
      v14 = a2[33];
      v15 = a2[35];
      *(a3 + 544) = a2[34];
      *(a3 + 560) = v15;
      *(a3 + 512) = v13;
      *(a3 + 528) = v14;
      v16 = a2[36];
      v17 = a2[37];
      v18 = a2[38];
      *(a3 + 624) = *(a2 + 78);
      *(a3 + 592) = v17;
      *(a3 + 608) = v18;
      *(a3 + 576) = v16;
      *(a2 + 78) = 0;
      result = 0.0;
      a2[37] = 0u;
      a2[38] = 0u;
      a2[35] = 0u;
      a2[36] = 0u;
      a2[33] = 0u;
      a2[34] = 0u;
      a2[31] = 0u;
      a2[32] = 0u;
      a2[29] = 0u;
      a2[30] = 0u;
      *(a3 + 640) = *(a2 + 80);
      *(a2 + 80) = 0;
      *(a3 + 652) = *(a2 + 652);
      *(a3 + 648) = *(a2 + 162);
      *(a2 + 162) = 0;
      *(a3 + 656) = *(a2 + 82);
      *(a2 + 82) = 0;
      *(a3 + 668) = *(a2 + 668);
      *(a3 + 664) = *(a2 + 166);
      *(a2 + 166) = 0;
      *(a3 + 688) = *(a2 + 172);
    }
  }

  return result;
}

void uarpPlatformEndpointCleanupAssets(uint64_t a1)
{
  if (a1)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, 0, 0);
  }
}

void uarpPlatformEndpointCleanupAssets2(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    uarpPlatformCleanupAssetsForRemoteEndpoint(a1, a2, 0);
  }
}

uint64_t uarpPlatformEndpointOfferAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = *(a1 + 632);
        if (v6)
        {
          while (*(v6 + 304) != 1 || *(v6 + 704) != a3)
          {
            v6 = *(v6 + 712);
            if (!v6)
            {
              return 30;
            }
          }

          memset(__dst, 0, 44);
          v7 = 0;
          result = uarpPlatformEndpointAssetGetBytesAtOffset(a1, a2, v6, __dst, 44, 0, &v7);
          if (!result)
          {
            uarpSuperBinaryHeaderEndianSwap(__dst, v6);
            *(v6 + 52) = *(v6 + 12);
            *(v6 + 68) = *(v6 + 8);
            *(v6 + 448) = *(v6 + 40) / 0x28u;
            return uarpOfferAssetToRemoteEP(a1, a2, v6);
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformAssetFindByAssetContextAndList(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    for (result = *(result + 632); result; result = *(result + 712))
    {
      if (*(result + 304) == a3 && *(result + 704) == a2)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointAssetGetBytesAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, void *__dst, uint64_t a5, uint64_t a6, unsigned __int16 *a7)
{
  result = 30;
  if (a1 && a3 && __dst && a5)
  {
    v15 = *(a3 + 46);
    if ((v15 & 0x80) != 0)
    {
      result = UARPSuperBinaryGetInternalSuperBinaryMetaData(a1, a3, __dst, a5, a6, a7);
      if (result != 40)
      {
        return result;
      }

      v15 = *(a3 + 46);
    }

    if ((v15 & 8) == 0 || (result = UARPSuperBinaryGetInternalPayloadMetaData(a1, a3, __dst, a5, a6, a7), result == 40))
    {

      return UARPLayer2AssetGetBytesAtOffset2(a1, a2, a3, __dst, a5, a6, a7);
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRemoveAssetPayloadWindow(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  result = 30;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a2 + 640);
      *(a2 + 640) = 0;
      *a4 = *(a2 + 648);
      *(a2 + 648) = 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointProvideAssetPayloadWindow(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 30;
  if (a3 && a4)
  {
    v9 = *(a2 + 640);
    if (v9)
    {
      if (!*(a2 + 652))
      {
        UARPLayer2ReturnBuffer(a1, v9, 43690, 1180);
      }
    }

    result = 0;
    *(a2 + 640) = a3;
    *(a2 + 648) = a4;
    *(a2 + 652) = 1;
  }

  return result;
}

uint64_t uarpPlatformEndpointDynamicAssetSolicitationDeny(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  if (a1 && a2 && a3)
  {
    return uarpSendDynamicAssetPreProcessingStatus(a1, a2, a3, 2u, a4);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointAssetSetBytesAtOffset(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 && a3 && a4 && a5)
  {
    return UARPLayer2AssetSetBytesAtOffset2(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointWatchDogExpired(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      *(a2 + 54) = 0;
      uarpTransmitQueueService(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointRescindAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a3)
  {
    return 30;
  }

  v3 = *(a1 + 632);
  if (!v3)
  {
    return 30;
  }

  while (*(v3 + 304) != 1 || *(v3 + 704) != a3)
  {
    v3 = *(v3 + 712);
    if (!v3)
    {
      return 30;
    }
  }

  return uarpAssetRescind(a1, a2, *(v3 + 44));
}

uint64_t uarpPlatformEndpointRescindAllAssets(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpAssetRescind(a1, a2, 0xFFFFu);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointApplyStagedAssets(uint64_t a1, uint64_t a2)
{
  result = 30;
  if (a1 && a2)
  {
    v5 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0xAu, 6u, 1);
    if (v5)
    {

      return uarpTransmitBuffer2(a1, a2, v5);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointPauseAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationPause(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointResumeAssetTransfers(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return uarpSendDataTransferNotificationResume(a1, a2);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformEndpointSolicitDynamicAsset(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!a1)
  {
    return 30;
  }

  if (!a2)
  {
    return 30;
  }

  if (!a4)
  {
    return 30;
  }

  v4 = *(a1 + 632);
  if (!v4)
  {
    return 30;
  }

  while (*(v4 + 304) || *(v4 + 704) != a4)
  {
    v4 = *(v4 + 712);
    if (!v4)
    {
      return 30;
    }
  }

  return uarpSolicitDynamicAsset(a1, a2, a3);
}

uint64_t uarpPlatformEndpointSendVendorSpecific(uint64_t a1, uint64_t a2, __int16 *a3, unsigned int a4, const void *a5, unsigned int a6)
{
  if (a1 && a2 && a3 && a5)
  {
    return uarpSendVendorSpecific(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return 30;
  }
}

uint64_t uarpPlatformDownstreamEndpointAdd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 30;
  }

  v6 = *(a1 + 680);
  do
  {
    if (!v6)
    {
      *(a1 + 680) = 1;
      return 11;
    }

    v7 = UARPPlatformDownstreamEndpointByID(a1, a2, v6);
    v8 = *(a1 + 680);
    v6 = v8 + 1;
    *(a1 + 680) = v8 + 1;
  }

  while (!v7 || !v8);

  return uarpPlatformDownstreamEndpointReachable(a1, a2, a3, v8);
}

uint64_t uarpPlatformDownstreamEndpointReachable(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  result = 30;
  if (a1 && a2 && a3)
  {
    v10 = 0;
    result = UARPLayer2RequestBuffer(a1, &v10, 0x20uLL, 43690, 1499);
    if (!result)
    {
      *v10 = a2;
      v9 = v10;
      v10[4] = a4;
      v9[2] = a3;
      v9[3] = 0;
      uarpPlatformDownstreamEndpointAddToList(a1, a2, v9);
      return uarpSendDownstreamEndpointReachable(a1, a2, v10[4]);
    }
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointRemove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = UARPPlatformDownstreamEndpointByDelegate(a1, a2, a3);
  if (!v5)
  {
    return 58;
  }

  v6 = *(v5 + 120);

  return uarpSendDownstreamEndpointUnreachable(a1, a2, v6);
}

uint64_t uarpPlatformDownstreamEndpointUnreachable(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = uarpPlatformDownstreamEndpointFindOnList(a1, a2, a4);
  if (!v6)
  {
    return 58;
  }

  v7 = v6;
  result = uarpSendDownstreamEndpointUnreachable(a1, a2, *(v6 + 8));
  if (!result)
  {
    v9 = uarpPlatformDownstreamEndpointRemoveFromList(a1, a2, *(v7 + 8));
    UARPLayer2ReturnBuffer(a1, v9, 43690, 1593);
    return 0;
  }

  return result;
}

uint64_t uarpPlatformDownstreamEndpointSendMessage(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, unsigned int a5)
{
  v9 = uarpPlatformDownstreamEndpointFindOnListByDelegate(a1, a2, a3);
  if (!v9)
  {
    return 58;
  }

  v10 = *(v9 + 8);

  return uarpTransmitMessageToDownstreamEndpointID(a1, a2, v10, a4, a5);
}

uint64_t uarpPlatformDelegateForDownstreamID(uint64_t a1, uint64_t a2, int a3)
{
  result = UARPPlatformDownstreamEndpointByID(a1, a2, a3);
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t uarpPlatformNoFirmwareUpdateAvailable(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Du, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformEndpointDiscoverEndpointIDs(uint64_t a1, uint64_t a2)
{
  v4 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x1Fu, 6u, 1);
  if (!v4)
  {
    return 11;
  }

  return uarpTransmitBuffer2(a1, a2, v4);
}

uint64_t uarpPlatformQueryEndpointComponentDiscovery(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x21u, 8u, 1);
  if (!v6)
  {
    return 11;
  }

  v7 = v6;
  v8 = v6[3];
  *(v8 + 6) = uarpHtons(a3);

  return uarpTransmitBuffer2(a1, a2, v7);
}

uint64_t uarpPlatformEndpointBulkInfoQuery(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, int a5, unsigned int *a6)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        LODWORD(v10) = a5;
        if (a5)
        {
          v11 = a6;
          if (a6)
          {
            v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x23u, (4 * a5 + 16) & 0xFFFC, 1);
            if (v13)
            {
              v14 = v13;
              v15 = v13[3];
              *(v15 + 6) = uarpHtons(a3);
              *(v15 + 8) = *a4;
              *(v15 + 12) = uarpHtonl(v10);
              v16 = (v15 + 16);
              v10 = v10;
              do
              {
                v17 = *v11++;
                *v16++ = uarpHtonl(v17);
                --v10;
              }

              while (v10);

              return uarpTransmitBuffer2(a1, a2, v14);
            }

            else
            {
              return 11;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformEndpointBulkInfoResponseAddTLV(uint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5, unsigned int a6, unsigned int a7, _DWORD *a8)
{
  v8 = *a5;
  v9 = a7 + 8;
  if (a7 + 8 > a4 - v8)
  {
    return 65;
  }

  v15 = (a3 + v8);
  *v15 = uarpHtonl(a6);
  v15[1] = uarpHtonl(a7);
  v16 = a6 + 2001563387;
  if (v16 <= 0x34)
  {
    if (((1 << (a6 - 5)) & 0x10000000000071) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << (a6 - 5)) & 0x4000000080104) != 0)
    {
      goto LABEL_11;
    }

    if (v16 == 1)
    {
      if (a7 != 8)
      {
        return 39;
      }

      goto LABEL_19;
    }
  }

  if (a6 > 0xD)
  {
    goto LABEL_13;
  }

  if (((1 << a6) & 0x2E1E) != 0)
  {
LABEL_11:
    memcpy(v15 + 2, a8, a7);
    v17 = v9 + v8;
    goto LABEL_12;
  }

  if (((1 << a6) & 0x60) != 0)
  {
    if (a7 == 16)
    {
      v18 = 0uLL;
      uarpVersionEndianSwap(a8, &v18);
      *(v15 + 2) = v18;
      v17 = v8 + 24;
LABEL_12:
      result = 0;
      *a5 = v17;
      return result;
    }

    return 39;
  }

LABEL_13:
  if (a6 == -2001563388)
  {
    if (a7 != 8)
    {
LABEL_15:
      if (a7 == 4)
      {
        v15[2] = uarpHtonl(*a8);
        v17 = v8 + 12;
        goto LABEL_12;
      }

      return 39;
    }

LABEL_19:
    *(v15 + 1) = uarpHtonll(*a8);
    v17 = v8 + 16;
    goto LABEL_12;
  }

  return 10;
}

uint64_t uarpPlatformEndpointBulkInfoResponse(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4, const void *a5, unsigned int a6)
{
  result = 30;
  if (a1 && a2 && a4 && a5 && a6)
  {
    v13 = uarpAllocPrepareTransmitBuffer2(a1, a2, 0x25u, (a6 + 12), 1);
    if (v13)
    {
      v14 = v13;
      v15 = v13[3];
      *(v15 + 6) = uarpHtons(a3);
      *(v15 + 8) = *a4;
      memcpy((v15 + 12), a5, a6);

      return uarpTransmitBuffer2(a1, a2, v14);
    }

    else
    {
      return 11;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpRemoteEndpointIDForAsset(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 696)) != 0)
  {
    return *(v1 + 56);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t uarpPlatformRemoteDelegateForAssetDelegate(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 696);
    if (v1)
    {
      return *(v1 + 40);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpRemoteEndpointForAsset(uint64_t result)
{
  if (result)
  {
    return *(result + 696);
  }

  return result;
}

__n128 uarpPlatformAssetSelectedPayloadInfo(uint64_t a1, uint64_t a2)
{
  if (a1 && a2 && *(a1 + 452) != -1 && *(a1 + 460) != 1)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *a2 = *(a1 + 468);
    result = *(a1 + 472);
    *(a2 + 4) = result;
    v3 = *(a1 + 500);
    *(a2 + 20) = *(a1 + 492);
    *(a2 + 24) = v3;
  }

  return result;
}

uint64_t uarpAssetQuerySuperBinaryMetaData(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460))
    {
      return *(a2 + 720);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadMetaData(uint64_t a1, uint64_t a2, int a3)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a2 + 460) && (v5 = *(a2 + 632)) != 0)
    {
      while (*(v5 + 124) != a3)
      {
        v5 = *(v5 + 176);
        if (!v5)
        {
          return 0;
        }
      }

      return *(v5 + 168);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uarpAssetQueryPayloadInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 30;
  if (a1 && a2)
  {
    if (!a4)
    {
      return 26;
    }

    if (*(a2 + 460))
    {
      v6 = *(a2 + 632);
      if (!v6)
      {
        return 54;
      }

      while (*(v6 + 124) != a3)
      {
        v6 = *(v6 + 176);
        if (!v6)
        {
          return 54;
        }
      }

      *a4 = *(v6 + 4);
      *(a4 + 4) = *(v6 + 8);
      v9 = *(v6 + 36);
      *(a4 + 20) = *(v6 + 28);
      *(a4 + 24) = v9;
      v8 = (v6 + 128);
    }

    else
    {
      if (*(a2 + 452) != a3)
      {
        return 44;
      }

      *a4 = *(a2 + 468);
      *(a4 + 4) = *(a2 + 472);
      v7 = *(a2 + 500);
      *(a4 + 20) = *(a2 + 492);
      *(a4 + 24) = v7;
      v8 = (a2 + 592);
    }

    result = 0;
    *(a4 + 28) = *v8;
  }

  return result;
}

uint64_t uarpPlatformAssetQueryAssetID(uint64_t a1, _WORD *a2)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 44);
    }
  }

  return result;
}

__n128 uarpPlatformAssetQueryAssetVersion(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 52);
      *a2 = result;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxTxPayloadLength(uint64_t a1, _DWORD *a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformSetMaxRxPayloadLength(uint64_t a1, uint64_t a2, int a3)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a2 + 4) = a3;
    }
  }

  return result;
}

uint64_t uarpPlatformGetMaxRxPayloadLength(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = 30;
  if (a1 && a2)
  {
    if (a3)
    {
      result = 0;
      *a3 = *(a2 + 4);
    }
  }

  return result;
}

uint64_t uarpPlatformGetSupportsBulkInfoQueries(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 50);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformGetUseHostPushModel(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = 0;
  result = 30;
  if (a1 && a2 && a3)
  {
    result = 0;
    v4 = *(a2 + 52);
  }

  *a3 = v4;
  return result;
}

uint64_t uarpPlatformConfigureEndpointIDs(uint64_t a1, uint64_t a2, unsigned int a3, __int16 *a4)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = a4;
        if (a4)
        {
          if (*(a1 + 672))
          {
            uarpPlatformReleaseEndpointIDs(a1);
          }

          v11 = 0;
          result = UARPLayer2RequestBuffer(a1, &v11, 16 * a3, 43690, 2424);
          if (!result)
          {
            v8 = v11;
            *(a1 + 672) = v11;
            *(a1 + 664) = a3;
            v9 = a3;
            do
            {
              v10 = *v7++;
              *v8 = v10;
              v8 += 8;
              --v9;
            }

            while (v9);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t uarpPlatformConfigureEndpointTags(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = 30;
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          v9 = *(a1 + 664);
          if (*(a1 + 664))
          {
            for (i = *(a1 + 672); *i != a3; i += 8)
            {
              if (!--v9)
              {
                return 30;
              }
            }

            if (*(i + 1))
            {
              uarpPlatformReleaseEndpointTags(a1, a2, i);
            }

            v12 = 0;
            result = UARPLayer2RequestBuffer(a1, &v12, (4 * a4), 43690, 2486);
            if (!result)
            {
              v11 = 0;
              *(i + 1) = v12;
              i[1] = a4;
              do
              {
                *(*(i + 1) + 4 * v11) = *(a5 + 4 * v11);
                ++v11;
              }

              while (a4 != v11);
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void TSSRequestWithSigningServer_cold_4(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_247AA7000, a2, OS_LOG_TYPE_ERROR, "UARP: Failed personalization response, error = %u", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

void UARPPersonalizationTSSRequestWithSigningServerAuthListed_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_247AA7000, log, OS_LOG_TYPE_ERROR, "UARP: TSS Request to server %{public}@ with options %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void UARPArrayOfExpiredFiles_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Checking age of temp file %@", buf, 0xCu);
}

void fCoreUARPLayer3DynamicAssetOffered_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3DynamicAssetOffered_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3DynamicAssetOffered_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AUDLogError_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  getpid();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AUDLogDebug_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  getpid();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AUDLogFault_cold_1(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  getpid();
  OUTLINED_FUNCTION_4_1();
  v4 = &fCoreUARPLayer3AUDLogFault_logBuffer;
  _os_log_fault_impl(&dword_247AA7000, a1, OS_LOG_TYPE_FAULT, "[pid=%d] %s", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void UARPPlatformControllerRecvMessage_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPPlatformControllerOfferFirmwareAsset_cold_1(unsigned int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  uarpStatusCodeToString(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void UARPPlatformControllerOfferFirmwareAsset_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPPlatformControllerOfferFirmwareAsset_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPPlatformControllerReofferFirmwareAsset_cold_1(unsigned int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  uarpStatusCodeToString(a1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void UARPPlatformControllerResolicitDynamicAssets_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_247AA7000, v1, OS_LOG_TYPE_ERROR, "Could not solicit Dynamic Asset from endpoint\n%@%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 numPayloads];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 formatVersion];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 assetVersion];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetReady_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetMetaDataTLV_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetMetaDataComplete_cold_1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 selectedPayload];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetMetaDataComplete_cold_2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 selectedPayload];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadReady_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadReady_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_247AA7000, v0, OS_LOG_TYPE_DEBUG, "Payload Ready; asset version is %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadReady_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadReady_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_247AA7000, v0, OS_LOG_TYPE_DEBUG, "Payload Ready; payload 4cc/tag is %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadMetaDataTLV_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadMetaDataComplete_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3PayloadData_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void fCoreUARPLayer3AssetAllHeadersAndMetaDataComplete_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPlatformEndpointAssetFullyReceived_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPAssetSolicitionComplete_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPAssetSolicitionComplete_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPAssetSolicitionComplete_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPAssetSolicitionComplete_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPAssetSolicitionComplete_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPlatformEndpointHandleMappedAnalytics_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPlatformEndpointHandleMappedAnalytics_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPlatformEndpointHandleCrashAnalytics_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void UARPlatformEndpointHandleCrashAnalytics_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void uarpLogError_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void uarpLogDebug_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = &uarpLogDebug_logBuffer;
  _os_log_debug_impl(&dword_247AA7000, log, OS_LOG_TYPE_DEBUG, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void uarpLogFault_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogError_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, a1, a3, "%s\n", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogDebug_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = &uarpPlatformDarwinLogDebug_logBuffer;
  _os_log_debug_impl(&dword_247AA7000, log, OS_LOG_TYPE_DEBUG, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void uarpPlatformDarwinLogFault_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = &uarpPlatformDarwinLogFault_logBuffer;
  _os_log_fault_impl(&dword_247AA7000, log, OS_LOG_TYPE_FAULT, "%s\n", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void uarpDynamicAssetURLWithSuffix_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPUtilsBuildURLForTemporaryFile_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPUtilsBuildURLForTemporaryFile_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void createPowerAssertion_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void createPowerAssertion_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void releasePowerAssertion_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPUtilsCreateTemporaryFolder_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPUtilsCreateTemporaryFolder_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void postStagingStatusForModelIdentifier_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void UARPCleanupAgedFiles_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_debug_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Removing Expired File at %@", buf, 0xCu);
}

void UARPCopyFile_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void UARPCopyFile_cold_2(void *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [a1 path];
  v10 = [a2 path];
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

void UARPWriteFile_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void UARPWriteFile_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void UARPWriteFile_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void UARPWriteFile_cold_4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void UARPWriteFile_cold_5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_0_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}