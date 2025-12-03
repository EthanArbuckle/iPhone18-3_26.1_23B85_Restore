@interface VPNInterfaceByteCountAccumulator
- (VPNInterfaceByteCountAccumulator)init;
- (void)addBytesToAttributeToVPNProviderFromSnapshot:(id)snapshot;
- (void)subtractBytesAttributedToVPNProviderFromSnapshot:(id)snapshot;
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

- (void)addBytesToAttributeToVPNProviderFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  rxCellularBytes = self->_currentVPNInterfaceByteCounts.rxCellularBytes;
  v29 = snapshotCopy;
  deltaAccountingRxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
  v7 = rxCellularBytes + deltaAccountingRxCellularBytes;
  if (__CFADD__(rxCellularBytes, deltaAccountingRxCellularBytes))
  {
    v7 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxCellularBytes = v7;
  rxWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes;
  deltaAccountingRxWiFiInfraBytes = [v29 deltaAccountingRxWiFiInfraBytes];
  v10 = rxWiFiInfraBytes + deltaAccountingRxWiFiInfraBytes;
  if (__CFADD__(rxWiFiInfraBytes, deltaAccountingRxWiFiInfraBytes))
  {
    v10 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes = v10;
  rxWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes;
  deltaAccountingRxWiFiNonInfraBytes = [v29 deltaAccountingRxWiFiNonInfraBytes];
  v13 = rxWiFiNonInfraBytes + deltaAccountingRxWiFiNonInfraBytes;
  if (__CFADD__(rxWiFiNonInfraBytes, deltaAccountingRxWiFiNonInfraBytes))
  {
    v13 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes = v13;
  rxWiredBytes = self->_currentVPNInterfaceByteCounts.rxWiredBytes;
  deltaAccountingRxWiredBytes = [v29 deltaAccountingRxWiredBytes];
  v16 = rxWiredBytes + deltaAccountingRxWiredBytes;
  if (__CFADD__(rxWiredBytes, deltaAccountingRxWiredBytes))
  {
    v16 = -1;
  }

  self->_currentVPNInterfaceByteCounts.rxWiredBytes = v16;
  txCellularBytes = self->_currentVPNInterfaceByteCounts.txCellularBytes;
  deltaAccountingTxCellularBytes = [v29 deltaAccountingTxCellularBytes];
  v19 = txCellularBytes + deltaAccountingTxCellularBytes;
  if (__CFADD__(txCellularBytes, deltaAccountingTxCellularBytes))
  {
    v19 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txCellularBytes = v19;
  txWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes;
  deltaAccountingTxWiFiInfraBytes = [v29 deltaAccountingTxWiFiInfraBytes];
  v22 = txWiFiInfraBytes + deltaAccountingTxWiFiInfraBytes;
  if (__CFADD__(txWiFiInfraBytes, deltaAccountingTxWiFiInfraBytes))
  {
    v22 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes = v22;
  txWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes;
  deltaAccountingTxWiFiNonInfraBytes = [v29 deltaAccountingTxWiFiNonInfraBytes];
  v25 = txWiFiNonInfraBytes + deltaAccountingTxWiFiNonInfraBytes;
  if (__CFADD__(txWiFiNonInfraBytes, deltaAccountingTxWiFiNonInfraBytes))
  {
    v25 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes = v25;
  txWiredBytes = self->_currentVPNInterfaceByteCounts.txWiredBytes;
  deltaAccountingTxWiredBytes = [v29 deltaAccountingTxWiredBytes];
  v28 = txWiredBytes + deltaAccountingTxWiredBytes;
  if (__CFADD__(txWiredBytes, deltaAccountingTxWiredBytes))
  {
    v28 = -1;
  }

  self->_currentVPNInterfaceByteCounts.txWiredBytes = v28;
}

- (void)subtractBytesAttributedToVPNProviderFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  deltaAccountingRxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
  rxCellularBytes = self->_currentVPNInterfaceByteCounts.rxCellularBytes;
  if (deltaAccountingRxCellularBytes < rxCellularBytes)
  {
    rxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
  }

  deltaAccountingRxWiFiInfraBytes = [snapshotCopy deltaAccountingRxWiFiInfraBytes];
  rxWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiInfraBytes;
  if (deltaAccountingRxWiFiInfraBytes < rxWiFiInfraBytes)
  {
    rxWiFiInfraBytes = [snapshotCopy deltaAccountingRxWiFiInfraBytes];
  }

  deltaAccountingRxWiFiNonInfraBytes = [snapshotCopy deltaAccountingRxWiFiNonInfraBytes];
  rxWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.rxWiFiNonInfraBytes;
  if (deltaAccountingRxWiFiNonInfraBytes < rxWiFiNonInfraBytes)
  {
    rxWiFiNonInfraBytes = [snapshotCopy deltaAccountingRxWiFiNonInfraBytes];
  }

  deltaAccountingRxWiredBytes = [snapshotCopy deltaAccountingRxWiredBytes];
  rxWiredBytes = self->_currentVPNInterfaceByteCounts.rxWiredBytes;
  if (deltaAccountingRxWiredBytes < rxWiredBytes)
  {
    rxWiredBytes = [snapshotCopy deltaAccountingRxWiredBytes];
  }

  deltaAccountingTxCellularBytes = [snapshotCopy deltaAccountingTxCellularBytes];
  txCellularBytes = self->_currentVPNInterfaceByteCounts.txCellularBytes;
  if (deltaAccountingTxCellularBytes < txCellularBytes)
  {
    txCellularBytes = [snapshotCopy deltaAccountingTxCellularBytes];
  }

  deltaAccountingTxWiFiInfraBytes = [snapshotCopy deltaAccountingTxWiFiInfraBytes];
  txWiFiInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiInfraBytes;
  if (deltaAccountingTxWiFiInfraBytes < txWiFiInfraBytes)
  {
    txWiFiInfraBytes = [snapshotCopy deltaAccountingTxWiFiInfraBytes];
  }

  deltaAccountingTxWiFiNonInfraBytes = [snapshotCopy deltaAccountingTxWiFiNonInfraBytes];
  txWiFiNonInfraBytes = self->_currentVPNInterfaceByteCounts.txWiFiNonInfraBytes;
  if (deltaAccountingTxWiFiNonInfraBytes < txWiFiNonInfraBytes)
  {
    txWiFiNonInfraBytes = [snapshotCopy deltaAccountingTxWiFiNonInfraBytes];
  }

  deltaAccountingTxWiredBytes = [snapshotCopy deltaAccountingTxWiredBytes];
  txWiredBytes = self->_currentVPNInterfaceByteCounts.txWiredBytes;
  if (deltaAccountingTxWiredBytes < txWiredBytes)
  {
    txWiredBytes = [snapshotCopy deltaAccountingTxWiredBytes];
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
  _details_adjustment_bytes = [snapshotCopy _details_adjustment_bytes];
  v38 = *_details_adjustment_bytes + rxCellularBytes;
  if (__CFADD__(*_details_adjustment_bytes, rxCellularBytes))
  {
    v38 = -1;
  }

  *_details_adjustment_bytes = v38;
  v39 = _details_adjustment_bytes[1];
  v21 = __CFADD__(v39, rxWiFiInfraBytes);
  v40 = v39 + rxWiFiInfraBytes;
  if (v21)
  {
    v40 = -1;
  }

  _details_adjustment_bytes[1] = v40;
  v41 = _details_adjustment_bytes[2];
  v21 = __CFADD__(v41, rxWiFiNonInfraBytes);
  v42 = v41 + rxWiFiNonInfraBytes;
  if (v21)
  {
    v42 = -1;
  }

  _details_adjustment_bytes[2] = v42;
  v43 = _details_adjustment_bytes[3];
  v21 = __CFADD__(v43, rxWiredBytes);
  v44 = v43 + rxWiredBytes;
  if (v21)
  {
    v44 = -1;
  }

  _details_adjustment_bytes[3] = v44;
  v45 = _details_adjustment_bytes[6];
  v21 = __CFADD__(v45, txCellularBytes);
  v46 = v45 + txCellularBytes;
  if (v21)
  {
    v46 = -1;
  }

  _details_adjustment_bytes[6] = v46;
  v47 = _details_adjustment_bytes[7];
  v21 = __CFADD__(v47, txWiFiInfraBytes);
  v48 = v47 + txWiFiInfraBytes;
  if (v21)
  {
    v48 = -1;
  }

  _details_adjustment_bytes[7] = v48;
  v49 = _details_adjustment_bytes[8];
  v21 = __CFADD__(v49, txWiFiNonInfraBytes);
  v50 = v49 + txWiFiNonInfraBytes;
  if (v21)
  {
    v50 = -1;
  }

  _details_adjustment_bytes[8] = v50;
  v51 = _details_adjustment_bytes[9];
  v21 = __CFADD__(v51, txWiredBytes);
  v52 = v51 + txWiredBytes;
  if (v21)
  {
    v52 = -1;
  }

  _details_adjustment_bytes[9] = v52;
}

@end