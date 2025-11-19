@interface VPNInterfaceByteCountAccumulator
- (VPNInterfaceByteCountAccumulator)init;
- (void)addBytesToAttributeToVPNProviderFromSnapshot:(id)a3;
- (void)subtractBytesAttributedToVPNProviderFromSnapshot:(id)a3;
@end

@implementation VPNInterfaceByteCountAccumulator

- (VPNInterfaceByteCountAccumulator)init
{
  v3.receiver = self;
  v3.super_class = VPNInterfaceByteCountAccumulator;
  result = [(VPNInterfaceByteCountAccumulator *)&v3 init];
  if (result)
  {
    *&result->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes = 0u;
    *&result->_currentVPNInterfaceByteCounts.rxCellularBytes = 0u;
    *&result->_currentVPNInterfaceByteCounts.txCellularBytes = 0u;
    *&result->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes = 0u;
  }

  return result;
}

- (void)addBytesToAttributeToVPNProviderFromSnapshot:(id)a3
{
  v4 = a3;
  rxCellularBytes = self->_currentVPNInterfaceByteCounts.rxCellularBytes;
  v29 = v4;
  v6 = [v4 deltaAccountingRxCellularBytes];
  v7 = rxCellularBytes + v6;
  if (__CFADD__(rxCellularBytes, v6))
  {
    v7 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxCellularBytes = v7;
  rxWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes;
  v9 = [v29 deltaAccountingRxWiFiInfraBytes];
  v10 = rxWiFiInfraBytes + v9;
  if (__CFADD__(rxWiFiInfraBytes, v9))
  {
    v10 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes = v10;
  rxWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes;
  v12 = [v29 deltaAccountingRxWiFiNonInfraBytes];
  v13 = rxWiFiNonInfraBytes + v12;
  if (__CFADD__(rxWiFiNonInfraBytes, v12))
  {
    v13 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes = v13;
  rxWiredBytes = self->_currentVPNInterfaceByteCounts.rxWiredBytes;
  v15 = [v29 deltaAccountingRxWiredBytes];
  v16 = rxWiredBytes + v15;
  if (__CFADD__(rxWiredBytes, v15))
  {
    v16 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxWiredBytes = v16;
  txCellularBytes = self->_currentVPNInterfaceByteCounts.txCellularBytes;
  v18 = [v29 deltaAccountingTxCellularBytes];
  v19 = txCellularBytes + v18;
  if (__CFADD__(txCellularBytes, v18))
  {
    v19 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txCellularBytes = v19;
  txWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes;
  v21 = [v29 deltaAccountingTxWiFiInfraBytes];
  v22 = txWiFiInfraBytes + v21;
  if (__CFADD__(txWiFiInfraBytes, v21))
  {
    v22 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes = v22;
  txWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes;
  v24 = [v29 deltaAccountingTxWiFiNonInfraBytes];
  v25 = txWiFiNonInfraBytes + v24;
  if (__CFADD__(txWiFiNonInfraBytes, v24))
  {
    v25 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes = v25;
  txWiredBytes = self->_currentVPNInterfaceByteCounts.txWiredBytes;
  v27 = [v29 deltaAccountingTxWiredBytes];
  v28 = txWiredBytes + v27;
  if (__CFADD__(txWiredBytes, v27))
  {
    v28 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txWiredBytes = v28;
}

- (void)subtractBytesAttributedToVPNProviderFromSnapshot:(id)a3
{
  v53 = a3;
  v4 = [v53 deltaAccountingRxCellularBytes];
  rxCellularBytes = self->_currentVPNInterfaceByteCounts.rxCellularBytes;
  if (v4 < rxCellularBytes)
  {
    rxCellularBytes = [v53 deltaAccountingRxCellularBytes];
  }

  v6 = [v53 deltaAccountingRxWiFiInfraBytes];
  rxWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes;
  if (v6 < rxWiFiInfraBytes)
  {
    rxWiFiInfraBytes = [v53 deltaAccountingRxWiFiInfraBytes];
  }

  v8 = [v53 deltaAccountingRxWiFiNonInfraBytes];
  rxWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes;
  if (v8 < rxWiFiNonInfraBytes)
  {
    rxWiFiNonInfraBytes = [v53 deltaAccountingRxWiFiNonInfraBytes];
  }

  v10 = [v53 deltaAccountingRxWiredBytes];
  rxWiredBytes = self->_currentVPNInterfaceByteCounts.rxWiredBytes;
  if (v10 < rxWiredBytes)
  {
    rxWiredBytes = [v53 deltaAccountingRxWiredBytes];
  }

  v12 = [v53 deltaAccountingTxCellularBytes];
  txCellularBytes = self->_currentVPNInterfaceByteCounts.txCellularBytes;
  if (v12 < txCellularBytes)
  {
    txCellularBytes = [v53 deltaAccountingTxCellularBytes];
  }

  v14 = [v53 deltaAccountingTxWiFiInfraBytes];
  txWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes;
  if (v14 < txWiFiInfraBytes)
  {
    txWiFiInfraBytes = [v53 deltaAccountingTxWiFiInfraBytes];
  }

  v16 = [v53 deltaAccountingTxWiFiNonInfraBytes];
  txWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes;
  if (v16 < txWiFiNonInfraBytes)
  {
    txWiFiNonInfraBytes = [v53 deltaAccountingTxWiFiNonInfraBytes];
  }

  v18 = [v53 deltaAccountingTxWiredBytes];
  txWiredBytes = self->_currentVPNInterfaceByteCounts.txWiredBytes;
  if (v18 < txWiredBytes)
  {
    txWiredBytes = [v53 deltaAccountingTxWiredBytes];
  }

  v20 = self->_currentVPNInterfaceByteCounts.rxCellularBytes;
  v21 = v20 >= rxCellularBytes;
  v22 = v20 - rxCellularBytes;
  if (!v21)
  {
    v22 = 0;
  }

  self->_currentVPNInterfaceByteCounts.rxCellularBytes = v22;
  v23 = self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes;
  v21 = v23 >= rxWiFiInfraBytes;
  v24 = v23 - rxWiFiInfraBytes;
  if (!v21)
  {
    v24 = 0;
  }

  self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes = v24;
  v25 = self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes;
  v21 = v25 >= rxWiFiNonInfraBytes;
  v26 = v25 - rxWiFiNonInfraBytes;
  if (!v21)
  {
    v26 = 0;
  }

  self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes = v26;
  v27 = self->_currentVPNInterfaceByteCounts.rxWiredBytes;
  v21 = v27 >= rxWiredBytes;
  v28 = v27 - rxWiredBytes;
  if (!v21)
  {
    v28 = 0;
  }

  self->_currentVPNInterfaceByteCounts.rxWiredBytes = v28;
  v29 = self->_currentVPNInterfaceByteCounts.txCellularBytes;
  v21 = v29 >= txCellularBytes;
  v30 = v29 - txCellularBytes;
  if (!v21)
  {
    v30 = 0;
  }

  self->_currentVPNInterfaceByteCounts.txCellularBytes = v30;
  v31 = self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes;
  v21 = v31 >= txWiFiInfraBytes;
  v32 = v31 - txWiFiInfraBytes;
  if (!v21)
  {
    v32 = 0;
  }

  self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes = v32;
  v33 = self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes;
  v21 = v33 >= txWiFiNonInfraBytes;
  v34 = v33 - txWiFiNonInfraBytes;
  if (!v21)
  {
    v34 = 0;
  }

  self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes = v34;
  v35 = self->_currentVPNInterfaceByteCounts.txWiredBytes;
  v21 = v35 >= txWiredBytes;
  v36 = v35 - txWiredBytes;
  if (!v21)
  {
    v36 = 0;
  }

  self->_currentVPNInterfaceByteCounts.txWiredBytes = v36;
  v37 = [v53 _details_adjustment_bytes];
  v38 = *v37 + rxCellularBytes;
  if (__CFADD__(*v37, rxCellularBytes))
  {
    v38 = -1;
  }

  *v37 = v38;
  v39 = v37[1];
  v21 = __CFADD__(v39, rxWiFiInfraBytes);
  v40 = v39 + rxWiFiInfraBytes;
  if (v21)
  {
    v40 = -1;
  }

  v37[1] = v40;
  v41 = v37[2];
  v21 = __CFADD__(v41, rxWiFiNonInfraBytes);
  v42 = v41 + rxWiFiNonInfraBytes;
  if (v21)
  {
    v42 = -1;
  }

  v37[2] = v42;
  v43 = v37[3];
  v21 = __CFADD__(v43, rxWiredBytes);
  v44 = v43 + rxWiredBytes;
  if (v21)
  {
    v44 = -1;
  }

  v37[3] = v44;
  v45 = v37[6];
  v21 = __CFADD__(v45, txCellularBytes);
  v46 = v45 + txCellularBytes;
  if (v21)
  {
    v46 = -1;
  }

  v37[6] = v46;
  v47 = v37[7];
  v21 = __CFADD__(v47, txWiFiInfraBytes);
  v48 = v47 + txWiFiInfraBytes;
  if (v21)
  {
    v48 = -1;
  }

  v37[7] = v48;
  v49 = v37[8];
  v21 = __CFADD__(v49, txWiFiNonInfraBytes);
  v50 = v49 + txWiFiNonInfraBytes;
  if (v21)
  {
    v50 = -1;
  }

  v37[8] = v50;
  v51 = v37[9];
  v21 = __CFADD__(v51, txWiredBytes);
  v52 = v51 + txWiredBytes;
  if (v21)
  {
    v52 = -1;
  }

  v37[9] = v52;
}

@end